from odoo import models, fields, api

class HrEmployee(models.Model):
    _inherit = 'hr.employee'

    def write(self, vals):
        tracked_fields = {'job_id', 'department_id'}
        if tracked_fields.intersection(vals.keys()):
            # on capture les anciennes valeurs AVANT l'écriture
            old_values = {
                emp.id: (
                    emp.job_id.id,
                    emp.department_id.id
                ) for emp in self
            }
            result = super().write(vals)
            for emp in self:
                old_job_id, old_department_id = old_values[emp.id]
                if emp.job_id.id != old_job_id or emp.department_id.id != old_department_id:
                    emp._create_job_history_record(old_job_id, old_department_id)
            return result
        return super().write(vals)

    def _create_job_history_record(self, old_job_id, old_department_id):
        # Clôturer l'historique précédent encore actif
        last_history = self.env['job.history'].search([
            ('employee_id', '=', self.id),
            ('date_end', '=', False),
        ], limit=1)
        if last_history:
            last_history.write({'date_end': fields.Date.context_today(self)})

        # Créer le nouvel historique
        self.env['job.history'].create({
            'employee_id': self.id,
            'job_id': self.job_id.id,
            'department_id': self.department_id.id,
            'date_start': fields.Date.context_today(self),
        })