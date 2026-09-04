from werkzeug.exceptions import NotFound

from odoo import http
from odoo.http import request


class ElearningPortalController(http.Controller):
    @http.route(
        "/formations",
        type="http",
        auth="user",
        website=True,
        methods=["GET"],
    )
    def formations_page(self):
        modules = request.env["elearning.module"].search([], order="name")
        return request.render(
            "elearning_portal.formations_page",
            {"modules": modules},
        )

    @http.route(
        "/formations/<int:module_id>",
        type="http",
        auth="user",
        website=True,
        methods=["GET"],
    )
    def formation_detail_page(self, module_id):
        module = request.env["elearning.module"].search([("id", "=", module_id)], limit=1)
        if not module:
            raise NotFound()
        return request.render("elearning_portal.formation_detail_page", {"module": module})