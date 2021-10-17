get_files_by_date_script = '''WITH num_files AS
(SELECT
    EXTRACT(:_date_part FROM fs2.publishing_date) AS p_date,
    EXTRACT('YEAR' FROM fs2.publishing_date) AS pub_year,
    fs2.downloaded,
    fs2.file_id
FROM
    dw.files_stats AS fs2
WHERE
    fs2.unit_id = :_units
ORDER BY
    p_date)
SELECT
    nf.p_date,
    nf.pub_year,
    sum(nf.downloaded),
    count(nf.file_id)
FROM
    num_files AS nf
GROUP BY
    nf.p_date,
    nf.pub_year
ORDER BY
    nf.pub_year,
    nf.p_date;'''
