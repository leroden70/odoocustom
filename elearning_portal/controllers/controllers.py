# from odoo import http


# class ElearningPortal(http.Controller):
#     @http.route('/elearning_portal/elearning_portal', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/elearning_portal/elearning_portal/objects', auth='public')
#     def list(self, **kw):
#         return http.request.render('elearning_portal.listing', {
#             'root': '/elearning_portal/elearning_portal',
#             'objects': http.request.env['elearning_portal.elearning_portal'].search([]),
#         })

#     @http.route('/elearning_portal/elearning_portal/objects/<model("elearning_portal.elearning_portal"):obj>', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('elearning_portal.object', {
#             'object': obj
#         })

