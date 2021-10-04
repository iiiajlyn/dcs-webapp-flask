'''Models for database.'''
from datetime import datetime

from app import db

from services.common_services import slugify


class Post(db.Model):
    '''Post table.'''

    id = db.Column(db.Integer, primary_key=True)
    post_title = db.Column(db.String(255))
    slug = db.Column(db.String(255), unique=True)
    post_title = db.Column(db.String(255))
    description = db.Column(db.Text)
    post_cut = db.Column(db.Text)
    post_content = db.Column(db.Text)
    post_date = db.Column(db.DateTime, default=datetime.now())

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.generate_slug()

    def __repr__(self):
        return f'<Post id: {self.id}, title: {self.post_title}'

    def generate_slug(self):
        '''Create slug from post title.'''
        if self.post_title:
            self.slug = slugify(self.post_title)


class Comments(db.Model):
    '''Comments table.'''
    id = db.Column(db.Integer, primary_key=True)
    comment_post_id = db.Column(db.Integer)
    comment_author = db.Column(db.String(255))
    comment_date = db.Column(db.DateTime, default=datetime.now())
    comment_content = db.Column(db.Text)
    comment_parent = db.Column(db.Integer)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

    def __repr__(self):
        return f'<Comment id: {self.id}, Post id: {self.comment_post_id}'
