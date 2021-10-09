'''Convert sql statement with top users to dictionary.'''
from webapp.services.common_services import get_thousands

def get_top_users(result):
    '''Summary of get_top_users.

    Args:
        result |list| Contains tuples with data(username, quantity of users
            files and total downloads.)
    '''
    spam = []
    for row in result:
        spam.append({
            'name': row[0],
            'files': row[1],
            'downloads': get_thousands(row[2])
            })
    return spam
