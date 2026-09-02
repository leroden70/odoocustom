{
    "name": "Hello Odoo",
    "summary": "Un premier module minimal pour Odoo",
    "version": "19.0.1.0.0",
    "category": "Training",
    "author": "Formation Odoo",
    "license": "LGPL-3",
    "depends": ["web", "contacts"],
    "data": [
        'security/ir.model.access.csv',
        "data/partner_category_data.xml",
        "views/partner_category_list.xml",
        "views/training_note_views.xml",
        "views/training_note_templates.xml",
        "views/hello_world_menus.xml",
        "views/templates.xml",
        "data/training_note_data.xml",
        "data/training_note_category_data.xml",
    ],    "assets": {
        "web.assets_backend": [
            "training_hello/static/src/hello_world/hello_world.js",
            "training_hello/static/src/hello_world/hello_world.xml",
            "training_hello/static/src/hello_world/training_notes.js",
            "training_hello/static/src/hello_world/training_notes.xml",
        ],
    },
    "application": True,
    "installable": True,
}