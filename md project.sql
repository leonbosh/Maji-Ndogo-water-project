SELECT 
	REPLACE(employee_name, ' ','.')
FROM employee;

SELECT 
	LOWER(REPLACE(employee_name,' ','.'))
FROM employee;
    
SELECT
	CONCAT(LOWER(REPLACE(employee_name,' ','.'))), '@ndogowater.gov' AS new_email
FROM employee;
 
 
SELECT 
	LENGTH(TRIM(phone_number))
		FROM employee;
        
SELECT 
	town_name,
    COUNT(*) AS employee_count
FROM employee
GROUP BY town_name
ORDER BY 
	employee_count ASC;
    
SELECT 
	assigned_employee_id,
Count(*) AS number_of_visits
FROM visits
group by c

order by 
	number_of_visits desc
limit 3;


SELECT 
	assigned_employee_id,
    count(*) AS task_count
FROM employee
group by assigned_employee_id
order by task_count DESC
LIMIT 3;

SELECT employee_name, phone_number , address
FROM employee
group by
	assigned_employee_id
order by count(*) desc
limit 3;                  

SELECT town_name,
COUNT(*) AS records_per_town
FROM location
group by town_name
order by records_per_town desc;

SELECT province_name,
COUNT(*) AS records_per_province
FROM location
group by province_name
order by records_per_province desc;

SELECT town_name, province_name,
count(*) AS records_per_town
FROM location
group by
	province_name,
    town_name
order by
	province_name asc,
    records_per_town desc;
    
SELECT location_type,
count(*) AS num_sources
FROM location
GROUP BY location_type;
