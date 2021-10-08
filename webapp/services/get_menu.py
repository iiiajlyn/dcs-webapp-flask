'''Create items for menu.'''

from os import path

def get_menu_titles(menu_titles: list) -> dict:
    '''Summary of get_menu_titles.

    Args:
        menu_titles |list| object with unit names and unit types
    '''
    menu_dict = {'Helicopter': [],
                'Jet': [],
                'Trainer': [],
                'WWII': [],
                }
    for menu in menu_titles:
        menu_type = menu.unit_type_name
        subitem_text = menu.unit_name
        _unit = subitem_text.replace('/', '').replace(
            '.', '').replace(' ', '-').replace('--', '-').lower()
        subitem_img = path.join('img', 'icons', f'{_unit}-icon.png')
        subitem_url = f'{_unit}.html'
        menu_dict[menu_type].append({
            'text': subitem_text,
            'img': subitem_img,
            'url': subitem_url
        })
    spam = {}
    for _type in menu_dict.keys():
        spam[_type] = sorted(menu_dict[_type], key=lambda _unit: _unit['text'])
    return spam
