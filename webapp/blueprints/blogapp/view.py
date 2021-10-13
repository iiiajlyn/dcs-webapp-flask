'''Controllers for blogapp.'''
from flask import Blueprint, render_template

from .controllers import get_index_posts, get_post_detail
from webapp.controllers import menu_dict, page_background

posts = Blueprint('posts', __name__, url_prefix='/blog/', template_folder='templates')

@posts.route('/')
def index(slug=None):
    params = {
        'bkg': page_background(slug),
        'description': 'List of posts',
        'menu': menu_dict(),
    }
    params = dict(params, **get_index_posts())
    return render_template('blog/index.html', **params)

@posts.route('/<slug>')
def post_detail(slug):
    params = {
        'bkg': page_background(slug),
        'menu': menu_dict(),
        'post': get_post_detail(slug)
    }
    params['description'] = params['post']['description']
    return render_template('blog/post_detail.html', **params)

# HTTP error handling
@posts.errorhandler(404)
def not_found(error, slug=None):
    params ={
        'menu': menu_dict(),
        'bkg': page_background(slug)
        }
    return render_template('404.html', **params), 404
