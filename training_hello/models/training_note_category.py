from odoo import fields, models


class TrainingNoteCategory(models.Model):
    _name = "training.note.category"
    _description = "Catégorie de note"
    _order = "name"

    name = fields.Char(string="Nom", required=True)