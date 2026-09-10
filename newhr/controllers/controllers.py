# from odoo import http


# class Newhr(http.Controller):
#     @http.route('/newhr/newhr', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/newhr/newhr/objects', auth='public')
#     def list(self, **kw):
#         return http.request.render('newhr.listing', {
#             'root': '/newhr/newhr',
#             'objects': http.request.env['newhr.newhr'].search([]),
#         })

#     @http.route('/newhr/newhr/objects/<model("newhr.newhr"):obj>', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('newhr.object', {
#             'object': obj
#         })

