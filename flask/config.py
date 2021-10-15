import os

class Configuration:
    DEBUG = False
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    SQLALCHEMY_DATABASE_URI = (f'postgresql://{os.environ["POSTGRES_USER"]}:'
        f'{os.environ["POSTGRES_PASS"]}@{os.environ["POSTGRES_HOST"]}:'
        f'{os.environ["POSTGRES_PORT"]}/{os.environ["POSTGRES_DB"]}')
    TESTING = False

class ProductionConfiguration(Configuration):
    pass

class TestConfiguration(Configuration):
    TESTING = True

class DevelopmentConfiguration(Configuration):
    DEBUG = True
