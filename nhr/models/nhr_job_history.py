# -*- coding: utf-8 -*-
# Part of Odoo. See LICENSE file for full copyright and licensing details.
from odoo import fields, models, api
from odoo.tools import date_utils

class NhrJobHistory(models.Model):
    _name = 'nhr.job_history'
    _description = "Job History"

    employee_id = fields.Many2one('nhr.employees', string="Employee")
    start_date = fields.Date('Start Date')
    end_date = fields.Date('End Date')
    job_id = fields.Many2one('nhr.jobs', string='Job')
    department_id = fields.Many2one('nhr.departments', string='Department')

