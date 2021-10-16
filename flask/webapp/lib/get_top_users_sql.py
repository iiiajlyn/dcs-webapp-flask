get_top_users_script = '''SELECT
    u.username,
    count(fs2.file_id),
    sum(fs2.downloaded)
FROM
    dw.users AS u
INNER JOIN
    dw.files_stats AS fs2
ON
u.id = fs2.user_id
WHERE
    fs2.unit_id = :_units
GROUP BY
    u.username
ORDER BY
    sum DESC
LIMIT 10;'''
