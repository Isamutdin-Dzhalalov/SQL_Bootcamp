SELECT day::date from GENERATE_SERIES(timestamp '2022-01-01', '2022-01-10', '1 day') as day
LEFT JOIN (
SELECT * FROM person_visits pv
WHERE pv.person_id = 1 OR pv.person_id = 2
) new_table ON day = new_table.visit_date
WHERE visit_date IS NULL
ORDER BY visit_date ASC;

