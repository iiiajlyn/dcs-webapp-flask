from flask import render_template, Blueprint, request

from webapp import db
from webapp.lib.slug_unit_dict import slug_item
from webapp.lib.get_top_users_sql import get_top_users_script


from webapp.models import (Developers, FilesStats, FileTypes, Units, UnitTypes,
                           Users)

from webapp.services.get_filetypes_numbers import get_filetypes_num
from webapp.services.get_menu import get_menu_titles
from webapp.services.get_page_background import get_background
from webapp.services.get_top_users_statistics import get_top_users
from webapp.services.get_units_statistics import get_units_stats
from webapp.services.get_page_stats import UnitStats

def menu_dict():
    menu_titles = Units.query.join(
        UnitTypes, Units.unit_type_id==UnitTypes.id
    ).add_columns(Units.unit_name, UnitTypes.unit_type_name).all()
    return get_menu_titles(menu_titles)

def page_background(slug):
    return get_background(slug)

class StatsController:

    def __init__(self, slug):
        self.unit_title = slug_item[slug]
        self.unit_id  = Units.query.where(
            Units.unit_name == self.unit_title).first().id
        self.unit_stats = UnitStats(self.unit_id)

    def unit_statistics(self):
        total_files = FilesStats.query.where(
            FilesStats.unit_id == self.unit_id).count()

        total_downloads = db.session.query(db.func.sum(
            FilesStats.downloaded)).where(
                FilesStats.unit_id == self.unit_id).first()
        total_downloads = self.unit_stats.get_total_downloads(total_downloads)

        total_users = db.session.query(db.func.count(
            db.func.distinct(FilesStats.user_id))).where(
                FilesStats.unit_id == self.unit_id).first()[0]

        last_upload_date = db.session.query(db.func.max(
            FilesStats.publishing_date)).where(
                FilesStats.unit_id == self.unit_id).first()[0]

        result = {
            'unit_title': self.unit_title,
            'total_files': total_files,
            'total_downloads': total_downloads,
            'total_users': total_users,
            'last_upload_date': last_upload_date,
            'main_graph': get_units_stats(self.unit_id)
        }
        return result

    def filetypes_numbers(self):
        file_types = db.session.query.where(
                FilesStats.unit_id == self.unit_id).all()
        print(file_types)
        return get_filetypes_num(self.unit_title)

    def top_users(self):
        try:
            result = db.session.execute(
                get_top_users_script, {'_unit': self.unit_title})
        except KeyError:
            return 404
        return get_top_users(result)

    def __call__(self):
        spam = {'top_users': self.top_users(),
                'filetypes': self.filetypes_numbers()}
        return dict(spam, **self.unit_statistics()) # **self.filetypes_numbers(),
