from odoo import fields, models, api
import requests
import base64

class NhrEmployees(models.Model):
    _name = 'nhr.employees'
    _description = "Employees"
    _rec_name = 'full_name'

    first_name = fields.Char('First Name', required=True)
    last_name = fields.Char('Last Name', required=True)
    full_name = fields.Char("Full Name", compute="_compute_full_name")
    email = fields.Char('e-mail', required=True)
    phone_number = fields.Char('Phone Number', required=True)
    hire_date = fields.Date('Hire Date', required=True)
    job_id = fields.Many2one('nhr.jobs', string="Job", required=True)
    salary = fields.Float('Salary', required=True)
    commission_pct = fields.Float('Commission Percentage')
    manager_id = fields.Many2one('nhr.employees', string="Manager")
    department_id = fields.Many2one('nhr.departments', string='Department')
    photo = fields.Char('Photo File')
    photo_binary = fields.Binary(string='Photo', compute='_compute_photo_binary')

    @api.depends('photo')
    def _compute_photo_binary(self):
        for record in self:
            if record.photo:
                try:
                    base_url = self.env['ir.config_parameter'].sudo().get_param('web.base.url')
                    url = f"{base_url}{record.photo}"
                    print(url)
                    response = requests.get(url, timeout=10)
                    if response.status_code == 200:
                        record.photo_binary = base64.b64encode(response.content)
                    else:
                        record.photo_binary = False
                except Exception:
                    record.photo_binary = False
            else:
                record.photo_binary = False

    @api.depends('first_name', 'last_name')
    def _compute_full_name(self):
        for record in self:
            record.full_name = f"{record.first_name} {record.last_name}".strip()
