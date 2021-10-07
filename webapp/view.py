from flask import render_template, Blueprint, request
from webapp.controllers import menu_dict

webapp = Blueprint('webapp', __name__, url_prefix='/')

@webapp.route('/')
def index():
    return render_template('index.html', menu=menu_dict())
