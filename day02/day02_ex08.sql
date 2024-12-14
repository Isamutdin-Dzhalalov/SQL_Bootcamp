SELECT p.name FROM person AS p
JOIN person_order AS po oN po.person_id = p.id
JOIN menu AS m ON m.id = po.menu_id
WHERE p.gender = 'male' 
	AND (p.address = 'Moscow' OR p.address = 'Samara') 
	AND (m.pizza_name = 'pepperoni pizza' OR m.pizza_name = 'mushroom pizza')
ORDER BY name DESC;

