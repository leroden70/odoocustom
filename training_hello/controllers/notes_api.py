from odoo import http
from odoo.http import request


def _require_bearer_header():
    authorization = request.httprequest.headers.get("Authorization", "")
    if authorization.startswith("Bearer "):
        return None
    return request.make_json_response(
        {
            "error": {
                "code": "bearer_required",
                "message": "Envoyez une clé d’API dans l’en-tête Authorization: Bearer.",
            }
        },
        status=401,
    )


def _invalid_payload_response():
    return request.make_json_response(
        {
            "error": {
                "code": "invalid_payload",
                "message": "Envoyez un objet JSON avec title (texte non vide) et body (texte, éventuellement vide).",
            }
        },
        status=400,
    )


class TrainingNotesApiController(http.Controller):
    @http.route(
        "/training/api/notes",
        type="http",
        auth="bearer",
        methods=["GET"],
    )
    def list_notes(self):
        bearer_error = _require_bearer_header()
        if bearer_error is not None:
            return bearer_error

        notes = request.env["training.note"].search_read(
            fields=["id", "title", "body"],
            order="id desc",
            limit=20,
        )
        for note in notes:
            note["body"] = note["body"] or ""

        return request.make_json_response({
            "notes": notes,
            "count": len(notes),
        })

    @http.route(
        "/training/api/notes",
        type="http",
        auth="bearer",
        methods=["POST"],
        csrf=False,
    )
    def create_note(self):
        bearer_error = _require_bearer_header()
        if bearer_error is not None:
            return bearer_error

        try:
            payload = request.get_json_data()
        except ValueError:
            return _invalid_payload_response()

        if not isinstance(payload, dict) or set(payload) != {"title", "body"}:
            return _invalid_payload_response()

        title = payload["title"]
        body = payload["body"]
        if not isinstance(title, str) or not title.strip():
            return _invalid_payload_response()
        if not isinstance(body, str):
            return _invalid_payload_response()

        note = request.env["training.note"].create({
            "title": title.strip(),
            "body": body,
        })
        return request.make_json_response(
            {
                "note": {
                    "id": note.id,
                    "title": note.title,
                    "body": note.body or "",
                }
            },
            status=201,
        )