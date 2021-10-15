import os
from flask import Flask, render_template

# Import SQLAlchemy
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate

from config import DevelopmentConfiguration, ProductionConfiguration, TestConfiguration

db = SQLAlchemy()

def create_app():
    # Define the WSGI application object
    app = Flask(__name__)

    # Configurations
    if os.environ['FLASK_ENV'] == 'development':
        app.config.from_object(DevelopmentConfiguration)
    elif os.environ['FLASK_ENV'] == 'testing':
        app.config.from_object(TestConfiguration)
    else:
        app.config.from_object(ProductionConfiguration)


    # Define the database object which is imported
    # by modules and controllers
    db.init_app(app)

    # HTTP error handling
    @app.errorhandler(404)
    def not_found(error):
        return render_template('page404.html'), 404

    # Import a module / component using its blueprint handler variable (mod_auth)
    from webapp.view import webapp
    from webapp.blueprints.blogapp.view import posts

    # Register blueprint(s)
    app.register_blueprint(webapp)
    app.register_blueprint(posts)

    # Build the database:
    # This will create the database file using SQLAlchemy
    with app.app_context():
        db.create_all()

    migrate = Migrate(app, db)

    return app
