get_last_modified_script = '''SELECT
    u.unit_name,
    max(fs2.publishing_date)
FROM
    dw.units AS u
INNER JOIN
    dw.files_stats AS fs2
ON
    u.id = fs2.unit_id
GROUP BY
    u.unit_name;'''
