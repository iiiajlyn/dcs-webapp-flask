import datetime as dt

from flask import render_template, Blueprint, request

from webapp import db
from webapp.lib.slug_unit_dict import slug_item
from webapp.lib.get_filetypes_sql import get_filetypes_script
from webapp.lib.get_top_users_sql import get_top_users_script
from webapp.lib.get_files_by_date_sql import get_files_by_date_script
# TODO: Delete custom scripts
from webapp.lib.custom.get_filetypes_sql import get_filetypes_main
from webapp.lib.custom.get_top_users_sql import get_top_users_main
from webapp.lib.custom.get_files_by_date_sql import get_files_by_date_main
from webapp.models import (Developers, FilesStats, FileTypes, Units, UnitTypes,
                           Users)

from webapp.services.get_menu import get_menu_titles
from webapp.services.get_page_background import get_background
from webapp.services.get_page_stats import UnitStats
from webapp.services.get_units_statistics import get_units_stats

def menu_dict():
    menu_titles = Units.query.join(
        UnitTypes, Units.unit_type_id==UnitTypes.id
    ).add_columns(Units.unit_name, UnitTypes.unit_type_name).all()
    return get_menu_titles(menu_titles)

def page_background(slug):
    return get_background(slug)

class StatsController:

    def __init__(self, slug):
        self.slug = slug
        self.unit_title = self.get_unit_title()
        self.unit_id  = self.get_unit_id()
        self.main_graph_period = self.get_main_graph_period()
        self.unit_stats = UnitStats(self.unit_id)

    def get_unit_title(self):
        if not self.slug:
            return 'Common'
        return slug_item[self.slug]

    def get_unit_id(self):
        if self.unit_title != 'Common':
            return Units.query.where(
                Units.unit_name == self.unit_title).first().id
        ids = Units.query.add_columns(Units.id).all()
        spam = []
        for _id in ids:
            spam.append(_id.id)
        return spam

    def get_main_graph_period(self):
        if self.slug:
            max_date = db.session.query(db.func.max(
                FilesStats.publishing_date)).where(
                    FilesStats.unit_id == self.unit_id).first()[0]
            min_date = db.session.query(db.func.min(
                FilesStats.publishing_date)).where(
                    FilesStats.unit_id == self.unit_id).first()[0]
            delta_date = max_date - min_date
            if delta_date < dt.timedelta(days=700):
                return 'MONTH'
        return 'YEAR'

    def unit_statistics(self):
        if self.slug:
            total_files = FilesStats.query.where(
                FilesStats.unit_id == self.unit_id).count()

            total_downloads = db.session.query(db.func.sum(
                FilesStats.downloaded)).where(
                    FilesStats.unit_id == self.unit_id).first()
            total_downloads = self.unit_stats.get_total_downloads(
                total_downloads)

            total_users = db.session.query(db.func.count(
                db.func.distinct(FilesStats.user_id))).where(
                    FilesStats.unit_id == self.unit_id).first()[0]

            last_upload_date = db.session.query(db.func.max(
                FilesStats.publishing_date)).where(
                    FilesStats.unit_id == self.unit_id).first()[0]
        else:
            total_files = FilesStats.query.add_column(
                FilesStats.file_id).count()

            total_downloads = db.session.query(db.func.sum(
                FilesStats.downloaded)).first()
            total_downloads = self.unit_stats.get_total_downloads(total_downloads)

            total_users = db.session.query(db.func.count(
                db.func.distinct(FilesStats.user_id))).first()[0]

            last_upload_date = db.session.query(db.func.max(
                FilesStats.publishing_date)).first()[0]

        if self.slug:
            main_graph = db.session.execute(
                get_files_by_date_script,
                {'_units': self.unit_id,
                '_date_part': self.main_graph_period}
            ).all()
        else:
            main_graph = db.session.execute(get_files_by_date_main).all()

        main_graph = self.unit_stats.get_main_graph_stats(
            main_graph,
            self.main_graph_period
            )

        result = {
            'unit_title': self.unit_title,
            'total_files': total_files,
            'total_downloads': total_downloads,
            'total_users': total_users,
            'last_upload_date': last_upload_date,
            'main_graph': {**main_graph, 'graph_type': 'line'}
        }
        return result

    def filetypes_numbers(self):
        if self.slug:
            file_types = db.session.execute(
                get_filetypes_script,
                {'_units': self.unit_id}).all()
        else:
            file_types = db.session.execute(
                get_filetypes_main).all()
        return self.unit_stats.get_filetypes_qty(file_types)

    def top_users(self):
        try:
            if self.slug:
                result = db.session.execute(
                    get_top_users_script,
                    {'_units': self.unit_title})
            else:
                result = db.session.execute(get_top_users_main)
        except KeyError:
            return 404
        return self.unit_stats.get_top_users(result)

    def __call__(self):
        spam = {'top_users': self.top_users(),
                'filetypes': self.filetypes_numbers()}
        return dict(spam, **self.unit_statistics())
