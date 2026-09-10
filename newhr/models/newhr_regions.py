from odoo import fields, models

class NewhrRegions(models.Model):
    _name = 'newhr.regions'
    _description = 'Regions'

    active = fields.Boolean('Active', default=True)
    name = fields.Char('Region Name', required=True)