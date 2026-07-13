# -*- coding: utf-8 -*-
# Part of Odoo. See LICENSE file for full copyright and licensing details.
from odoo import fields, models, api
from odoo.tools import date_utils

class NhrLocations(models.Model):
    _name = 'nhr.locations'
    _description = "Locations"

    
    street_address = fields.Char('Street Address', required=True)
    postal_code = fields.Char('Postal Code', required=True)
    city = fields.Char('City', required=True)
    state_province = fields.Char('State Province')
    country_id=fields.Many2one('res.country', string="Country", index=True)

    def _compute_display_name(self):
        for record in self:
            record.display_name = f"{record.street_address or ''}, {record.city}".strip(', ')
