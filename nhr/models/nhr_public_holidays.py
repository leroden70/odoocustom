from odoo import fields, models, api
from odoo.tools import date_utils

class NhrPublicHolidays(models.Model):
    _name = 'nhr.public_holidays'
    _description = "Public Holidayss"

    active = fields.Boolean('Active', default=True)
    country_id = fields.Many2one('res.country', string="Country", index=True)
    holiday_date = fields.Date(string="Holiday Date", required=True)
    holiday_description = fields.Char('Description')