from flask import render_template, Blueprint, request
from webapp.services.get_menu import get_menu_titles
from webapp.services.get_page_background import get_background

from webapp import db
from webapp.models import Developers, Units, UnitTypes


def menu_dict():
    menu_titles = Units.query.join(
        UnitTypes, Units.unit_type_id==UnitTypes.id
    ).add_columns(Units.unit_name, UnitTypes.unit_type_name).all()
    return get_menu_titles(menu_titles)

def unit_stats(slug):
    return slug

def get_backround(slug):
    return get_background(slug)

