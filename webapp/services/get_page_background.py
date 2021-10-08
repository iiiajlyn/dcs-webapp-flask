'''Return link on bacground for stat page.'''
from os import path

from flask import url_for

WEBAPP_PATH = path.dirname(path.dirname(__file__))

def get_background(slug: str) -> str:
    '''Summary of get_bacground.

    Args:
        slug |str| slug of unit.
    '''
    default_bkg = path.join('img', 'bkg', 'default-bkg.jpg')
    try:
        unit = slug.split('.')[0]
    except AttributeError:
        return default_bkg
    else:
        page_bkg = path.join('img', 'bkg', f'{unit}-bkg.jpg')
        _bkg_url = url_for('static', filename=page_bkg)
        _url = WEBAPP_PATH + _bkg_url
        if path.exists(_url):
            return page_bkg
    return default_bkg
