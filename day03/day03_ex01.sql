SELECT m.pizza_name, m.price, pi.name AS pizzeria_name, pv.visit_date 
FROM pizzeria AS pi
JOIN menu AS m ON m.pizzeria_id = pi.id
JOIN person_visits AS pv ON pv.pizzeria_id = pi.id
JOIN person AS p ON p.id = pv.person_id
WHERE p.name = 'Kate' AND m.price BETWEEN 800 AND 1000
	 s21_bootcamp-# ORDER BY m.pizza_name, m.price, pizzeria_name;

