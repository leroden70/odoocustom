# from odoo import http


# class TrainingHello(http.Controller):
#     @http.route('/training_hello/training_hello', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/training_hello/training_hello/objects', auth='public')
#     def list(self, **kw):
#         return http.request.render('training_hello.listing', {
#             'root': '/training_hello/training_hello',
#             'objects': http.request.env['training_hello.training_hello'].search([]),
#         })

#     @http.route('/training_hello/training_hello/objects/<model("training_hello.training_hello"):obj>', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('training_hello.object', {
#             'object': obj
#         })

