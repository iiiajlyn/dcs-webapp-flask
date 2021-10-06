from flask import Blueprint, render_template
from webapp.models import Posts


posts = Blueprint('posts', __name__, url_prefix='/blog', template_folder='templates')

@posts.route('/')
def index():
    # TODO: Request only post_cut
    cuts = Posts.query.all()
    return render_template('blog/index.html', posts=cuts)

@posts.route('/<slug>')
def post_detail(slug):
    post = Posts.query.filter(Posts.slug==slug).first()
    return render_template('blog/post_detail.html', post=post)
