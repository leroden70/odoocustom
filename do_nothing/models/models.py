# from odoo import models, fields, api


# class do_nothing(models.Model):
#     _name = 'do_nothing.do_nothing'
#     _description = 'do_nothing.do_nothing'

#     name = fields.Char()
#     value = fields.Integer()
#     value2 = fields.Float(compute="_value_pc", store=True)
#     description = fields.Text()
#
#     @api.depends('value')
#     def _value_pc(self):
#         for record in self:
#             record.value2 = float(record.value) / 100

