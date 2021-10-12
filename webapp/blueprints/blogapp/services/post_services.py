from datetime import datetime as dt

def get_post_comments(comments):
    spam = []
    for com in comments:
        spam.append({
            'author': com.comment_author,
            'comment_date': dt.strftime(com.comment_date, '%Y-%m-%d'),
            'comment_content': com.comment_content
        })
    print(spam)
    return spam
