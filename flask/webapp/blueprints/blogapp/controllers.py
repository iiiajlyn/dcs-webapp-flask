from datetime import datetime as dt

from flask import request

from webapp import db
from webapp.models import Posts, PostComments
from webapp.blueprints.blogapp.services.post_services import get_post_comments

def get_index_posts():
    spam = []
    page = request.args.get('page')
    try:
        if page or page.isdigit():
            page = int(page)
        else:
            page = 1
    except AttributeError:
        page = 1
    posts = Posts.query.order_by(db.desc(Posts.post_date))
    pages = posts.paginate(page=page, per_page=5)
    for post in pages.items:
        p_date = dt.strftime(post.post_date, '%Y-%m-%d')
        spam.append(
            {'post_title': post.post_title,
             'slug': post.slug,
             'post_date': p_date,
             'post_cut': post.post_cut if post.post_cut is not None else '',
            }
        )
    spam = {
        'cuts': spam,
        'pages': [x for x in pages.iter_pages()],
        'current_page': page}
    return spam

def get_post_detail(slug):
    post = Posts.query.filter(Posts.slug==slug).first_or_404()
    comments = PostComments.query.filter(
        PostComments.comment_post_id == post.id).all()
    p_date = dt.strftime(post.post_date, '%Y-%m-%d')
    spam = {'post_title': post.post_title,
            'description': post.description,
            'slug': post.slug,
            'post_date': p_date,
            'post_content': post.post_content,
            'comments': get_post_comments(comments)
            }
    return spam
