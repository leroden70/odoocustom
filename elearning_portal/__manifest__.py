{
    "name": "Portail de formations",
    "summary": "Relier des formations aux notes du module de formation",
    "version": "19.0.1.0.0",
    "category": "Training",
    "author": "Formation Odoo",
    "license": "LGPL-3",
    "depends": [
        "training_hello",
        "website",
    ],
    "data": [
        "security/ir.model.access.csv",
        "data/elearning_module_data.xml",
        "views/elearning_module_views.xml",
        "views/templates.xml",
    ],
    "application": True,
    "installable": True,
}

