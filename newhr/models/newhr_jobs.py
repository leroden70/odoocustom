from odoo import fields, models

class NewhrJobs(models.Model):
    _name = 'newhr.jobs'
    _description = 'Jobs'
    _rec_name = 'job_title'

    active = fields.Boolean('Active', default=True)
    job_title = fields.Char('Job Title', required=True, translate=True)
    min_salary = fields.Float('Minimum Salary', required=True)
    max_salary = fields.Float('Maximum Salary', required=True)