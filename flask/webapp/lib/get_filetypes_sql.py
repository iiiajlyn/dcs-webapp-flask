get_filetypes_script = '''SELECT
    ft.file_type_name AS file_type,
    count(fs2.file_id) AS file_type_qty
FROM
    dw.files_stats AS fs2
INNER JOIN
    dw.file_types AS ft
ON
    fs2.file_type_id = ft.id
WHERE
    fs2.unit_id = :_units
GROUP BY
    ft.file_type_name
ORDER BY
    file_type_qty DESC;'''
