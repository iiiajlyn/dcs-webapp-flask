from flask import abort, Blueprint, render_template, request
from webapp.controllers import menu_dict, page_background, StatsController


webapp = Blueprint('webapp', __name__, url_prefix='/')

@webapp.route('/')
def index(slug=None):
    bkg = page_background(slug)
    return render_template('index.html', menu=menu_dict(), bkg=bkg)

@webapp.route('/stats/<slug>')
def stats(slug):
    unit_stats = StatsController(slug)
    params ={
        'menu': menu_dict(),
        'bkg': page_background(slug),
        }
    params = dict(params, **unit_stats())
    if params['top_users'] == 404:
        abort(404)
    return render_template('index.html', **params)

@webapp.errorhandler(404)
def not_found(error, slug=None):
    params ={
        'menu': menu_dict(),
        'bkg': page_background(slug)
        }
    return render_template('404.html', **params), 404
