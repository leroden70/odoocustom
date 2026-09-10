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
    end_date = fields.Date(string="Expiration", default=datetime.strptime("9999-12-31", '%Y-%m-%d').date(), required=True)
    entitlement = fields.Integer(string="Entitlement", default=0, required=True)
    balance = fields.Integer(string="Balance", required=True)

    @api.onchange('entitlement')
    def _onchange_entitlement(self):
        for record in self:
            entitlement_old_value = record._origin.entitlement
            balance_old_value = record._origin.balance
            entitlement_new_value = record.entitlement
            if entitlement_old_value != entitlement_new_value:
                record.balance = balance_old_value + (entitlement_new_value - entitlement_old_value)