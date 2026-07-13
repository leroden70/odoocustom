# -*- coding: utf-8 -*-
# Part of Odoo. See LICENSE file for full copyright and licensing details.
from odoo import fields, models, api
from odoo.tools import date_utils

class NhrEntHolidays(models.Model):
    _name = 'nhr.absences'
    _description = "Entitlement to Holidays"

    employee_id = fields.Many2one('nhr.employees', string="Employee", required=True)
    absence_type = fields.Many2one('nhr.absence_types', string="Absence Type", required=True)
    description = fields.Char(string="Description")
    start_date = fields.Date('Start Date', required=True)
    estimated_end_date = fields.Date('End Date', required=True)
    end_date = fields.Date('End Date')
