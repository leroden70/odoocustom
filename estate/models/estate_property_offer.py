# -*- coding: utf-8 -*-
# Part of Odoo. See LICENSE file for full copyright and licensing details.

from odoo import fields, models

class EstatePropertyOffer(models.Model):
    _name = 'estate.property.offer'
    _description = "Estate property offer"

    property_id = fields.Many2one('estate.property', required=True)
    price = fields.Float(string='Price', required=True)
    partner_id = fields.Many2one('res.partner',string='Partner')
    status = fields.Selection(
        string='Status',
        selection=[
            ('refused', 'Refused'),
            ('accepted', 'Accepted'),
            ('pending', 'Pending')
        ]
    )