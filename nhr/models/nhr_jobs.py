# -*- coding: utf-8 -*-
# Part of Odoo. See LICENSE file for full copyright and licensing details.
from odoo import fields, models, api
from odoo.tools import date_utils

class NhrJobs(models.Model):
    _name = 'nhr.jobs'
    _description = "Jobs"

    _rec_name = 'job_title'

    job_title = fields.Char('Job Title', required=True, translate=True)
    min_salary = fields.Float('Minimum Salary', required=True)
    max_salary = fields.Float('Maximum Salary', required=True)


