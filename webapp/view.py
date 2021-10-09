from flask import abort, Blueprint, render_template, request
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
        'top_user': top_users(slug),
        }
    if params['top_user'] == 404:
        abort(404)
    params = dict(params, **unit_stats(slug))
    print(params)
    return render_template('index.html', **params)


# HTTP error handling
@webapp.errorhandler(404)
def not_found(error, slug=None):
    params ={
        'menu': menu_dict(),
        'bkg': page_background(slug)
        }
    return render_template('404.html', **params), 404
