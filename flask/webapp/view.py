from datetime import date

from flask import (abort, Blueprint, current_app, redirect, render_template,
                   request, send_from_directory, url_for)
from webapp.controllers import get_sitemap, menu_dict, page_background, StatsController


webapp = Blueprint('webapp', __name__, url_prefix='/')
TODAY = date.today().isoformat()

@webapp.route('/')
def index(slug=None):
    unit_stats = StatsController(slug)
    params ={
        'menu': menu_dict(),
        'bkg': page_background(slug),
        'data_updated': TODAY,
        'show_legend': 'false'
        }
    params = dict(params, **unit_stats())
    if params['top_users'] == 404:
        abort(404)
    return render_template('index.html', **params)

@webapp.route('/stats/<slug>')
def stats(slug):
    unit_stats = StatsController(slug)
    params ={
        'menu': menu_dict(),
        'bkg': page_background(slug),
        'data_updated': TODAY,
        'series_name': 'Files',
        }
    params = dict(params, **unit_stats())
    if params['top_users'] == 404:
        abort(404)
    return render_template('index.html', **params)

@webapp.route('/sitemap.xml')
def sitemap():
    base_url = 'http://ma5ta.ru'
    pages = get_sitemap()
    return render_template(
        'sitemap_template.xml',
        pages=pages,
        base_url=base_url,
        date_now = TODAY)

@webapp.route('/robots.txt')
@webapp.route('/googledebc99b136ef1c75.html')
@webapp.route('/yandex_7044a0c33d4d37d4.html')
def static_from_root():
    return send_from_directory(current_app.static_folder, request.path[1:])

@webapp.route('/world-of-tanks')
@webapp.route('/main')
@webapp.route('/kamaz-na-lite')
@webapp.route('/leningradskij-front')
@webapp.route('/gametrix-ecs-proshivka-i-nastrojka')
@webapp.route('/world-of-tanks-v-nachale-bylo-slovo')
@webapp.route('/world-of-tanks-pricel')
@webapp.route('/pedali-brd-f1')
@webapp.route('/kompjuter')
@webapp.route('/t95-tozhe-moget')
@webapp.route('/ma5ta-master-at-8')
@webapp.route('/obzor-na-bamper-dlja-sony-z1-compact')
@webapp.route('/obzor-rabochego-mesta-dlja-poletov-v-dcs')
@webapp.route('/uh-1h-helicopter-training-mission')
@webapp.route('/trenirovochnaja-missija-dlja-vertoleta-uh-1h')
@webapp.route('/chronodex-kak-poschitat-skolko-vremeni-uhodi')
def redirect_old_route():
    return redirect(url_for('posts.post_detail', slug=request.path[1:]))

@webapp.errorhandler(404)
def not_found(error, slug=None):
    params ={
        'menu': menu_dict(),
        'bkg': page_background(slug)
        }
    return render_template('404.html', **params), 404
