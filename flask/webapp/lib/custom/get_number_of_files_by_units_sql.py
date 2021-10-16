get_number_of_files_by_units_script = '''SELECT
    u.unit_name,
    sum(fs2.downloaded) AS sum_downloaded
FROM
    dw.units AS u
INNER JOIN
    dw.files_stats AS fs2
ON
    u.id = fs2.unit_id
WHERE
    u.unit_name NOT IN ('Other', 'Camera', 'Vehicle')
GROUP BY
    u.unit_name
ORDER BY
    sum_downloaded DESC;'''
