from markupsafe import Markup
from odoo import fields, models, api
import requests
import base64

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
                '<ul class="oe_hierarchy_tree">{}</ul>'
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
        html += Markup('<span class="listname"><a href="{}">{}</a></span>').format(
            url, self.full_name
        )

        if related:
            html += Markup('<ul class="nested">')
            for rel in related:
                html += rel._build_hierarchy_li(direction, level + 1, action)
            html += Markup('</ul>')

        html += Markup('</li>')
        return html
    # @api.depends('photo')
    # def _compute_photo_binary(self):
    #     for record in self:
    #         if record.photo:
    #             try:
    #                 base_url = self.env['ir.config_parameter'].sudo().get_param('web.base.url')
    #                 url = f"{base_url}{record.photo}"
    #                 print(url)
    #                 response = requests.get(url, timeout=10)
    #                 if response.status_code == 200:
    #                     record.photo_binary = base64.b64encode(response.content)
    #                 else:
    #                     record.photo_binary = False
    #             except Exception:
    #                 record.photo_binary = False
    #         else:
    #             record.photo_binary = False

    @api.depends('first_name', 'last_name')
    def _compute_full_name(self):
        for record in self:
            record.full_name = f"{record.first_name} {record.last_name}".strip()

