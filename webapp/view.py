from flask import render_template, Blueprint, request
from webapp.controllers import menu_dict, unit_stats, get_background


webapp = Blueprint('webapp', __name__, url_prefix='/')

@webapp.route('/')
def index(slug=None):
    bkg = get_background(slug)
    return render_template('index.html', menu=menu_dict(), bkg=bkg)

@webapp.route('/stats/<slug>')
def stats(slug):
    bkg = get_background(slug)
    unit_stats(slug)
    return render_template('index.html', menu=menu_dict(), bkg=bkg)
