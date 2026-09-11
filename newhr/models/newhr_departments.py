# -*- coding: utf-8 -*-
# Part of Odoo. See LICENSE file for full copyright and licensing details.
from odoo import fields, models, api
from odoo.tools import date_utils

class NhrDepartments(models.Model):
    _name = 'nhr.departments'
    _description = "Departments"

    _rec_name = 'department_name'

    active = fields.Boolean('Active', default=True)
    department_name = fields.Char('Department Name', required=True, translate=True)
    manager_id = fields.Many2one('nhr.employees', string='Manager', index=True)
    location_id = fields.Many2one('nhr.locations', string='Location', index=True)
