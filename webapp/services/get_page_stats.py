from webapp.lib.slug_unit_dict import slug_item
from webapp.services.common_services import get_thousands

class UnitStats:

    def __init__(self, unit_id):
        self.unit_id = unit_id

    def get_total_downloads(self, result):
        return get_thousands(result[0])

    def get_filetypes_qty(self, result):
        eggs = {
            'types': [],
            'value': []}
        for row in result:
            eggs['types'].append(row[0])
            eggs['value'].append(row[1])
        return eggs

    def get_top_users(self, result):
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
