from datetime import datetime as dt

def get_sitemap_unit_page(units, posts):
    spam = []
    for unit in units:
        url = unit[0].replace('/', '').replace(
            '.', '').replace(' ', '-').replace('--', '-').lower()
        url = f'stats/{url}.html'
        last_modified = unit[1].isoformat()
        spam.append({
            'page': url,
            'modified': last_modified
        })
    for post in posts:
        spam.append({
            'page': f'blog/{post[1]}',
            'modified': f'{dt.strftime(post[2], "%Y-%m-%d")}'
        })
    return spam
