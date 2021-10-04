from flask import Blueprint, render_template
from models import Post


posts = Blueprint('posts', __name__, template_folder='templates')

@posts.route('/')
def index():
    # TODO: Request only post_cut
    cuts = Post.query.all()
    return render_template('blog/index.html', posts=cuts)

@posts.route('/<slug>')
def post_detail(slug):
    post = Post.query.filter(Post.slug==slug).first()
