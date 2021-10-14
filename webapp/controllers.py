'''Controllers for webapp.'''
import datetime as dt


from webapp import db
from webapp.lib.slug_unit_dict import slug_item
from webapp.lib.get_filetypes_sql import get_filetypes_script
from webapp.lib.get_top_users_sql import get_top_users_script
from webapp.lib.get_files_by_date_sql import get_files_by_date_script
from webapp.lib.get_popular_units_sql import get_popular_units_script
from webapp.lib.get_last_modified_sql import last_modified_script
# TODO: Delete custom scripts
from webapp.lib.custom.get_filetypes_sql import get_filetypes_main
from webapp.lib.custom.get_files_by_date_sql import get_files_by_date_main
from webapp.lib.custom.get_number_of_files_by_units_sql import get_number_of_files_by_units_script
from webapp.lib.custom.get_top_users_sql import get_top_users_main
from webapp.models import FilesStats, Posts, Units, UnitTypes

from webapp.services.get_menu import get_menu_titles
from webapp.services.get_page_background import get_background
from webapp.services.get_page_stats import UnitStats
from webapp.services.get_sitemap_unit import get_sitemap_unit_page

def menu_dict():
    '''Return menu items.'''
    menu_titles = Units.query.join(
        UnitTypes, Units.unit_type_id==UnitTypes.id
    ).add_columns(Units.unit_name, UnitTypes.unit_type_name).all()
    return get_menu_titles(menu_titles)

def page_background(slug):
    return get_background(slug)

def get_sitemap():
    spam = []
    units = db.session.execute(last_modified_script).all()
    posts = Posts.query.order_by(db.asc(Posts.post_date)
                                 ).add_columns(Posts.slug, Posts.post_date).all()
    pages = get_sitemap_unit_page(units, posts)
    return pages

class StatsController:
    '''StatsController return statistics.'''

    def __init__(self, slug):
        self.slug = slug
        self.unit_title = self.get_unit_title()
        self.description = self.get_unit_description()
        self.unit_id  = self.get_unit_id()
        self.main_graph_period = self.get_main_graph_period()
        self.unit_stats = UnitStats(self.unit_id)

    def get_unit_title(self):
        if not self.slug:
            return 'Common'
        return slug_item[self.slug]

    def get_unit_description(self):
        if not self.slug:
            return 'Common Dashboard of all units in Digital Combat Simulator.'
        return f'{self.unit_title} Dashboard.'

    def get_unit_id(self):
        if self.unit_title != 'Common':
            return Units.query.where(
                Units.unit_name == self.unit_title).first_or_404().id
        ids = Units.query.add_columns(Units.id).all()
        spam = []
        for _id in ids:
            spam.append(_id.id)
        return spam

    def get_main_graph_period(self):
        '''Method return date period for main graph.'''
        if self.slug:
            max_date = db.session.query(db.func.max(
                FilesStats.publishing_date)).where(
                    FilesStats.unit_id == self.unit_id).first_or_404()[0]
            min_date = db.session.query(db.func.min(
                FilesStats.publishing_date)).where(
                    FilesStats.unit_id == self.unit_id).first_or_404()[0]
            delta_date = max_date - min_date
            if delta_date < dt.timedelta(days=700):
                return 'MONTH'
        return 'YEAR'

    def unit_statistics(self):
        '''Method return unit statistics.'''
        if self.slug:
            total_files = FilesStats.query.where(
                FilesStats.unit_id == self.unit_id).count()

            total_downloads = db.session.query(db.func.sum(
                FilesStats.downloaded)).where(
                    FilesStats.unit_id == self.unit_id).first_or_404()
            total_downloads = self.unit_stats.get_total_downloads(
                total_downloads)

            total_users = db.session.query(db.func.count(
                db.func.distinct(FilesStats.user_id))).where(
                    FilesStats.unit_id == self.unit_id).first_or_404()[0]

            last_upload_date = db.session.query(db.func.max(
                FilesStats.publishing_date)).where(
                    FilesStats.unit_id == self.unit_id).first_or_404()[0]
        else:
            total_files = FilesStats.query.add_column(
                FilesStats.file_id).count()

            total_downloads = db.session.query(db.func.sum(
                FilesStats.downloaded)).first_or_404()
            total_downloads = self.unit_stats.get_total_downloads(
                total_downloads)

            total_users = db.session.query(db.func.count(
                db.func.distinct(FilesStats.user_id))).first_or_404()[0]

            last_upload_date = db.session.query(db.func.max(
                FilesStats.publishing_date)).first_or_404()[0]

        unit_popularity = ''

        if self.slug:
            main_graph = db.session.execute(
                get_files_by_date_script,
                {'_units': self.unit_id,
                '_date_part': self.main_graph_period}
            ).all()

            unit_popularity = db.session.execute(
                get_popular_units_script).all()
            unit_popularity = self.unit_stats.get_popular_units(unit_popularity)
        else:
            main_graph = db.session.execute(
                get_number_of_files_by_units_script).all()

        main_graph = self.unit_stats.get_main_graph_stats(
            main_graph,
            self.main_graph_period
            )
        graph_type = 'line' if self.slug else 'bar'

        result = {
            'unit_title': self.unit_title,
            'total_files': total_files,
            'total_downloads': total_downloads,
            'total_users': total_users,
            'last_upload_date': last_upload_date,
            'main_graph': {**main_graph, 'graph_type': graph_type},
            'release_date': unit_popularity
        }
        return result

    def filetypes_numbers(self):
        '''Method get numbers of filetypes.'''
        if self.slug:
            file_types = db.session.execute(
                get_filetypes_script,
                {'_units': self.unit_id}).all()
        else:
            file_types = db.session.execute(
                get_filetypes_main).all()
        return self.unit_stats.get_filetypes_qty(file_types)

    def top_users(self):
        '''Method return top 10 username.'''
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
                'filetypes': self.filetypes_numbers(),
                'description': f'{self.description}'}
        return dict(spam, **self.unit_statistics())
