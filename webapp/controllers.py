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



def menu_dict():
    menu_titles = Units.query.join(
        UnitTypes, Units.unit_type_id==UnitTypes.id
    ).add_columns(Units.unit_name, UnitTypes.unit_type_name).all()
    return get_menu_titles(menu_titles)

def page_background(slug):
    return get_background(slug)

def unit_stats(slug):
    return get_units_stats(slug)

def filetypes_numbers(slug):
    return get_filetypes_num(slug)

def top_users(slug):
    result = db.session.execute(get_top_users_script, {'_unit': slug_item[slug]})
    return get_top_users(result)

