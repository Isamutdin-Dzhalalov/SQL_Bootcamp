SELECT 
    m.pizza_name,
    m.price,
    pi.name as pizzeria_name
FROM 
    menu m
JOIN 
    pizzeria pi ON m.pizzeria_id = pi.id
LEFT JOIN 
    person_order po ON m.id = po.menu_id
WHERE 
    po.order_date IS NULL
ORDER BY 
    m.pizza_name,
    m.price;
