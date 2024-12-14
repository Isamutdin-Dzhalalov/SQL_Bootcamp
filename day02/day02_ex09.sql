SELECT p.name FROM person_order po
JOIN person AS p ON p.id = po.person_id
JOIN menu AS m ON m.id = po.menu_id
WHERE m.pizza_name IN ('pepperoni pizza', 'cheese pizza')
	AND gender = 'female'
GROUP BY p.name 
HAVING COUNT(m.pizza_name) = 2
ORDER BY p.name;
