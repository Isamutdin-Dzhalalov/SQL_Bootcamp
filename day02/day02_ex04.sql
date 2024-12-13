SELECT m.pizza_name, p.name AS pizzeria_name, m.price
FROM pizzeria AS p
INNER JOIN menu AS m
	ON m.pizzeria_id = p.id
WHERE m.pizza_name IN('mushroom pizza', 'pepperoni pizza')
ORDER BY m.pizza_name, pizzeria_name;

