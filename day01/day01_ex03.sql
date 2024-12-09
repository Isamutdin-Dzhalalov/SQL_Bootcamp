SELECT 
    order_date AS action_date,
    person_id
FROM 
    person_order
WHERE 
    person_id IN (
        SELECT person_id 
        FROM person_visits 
        WHERE visit_date IN (SELECT order_date FROM person_order)
    )
ORDER BY 
    action_date ASC, 
    person_id DESC;

