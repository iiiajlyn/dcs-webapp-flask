from webapp.lib.slug_unit_dict import slug_item
from webapp.services.common_services import get_thousands

class UnitStats:

    def __init__(self, unit_id):
        self.unit_id = unit_id

    def get_total_downloads(self, result):
        return get_thousands(result[0])

    def get_main_graph_stats(self, result, years):
        PERIOD = 0
        YEAR = 1
        DOWNLOADS = 2
        FILES = 3
        eggs = {
            'period': [],
            'downloads': [],
            'files': [],
        }
        for row in result:
            try:
                if years == 'YEAR':
                    eggs['period'].append(int(row[PERIOD]))
                else:
                    eggs['period'].append(f'{int(row[PERIOD])}/{int(row[YEAR])}')
            except (IndexError, ValueError):
                unit = row[PERIOD]
                units_wo_spaces = {
                    'Bf 109 K-4 Kurfurst': 'Bf 109K',
                    'Christen Eagle II': 'C.Eagle',
                    'Fw 190 A-8 Anton': 'Fw 190A8',
                    'Fw 190 D-9 Dora': 'Fw 190D9',
                }
                if unit not in {x for x in units_wo_spaces.keys()}:
                    eggs['period'].append(unit.split()[0])
                else:
                    eggs['period'].append(units_wo_spaces[unit])
                eggs['downloads'].append(int(row[DOWNLOADS - 1]))
                eggs['files'].append(int(row[FILES - 1]))
            else:
                eggs['downloads'].append(int(row[DOWNLOADS]))
                eggs['files'].append(int(row[FILES]))
        return eggs

    def get_popular_units(self, pop_units):
        pop_units = dict(pop_units)
        if self.unit_id in set(pop_units.keys()):
            return pop_units[self.unit_id]

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
