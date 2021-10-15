import re

def slugify(title: str) -> str:
    pattern = r'[^\w+]'
    slug = re.sub(pattern, '-', title).lower()
    return slug.replace('--', '-')

def get_thousands(number: int) -> str:
    str_num = str(number)
    if number > 1000000:
        str_num = str(round(number / 1000000, 1)) + 'M'
    elif 1000 < number < 1000000:
        str_num = str(round(number / 1000, 1)) + 'K'
    return str_num
