SELECT id, name, CASE 
	WHEN age > 20 
	AND age < 24 THEN 'interval #2' 
	ELSE 'interval #3'
AND AS interval_info
FROM person
ORDER BY interval_info;
