from flask import Flask, render_template

# Import SQLAlchemy
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate

from config import Configuration

db = SQLAlchemy()

def create_app():
    # Define the WSGI application object
    app = Flask(__name__)
    # app = Flask('app')

    # Configurations
    app.config.from_object(Configuration)

    # Define the database object which is imported
    # by modules and controllers
    db.init_app(app)

    # HTTP error handling
    @app.errorhandler(404)
    def not_found(error):
        return render_template('404.html'), 404

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
