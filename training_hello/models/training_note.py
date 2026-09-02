from odoo import fields, models

class TrainingNote(models.Model):
    _name = "training.note"
    _description = "Note de formation"
    _order = "id desc"

    title = fields.Char(string="Title", required=True)
    body = fields.Text(string="Contenu")
    priority = fields.Selection(
        selection = [("0", "Normale"), ("1", "Importante")],
        string="Priorité",
        default="0",
    )
    owner_id = fields.Many2one(
        "res.users",
        string="Responsable",
        ondelete="set null",
    )
    category_id = fields.Many2one(
        "training.note.category",
        string="Catégorie",
        ondelete="set null",
    )