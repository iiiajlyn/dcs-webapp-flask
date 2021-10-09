from flask import Blueprint, render_template
from webapp.controllers import menu_dict, unit_stats, page_background
from webapp.models import Posts


posts = Blueprint('posts', __name__, url_prefix='/blog/', template_folder='templates')

@posts.route('/')
def index(slug=None):
    # TODO: Request only post_cut
    params = {
        'cuts': Posts.query.all(),
        'bkg': page_background(slug),
        'menu': menu_dict()
    }
    return render_template('blog/index.html', **params)

@posts.route('/<slug>')
def post_detail(slug):
    bkg = page_background(slug)
    post = Posts.query.filter(Posts.slug==slug).first()
    return render_template('blog/post_detail.html',
                           post=post,
                           menu=menu_dict(),
                           bkg=bkg)

# HTTP error handling
@posts.errorhandler(404)
def not_found(error, slug=None):
    params ={
        'menu': menu_dict(),
        'bkg': page_background(slug)
        }
    return render_template('404.html', **params), 404

