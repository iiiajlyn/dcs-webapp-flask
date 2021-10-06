'''Models for database.'''
from datetime import datetime

from webapp import db

from webapp.services.common_services import slugify


class PostComments(db.Model):
    '''Comments table.'''
    __table_name__ = 'post_comments'
    __table_args__ = {
        'schema': 'blog',
        'extend_existing': True
    }
    id = db.Column(db.Integer, primary_key=True)
    comment_post_id = db.Column(db.Integer, db.ForeignKey('blog.posts.id'))
    comment_author = db.Column(db.String(255))
    comment_date = db.Column(db.DateTime, default=datetime.now())
    comment_content = db.Column(db.Text)
    comment_parent = db.Column(db.Integer)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

    def __repr__(self):
        return f'<Comment id: {self.id}, Post id: {self.comment_post_id}'

class Posts(db.Model):
    '''Posts table.'''
    __table_name__ = 'posts'
    __table_args__ = {
        'schema': 'blog',
        'extend_existing': True
        }
    id = db.Column(db.Integer, primary_key=True)
    post_title = db.Column(db.String(255))
    slug = db.Column(db.String(255), unique=True)
    description = db.Column(db.Text)
    post_cut = db.Column(db.Text)
    post_content = db.Column(db.Text)
    post_date = db.Column(db.DateTime, default=datetime.now())
    # comment_post_id = db.relationship(
    #     'PostComments',
        # secondary=PostComments,
        # backref='post_id',
        # lazy='dynamic'
    # )

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.generate_slug()

    def __repr__(self):
        return f'<Post id: {self.id}, title: {self.post_title}'

    def generate_slug(self):
        '''Create slug from post title.'''
        if self.post_title:
            self.slug = slugify(self.post_title)

class MetaMenu(db.Model):
    __table_name__ = 'meta_menu'
    __table_args__ = {
        'schema': 'blog',
        'extend_existing': True
        }
    id = db.Column(db.Integer, primary_key=True)
