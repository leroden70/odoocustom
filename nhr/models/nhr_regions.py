# -*- coding: utf-8 -*-
# Part of Odoo. See LICENSE file for full copyright and licensing details.
from odoo import fields, models, api
from odoo.tools import date_utils

class NhrRegions(models.Model):
    _name = 'nhr.regions'
    _description = "Regions"

    name = fields.Char('Region Name', required=True)
