from odoo import http
from odoo.http import request


class TrainingTagsController(http.Controller):
    @http.route("/training/tags", auth="user")
    def training_tags(self):
        tags = request.env["res.partner.category"].search([])
        return request.render("training_hello.training_tags_page", {
            "tags": tags,
        })