SELECT pi.name FROM pizzeria pi
JOIN person_visits pv ON pv.pizzeria_id = pi.id
JOIN person p ON p.id = pv.person_id
WHERE gender = 'male'
GROUP BY pi.name

UNION ALL

SELECT pi1.name FROM pizzeria pi1
JOIN person_visits pv1 ON pv1.pizzeria_id = pi1.id
JOIN person p1 ON p1.id = pv1.person_id
WHERE p1.gender = 'female'
GROUP BY pi1.name
HAVING count(*) > 1
 
ORDER BY name;

