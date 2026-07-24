# -*- coding: utf-8 -*-
# Part of Odoo. See LICENSE file for full copyright and licensing details.
from odoo import fields, models, api
from odoo.tools import date_utils

class NhrAbsenceTypes(models.Model):
    _name = 'nhr.absence_types'
    _description = "Absence Types"
    _rec_name = 'absence_type'

    active = fields.Boolean('Active', default=True)
    absence_type = fields.Char(string="Absence Type", required=True)
    absence_description = fields.Char(string="Description")


