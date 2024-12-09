SELECT DISTINCT po.order_date AS action_date,
                person.name   AS person_name
FROM person_order AS po
         JOIN person_visits AS pv ON po.order_date = pv.visit_date
         JOIN person ON po.person_id = person.id
ORDER BY action_date ASC, person_name DESC;

