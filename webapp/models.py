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

class UnitTypes(db.Model):
    __table_name__ = 'unit_types'
    __table_args__ = {
        'schema': 'dw',
        'extend_existing': False
        }
    id = db.Column(db.Integer, primary_key=True)
    unit_type_name = db.Column(db.String(255))
    unit_type = db.relationship('Units')

    def __repr__(self):
        return (f'<UnitTypes.id: {self.id}, '
                f'{self.unit_type_name=}>')

class Developers(db.Model):
    __table_name__ = 'developers'
    __table_args__ = {
        'schema': 'dw',
        'extend_existing': False
        }
    id = db.Column(db.Integer, primary_key=True)
    developer_name = db.Column(db.String(255))
    developer = db.relationship('Units')

    def __repr__(self):
        return (f'<Developer id: {self.id}, '
                f'Developer name: {self.developer_name}>')

class Units(db.Model):
    __table_name__ = 'units'
    __table_args__ = {
        'schema': 'dw',
        'extend_existing': False
        }
    id = db.Column(db.Integer, primary_key=True)
    unit_name = db.Column(db.String(255))
    developer_id = db.Column(db.Integer, db.ForeignKey('dw.developers.id'))
    unit_type_id = db.Column(db.Integer, db.ForeignKey('dw.unit_types.id'))
    release_date = db.Column(db.Date)
    adding_date = db.Column(db.Date)
    unit = db.relationship('FilesStats')

    def __repr__(self):
        return f'<{self.id=}, {self.unit_name=}>'

class FileTypes(db.Model):
    __table_name__ = 'file_types'
    __table_args__ = {
        'schema': 'dw',
        'extend_existing': False
        }
    id = db.Column(db.Integer, primary_key=True)
    file_type_name = db.Column(db.String(255))
    file_type = db.relationship('FilesStats')

    def __repr__(self):
        return f'<{self.id=}, {self.file_type_name=}>'

class Users(db.Model):
    __table_name__ = 'users'
    __table_args__ = {
        'schema': 'dw',
        'extend_existing': False
        }
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(255))
    user = db.relationship('FilesStats')

    def __repr__(self):
        return f'<{self.id=}, {self.username=}>'

class FilesStats(db.Model):
    __table_name__ = 'files_stats'
    __table_args__ = {
        'schema': 'dw',
        'extend_existing': False
        }
    file_id = db.Column(db.Integer, primary_key=True)
    file_type_id = db.Column(db.Integer, db.ForeignKey('dw.file_types.id'))
    unit_id = db.Column(db.Integer, db.ForeignKey('dw.units.id'))
    downloaded = db.Column(db.Integer)
    user_id = db.Column(db.Integer , db.ForeignKey('dw.users.id'))
    publishing_date = db.Column(db.Date)
    updated_date = db.Column(db.Date)

    def __repr__(self):
        return (f'<{self.file_id=}, {self.unit_id=}, {self.user_id=}, '
                f'{self.downloaded=}, {self.updated_date=}>')
