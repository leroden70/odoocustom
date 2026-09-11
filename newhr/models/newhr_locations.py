from operator import index

from odoo import fields, models

class NewhrLocations(models.Model):
    _name = 'newhr.locations'
    _description = 'Locations'

    active = fields.Boolean('Active', default=True)
    street_address = fields.Char(string='Street Address', required=True)
    postal_code = fields.Char(string='Postal Code', required=True)
    city = fields.Char(string='City', required=True)
    state_province = fields.Char(string='State Province')
    country_id = fields.Many2one('res.country', string='Country', index=True, required=True)

