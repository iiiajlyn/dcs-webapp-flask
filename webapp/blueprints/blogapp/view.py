from flask import Blueprint, render_template
from webapp.controllers import menu_dict, unit_stats, get_background
from webapp.models import Posts


posts = Blueprint('posts', __name__, url_prefix='/blog/', template_folder='templates')

@posts.route('/')
def index(slug=None):
    # TODO: Request only post_cut
    cuts = Posts.query.all()
    bkg = get_background(slug)
    return render_template('blog/index.html',
                           posts=cuts,
                           menu=menu_dict(),
                           bkg=bkg)

@posts.route('/<slug>')
def post_detail(slug):
    bkg = get_background(slug)
    post = Posts.query.filter(Posts.slug==slug).first()
    return render_template('blog/post_detail.html',
                           post=post,
                           menu=menu_dict(),
                           bkg=bkg)

