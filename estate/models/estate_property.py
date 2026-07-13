# -*- coding: utf-8 -*-
# Part of Odoo. See LICENSE file for full copyright and licensing details.
from odoo import fields, models, api
from odoo.tools import date_utils

class EstateProperty(models.Model):
    _name = 'estate.property'
    _description = "Estate property"

    name = fields.Char('Estate Name', required=True, translate=True)
    description = fields.Text('Estate Description', translate=True)
    postcode = fields.Char('Zip code')
    date_availability = fields.Date('Availability date', default=date_utils.add(fields.Date.today(), months=3), copy=False)
    expected_price = fields.Float('Expected price', required=True)
    selling_price = fields.Float('Selling price', readonly=True, copy=False)
    bedrooms = fields.Integer('Number of bedrooms', default=2)
    living_area = fields.Integer('Living area')
    facades = fields.Integer('Number of facades')
    garage = fields.Boolean('Has a garage')
    garden = fields.Boolean('Has a garden')
    garden_area = fields.Integer('Garden area')
    garden_orientation = fields.Selection(
        string='Garden orientation',
        selection=[
            ('north', 'North'),
            ('south', 'South'),
            ('east', 'East'),
            ('west', 'West')
        ]
    )
    active = fields.Boolean('Active', default=True)
    state = fields.Selection(
        string='State',
        selection=[
            ('new', 'New'),
            ('offer_received', 'Offer Received'),
            ('offer_accepted', 'Offer Accepted'),
            ('sold', 'Sold'),
            ('cancelled', 'Cancelled')
        ],
        default='new',
        copy=False,
        required=True
    )
    property_type_id = fields.Many2one('estate.property.type', string="Property Type")
    buyer = fields.Many2one('res.users', string='Buyer', index=True, default=lambda self: self.env.user)
    seller = fields.Many2one('res.users', string='Salesman', index=True, copy=False)
    tag_ids = fields.Many2many('estate.property.tag', string='Tags')
    offer_ids = fields.One2many('estate.property.offer', 'property_id', string="Offers")
    total_area = fields.Integer("Total Area", compute="_compute_total_area")
    best_price = fields.Float('Best price', compute="_compute_best_price")

    @api.depends("living_area", "garden_area")
    def _compute_total_area(self):
        for record in self:
            record.total_area = record.living_area + record.garden_area

    @api.depends("offer_ids.price")
    def _compute_best_price(self):
        for record in self:
            record.best_price = max(r.price for r in record.offer_ids)