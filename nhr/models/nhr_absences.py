# -*- coding: utf-8 -*-
# Part of Odoo. See LICENSE file for full copyright and licensing details.
import typing
from datetime import date, datetime
from odoo import fields, models, api
from odoo.exceptions import ValidationError
from odoo.tools import date_utils
from odoo.orm.types import ValuesType
from odoo.tools import date_utils
from dateutil.relativedelta import relativedelta

class NhrAbsences(models.Model):
    _name = 'nhr.absences'
    _description = "Absences"

    active = fields.Boolean('Active', default=True)
    employee_id = fields.Many2one('nhr.employees', string="Employee", required=True)
    absence_type = fields.Many2one('nhr.absence_types', string="Absence Type", required=True)
    description = fields.Char(string="Description")
    start_date = fields.Date('Start Date', required=True)
    estimated_end_date = fields.Date('Estimated End Date', required=True)
    end_date = fields.Date('End Date')

    # Champs techniques pour piloter la vue XML
    is_locked = fields.Boolean(compute='_compute_fiche_status')
    duration = fields.Integer(compute='_compute_duration')

    @api.constrains('start_date', 'estimated_end_date')
    def _check_estimated_dates_coherence(self):
        for record in self:
            if record.start_date and record.estimated_end_date and record.estimated_end_date < record.start_date:
                raise ValidationError("Estimated end date must be after start date.")

    @api.constrains('start_date', 'end_date')
    def _check_dates_coherence(self):
        for record in self:
            if record.start_date and record.end_date and record.end_date < record.start_date:
                raise ValidationError("End date must be after start date.")

    @api.depends('end_date')
    def _compute_fiche_status(self):
        for record in self:
            # On verrouille tout si la date de fin est remplie
            record.is_locked = bool(record.end_date)

    @api.depends('start_date', 'estimated_end_date', 'end_date')
    def _compute_duration(self):
        for record in self:
            if record.end_date:
                record.duration = self._calculate_duration(record.start_date, record.end_date)
            else:
                record.duration = self._calculate_duration(record.start_date, record.estimated_end_date)

    def create(self, vals: ValuesType) -> typing.Literal[True]:
        result = super().create(vals)
        self._update_ent_holidays(result, -result.duration)
        return result

    def write(self, vals: ValuesType) -> typing.Literal[True]:
        old_values = {abs.id: (abs.start_date, abs.estimated_end_date, abs.end_date) for abs in self}
        old_start_date, old_estimated_end_date, old_end_date = old_values[self.abs.id]
        result = super().write(vals)
        for abs in self:
            delta_start = self._calculate_duration(abs.start_date, old_start_date)
            if delta_start > 0: delta_start -= 1
            if abs.end_date:
                if old_end_date:
                    delta_end = self._calculate_duration(old_end_date, abs.end_date)
                else:
                    delta_end = self._calculate_duration(old_estimated_end_date, abs.end_date)
            else:
                delta_end = self._calculate_duration(old_estimated_end_date, abs.estimated_end_date)
            if delta_end > 0: delta_end -= 1
            delta = delta_start + delta_end
            abs._update_ent_holidays(self, delta)
        return result

    def unlink(self):
        for record in self:
            # self._update_ent_holidays(record, record.duration)
            raise ValidationError("My Exception")
        result = super().unlink()
        return result

    def _update_ent_holidays(self, absence, delta_balance):
        # self.ensure_one()
        last_entitlement = self.env['nhr.ent_holidays'].search([
            ('employee_id', '=', absence.employee_id),
            ('absence_type', '=', absence.absence_type),
            ('start_date', '<=', fields.Date.today()),
            ('end_date', '>=', fields.Date.today()),
        ], order='end_date desc', limit=1)
        if last_entitlement:
            last_entitlement.write({
                'balance': last_entitlement.balance + delta_balance,
            })
        else:
            self.env['nhr.ent_holidays'].create({
                'employee_id': absence.employee_id.id,
                'absence_type': absence.absence_type.id,
                'start_date': date_utils.start_of(fields.Date.today(), "year"),
                'end_date': fields.Date.to_date("9999-12-31"),
                'balance': delta_balance,
            })

    def _calculate_duration(self, start_date, end_date):
        base_duration = end_date - start_date + relativedelta(days=1)
        current_date = start_date
        public_holidays = self.env['nhr.public_holidays'].search([
            ('country_id', '=', self.employee_id.department_id.location_id.country_id.id),
        ])
        holiday_dates = public_holidays.mapped('holiday_date')
        while current_date <= end_date:
            if current_date.weekday() in (5, 6) or current_date in holiday_dates:
                base_duration -= 1
        return base_duration

