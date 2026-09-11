from odoo import fields, models

class NewhrPublicHolidays(models.Model):
    _name = 'newhr.public_holidays'
    _description = 'Public Holidays'

    active = fields.Boolean('Active', default=True)
    country_id = fields.Many2one('res.country', string='Country', index=True)
    holiday_date = fields.Date(string='Holiday Date', required=True)
    holiday_description = fields.Char(string='Description')
