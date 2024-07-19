from split_settings.tools import optional, include
from os import environ

ENV = environ.get('DJANGO_ENV') or 'development'

base_settings = [
    'components/common.py',  # standard django settings
    'components/database.py',  # postgres
    # 'components/rq.py',  # redis and redis-queue
    # 'components/emails.py',  # smtp

    # You can even use glob:
    # 'components/*.py'

    # Select the right env:
    'environment/{0}.py'.format(ENV),
    # Optionally override some settings:
    optional('environment/local.py'),
]

# Include settings:
include(*base_settings)