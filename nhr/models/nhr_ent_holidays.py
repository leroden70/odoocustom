# -*- coding: utf-8 -*-
# Part of Odoo. See LICENSE file for full copyright and licensing details.
from email.policy import default

from odoo import fields, models, api
from odoo.tools import date_utils
from datetime import datetime, date

class NhrEntHolidays(models.Model):
    _name = 'nhr.ent_holidays'
    _description = "Entitlement to Holidays"

    active = fields.Boolean('Active', default=True)
    employee_id = fields.Many2one('nhr.employees', string="Employee", required=True)
    absence_type = fields.Many2one('nhr.absence_types', string="Absence Type", required=True)
    start_date = fields.Date('Start Date', required=True)
    # end_date = fields.Date(string="Expiration", default=lambda self: date(9999, 12, 31), required=True)
    end_date = fields.Date(string="Expiration", required=True)
    entitlement = fields.Integer(string="Entitlement", default=datetime.strptime("9999-12-31", '%Y-%m-%d').date(), required=True)
    balance = fields.Integer(string="Balance", required=True)