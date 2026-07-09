# from odoo import http


# class Donothing(http.Controller):
#     @http.route('/do_nothing/do_nothing', auth='public')
#     def index(self, **kw):
#         return "Hello, world"

#     @http.route('/do_nothing/do_nothing/objects', auth='public')
#     def list(self, **kw):
#         return http.request.render('do_nothing.listing', {
#             'root': '/do_nothing/do_nothing',
#             'objects': http.request.env['do_nothing.do_nothing'].search([]),
#         })

#     @http.route('/do_nothing/do_nothing/objects/<model("do_nothing.do_nothing"):obj>', auth='public')
#     def object(self, obj, **kw):
#         return http.request.render('do_nothing.object', {
#             'object': obj
#         })

