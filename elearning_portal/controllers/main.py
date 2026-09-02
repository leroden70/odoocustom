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