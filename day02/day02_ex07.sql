SELECT p.name FROM person_visits AS pv
JOIN person 
	ON person.id = pv.person_id
JOIN menu 
	ON menu.pizzeria_id = pv.pizzeria_id
JOIN pizzeria AS p 
	ON p.id = menu.pizzeria_id
WHERE person.name = 'Dmitriy' 
	AND pv.visit_date = '2022-01-08' 
	AND menu.price < 800;
