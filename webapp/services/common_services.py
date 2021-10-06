import re

def slugify(title: str) -> str:
    pattern = r'[^\w+]'
    slug = re.sub(pattern, '-', title).lower()
    return slug.replace('--', '-')
