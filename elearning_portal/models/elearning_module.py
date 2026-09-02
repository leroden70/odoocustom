from odoo import fields, models


class ElearningModule(models.Model):
    _name = "elearning.module"
    _description = "Formation eLearning"
    _order = "name"

    name = fields.Char(string="Nom", required=True)
    description = fields.Text(string="Description")
    note_ids = fields.Many2many(
        "training.note",
        string="Notes associées",
    )