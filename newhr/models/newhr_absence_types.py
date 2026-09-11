from odoo import models, fields

class NewhrAbsenceTypes(models.Model):
    _name = 'newhr.absence_types'
    _description = 'Absence Types'
    _rec_name = 'absence_type'

    active = fields.Boolean('Active', default=True)
    absence_type = fields.Char(string='Absence Type', required=True)
    absence_description = fields.Char(string='Description')