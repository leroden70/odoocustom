{
    'name': "newhr",

    'summary': "New Human Resources Application",

    'description': """
To manage employees, jobs, departments, absences, etc.
    """,

    'author': "My Company",
    'website': "https://www.yourcompany.com",

    'category': 'Human Resources',
    'version': '0.1',

    'depends': ['base'],

    # always loaded
    'data': [
        # 'security/ir.model.access.csv',
        'security/ir.model.access.csv',
        # 'views/newhr_employees_views.xml',
        # 'views/newhr_absence_types_views.xml',
        # 'views/newhr_absences_views.xml',
        # 'views/newhr_departments_views.xml',
        # 'views/newhr_ent_holidays_views.xml',
        # 'views/newhr_job_history_views.xml',
        # 'views/newhr_jobs_views.xml',
        # 'views/newhr_locations_views.xml',
        # 'views/newhr_public_holidays_views.xml',
        'views/newhr_regions_views.xml',
        'views/newhr_menus.xml',
        # 'data/newhr_public_holidays_data.csv'
    ],
    # only loaded in demonstration mode
    'demo': [
        'demo/demo.xml',
    ],
    'assets': {
        'web.assets_backend': [
            'nhr/static/src/css/newhr_hierarchy.css',
        ],
    },
    'license': 'LGPL-3',
    'installable': True,
    'application': True,
}

