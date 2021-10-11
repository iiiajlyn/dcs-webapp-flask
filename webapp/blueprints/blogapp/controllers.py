from datetime import datetime as dt

from webapp import db
from webapp.models import Posts

def get_index_posts():
    spam = []
    posts = Posts.query.order_by(db.desc(Posts.post_date)).all()
    for post in posts:
        p_date = dt.strftime(post.post_date, '%Y-%m-%d')
        spam.append(
            {'post_title': post.post_title,
             'slug': post.slug,
             'post_date': p_date,
             'post_cut': post.post_cut if post.post_cut is not None else '',
            }
        )
    return spam

def get_post_detail(slug):
    post = Posts.query.filter(Posts.slug==slug).first()
    p_date = dt.strftime(post.post_date, '%Y-%m-%d')
    return {'post_title': post.post_title,
            'slug': post.slug,
            'post_date': p_date,
            'post_content': post.post_content,
            'description': post.description
            }
