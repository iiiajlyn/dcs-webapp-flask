from os import path

from flask_sqlalchemy import SQLAlchemy
from flask import url_for

WEBAPP_PATH = path.dirname(path.dirname(__file__))

def get_menu_titles(menu_titles):
    menu_dict = {'Helicopter': [],
                'Jet': [],
                'Trainer': [],
                'WWII': [],
                }
    for menu in menu_titles:
        menu_type = menu.unit_type_name
        subitem_text = menu.unit_name
        menu_unit = subitem_text.replace('/', '').replace(
            '.', '').replace(' ', '_').lower()
        subitem_img = path.join('img', 'icons', f'{menu_unit}-icon.png')
        page_bkg = path.join('img', 'bkg', f'{menu_unit}-bkg.jpg')
        _bkg_url = url_for('static', filename=page_bkg)
        _url = WEBAPP_PATH + _bkg_url
        if not path.exists(_url):
            page_bkg = path.join('img', 'bkg', 'default-bkg.jpg')
        menu_dict[menu_type].append({
            'text': subitem_text,
            'img': subitem_img,
            'page_bkg': page_bkg
        })
    spam = {}
    for _type in menu_dict.keys():
        spam[_type] = sorted(menu_dict[_type], key=lambda _unit: _unit['text'])
    return spam
