from flask import render_template, Blueprint, request
from webapp.controllers import menu_dict, unit_stats, page_background, top_users


webapp = Blueprint('webapp', __name__, url_prefix='/')

@webapp.route('/')
def index(slug=None):
    bkg = page_background(slug)
    return render_template('index.html', menu=menu_dict(), bkg=bkg)

@webapp.route('/stats/<slug>')
def stats(slug):
    params ={
        'menu': menu_dict(),
        'bkg': page_background(slug),
        'top_user': top_users(slug)
        }
    return render_template('index.html', **params)
