import typing

from markupsafe import Markup
from odoo import fields, models, api
import requests
import base64

from odoo.orm.types import ValuesType


class NhrEmployees(models.Model):
    _name = 'nhr.employees'
    _description = "Employees"
    _rec_name = 'full_name'

    active = fields.Boolean('Active', default=True)
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
    photo = fields.Image('Photo', max_width=500, max_height=500)
    job_history_id = fields.One2many('nhr.job_history', 'employee_id', string='Job History')
    absences_id = fields.One2many('nhr.absences', 'employee_id')
    ent_holidays_id = fields.One2many('nhr.ent_holidays', 'employee_id')
    # Ajoutez options, sanitize=False et strip_style=False
    hierarchy_string = fields.Html(
        string="Management Hierarchy",
        compute="_compute_hierarchy_string",
        sanitize=False,
    )
    child_ids = fields.One2many(
        'nhr.employees', 'manager_id', string="Subordonnés"
    )
    subordinates_string = fields.Html(
        string="Subordinates",
        compute="_compute_subordinates_string",
        sanitize=False,
    )

    @api.depends(
        'full_name', 'manager_id', 'manager_id.manager_id',
        'manager_id.manager_id.manager_id',
        'manager_id.manager_id.manager_id.manager_id',
    )
    def _compute_hierarchy_string(self):
        action = self.env.ref('nhr.nhr_employees_action')
        for employee in self:
            employee.hierarchy_string = Markup(
                '<ul class="oe_hierarchy_tree">{}</ul>'
            ).format(employee._build_hierarchy_li('up', 0, action))

    @api.depends(
        'full_name', 'child_ids.full_name',
        'child_ids.child_ids.full_name',
        'child_ids.child_ids.child_ids.full_name',
        'child_ids.child_ids.child_ids.child_ids.full_name',
    )
    def _compute_subordinates_string(self):
        action = self.env.ref('nhr.nhr_employees_action')
        for employee in self:
            employee.subordinates_string = Markup(
                '<ul class="oe_hierarchy_tree" style="position:relative;">{}</ul>'
            ).format(employee._build_hierarchy_li('down', 0, action))

    def _build_hierarchy_li(self, direction, level, action):
        self.ensure_one()
        related = self.child_ids if direction == 'down' else self.manager_id

        html = Markup('<li>')
        if related:
            onclick = (
                "this.classList.toggle('caret-down');"
                "this.parentElement.querySelector(':scope > ul.nested')"
                ".classList.toggle('active')"
            )
            html += Markup('<span class="caret" onclick="{}"></span>').format(onclick)

        if level > 0 and direction == 'up':
            html += Markup('reports to ')

        url = f"/odoo/action-{action.id}/{self.id}"
        html += Markup('<span class="listname"><a href="{}">{}<span style="font-size:75%;"> -- {} -- {}</span></a></span>').format(
            url, self.full_name, self.job_id.job_title , self.department_id.department_name
        )

        if related:
            html += Markup('<ul class="nested">')
            for rel in related:
                html += rel._build_hierarchy_li(direction, level + 1, action)
            html += Markup('</ul>')

        html += Markup('</li>')
        return html

    @api.depends('first_name', 'last_name')
    def _compute_full_name(self):
        for record in self:
            record.full_name = f"{record.first_name} {record.last_name}".strip()

    def write(self, vals: ValuesType) -> typing.Literal[True]:
        tracked_fields = {"job_id", "department_id"}
        if tracked_fields.intersection(vals.keys()):
            old_values = {emp.id: (emp.job_id.id, emp.department_id.id) for emp in self}
            result = super().write(vals)
            for emp in self:
                old_job_id, old_department_id = old_values[emp.id]
                if old_job_id != emp.job_id.id or old_department_id != emp.department_id.id:
                    emp._create_job_history_record(old_job_id, old_department_id)
            return result
        return super().write(vals)

    def _create_job_history_record(self, old_job_id, old_department_id):
        self.ensure_one()
        last_history = self.env['nhr.job_history'].search([
            ('employee_id', '=', self.id),
            ('end_date', '=', False),
        ], limit=1)
        if last_history:
            last_history.write({'end_date': fields.Date.context_today(self)})

        self.env['nhr.job_history'].create({
            "employee_id": self.id,
            "job_id": self.job_id.id,
            "department_id": self.department_id.id,
            "start_date": fields.Date.context_today(self),
        })