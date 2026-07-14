{
    'name': "nhr",

    'summary': "New Human Resources Application",

    'description': """
To manage employees, jobs, departments, absences, etc.
    """,

    'author': "Denis",
    'website': "https://www.google.com",

    # Categories can be used to filter modules in modules listing
    # Check https://github.com/odoo/odoo/blob/15.0/odoo/addons/base/data/ir_module_category_data.xml
    # for the full list
    'category': 'Human Resources',
    'version': '0.1',

    # any module necessary for this one to work correctly
    'depends': ['base'],

    # always loaded
    'data': [
        # 'security/ir.model.access.csv',
        'security/ir.model.access.csv',
        'views/views.xml',
        'views/nhr_employees_views.xml',
        'views/nhr_absence_types_views.xml',
        'views/nhr_absences_views.xml',
        'views/nhr_departments_views.xml',
        'views/nhr_ent_holidays_views.xml',
        'views/nhr_job_history_views.xml',
        'views/nhr_jobs_views.xml',
        'views/nhr_locations_views.xml',
        'views/nhr_public_holidays_views.xml',
        'views/nhr_regions_views.xml',
        'views/nhr_menus.xml',
    ],
    # only loaded in demonstration mode
    'demo': [
        'demo/demo.xml',
    ],
    'license': 'LGPL-3',
    'installable': True,
    'application': True,
}

