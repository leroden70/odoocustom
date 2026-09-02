from odoo import http
from odoo.http import request

class TrainingNotesController(http.Controller):
    @http.route('/training/notes', type='http', auth="user", methods=['GET'])
    def notes_pages(self):
        notes = request.env["training.note"].search([], order="id desc")
        return request.render("training_hello.training_notes_page", {
            "notes": notes,
        })

    @http.route("/training/notes", type="http", auth="user", methods=["POST"])
    def create_note(self, **kwargs):
        title = (kwargs.get("title") or "").strip()
        body = kwargs.get("body") or ""

        if title:
            request.env["training.note"].create({
                "title": title,
                "body": body,
            })

        return request.redirect("/training/notes", code=303)