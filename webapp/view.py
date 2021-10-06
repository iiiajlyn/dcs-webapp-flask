from flask import render_template, Blueprint, request
from webapp import db
from webapp.models import Posts, PostComments
# flash, g, session, redirect, url_for

webapp = Blueprint('webapp', __name__, url_prefix='/')

@webapp.route('/')
def index():
    return render_template('index.html')
