SELECT pizza_name, p.name AS pizzeria_name
FROM person_order AS po
INNER JOIN menu 
	ON menu.id = po.menu_id 
INNER JOIN person 
	ON person.id = po.person_id
INNER JOIN pizzeria AS p 
	ON p.id = menu.pizzeria_id
WHERE person.name IN ('Denis', 'Anna')
ORDER BY pizza_name, pizzeria_name;

