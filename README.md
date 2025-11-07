SELECT distinct location.location_id , visits.source_id, province_name,type_of_water_source, number_of_people_served,visit_count,town_name
FROM visits
JOIN location on visits.location_id = location.location_id
JOIN water_source ON visits.source_id = water_source.source_id;

SELECT distinct location.location_id , visits.source_id, province_name,type_of_water_source, number_of_people_served,visit_count,town_name
FROM visits
JOIN location on visits.location_id = location.location_id
JOIN water_source ON visits.source_id = water_source.source_id
WHERE visits.location_id = 'AkHa00103'
order by number_of_people_served desc;


SELECT distinct location.location_id , visits.source_id, province_name,type_of_water_source, number_of_people_served,visit_count,town_name
FROM visits
JOIN location on visits.location_id = location.location_id
JOIN water_source ON visits.source_id = water_source.source_id
WHERE visits.visit_count = 1;

SELECT  location_type,time_in_queue, province_name,type_of_water_source, number_of_people_served,town_name
FROM visits
JOIN location on visits.location_id = location.location_id
JOIN water_source ON visits.source_id = water_source.source_id
WHERE visits.visit_count = 1;

−− This table assembles data from different tables into one to simplify analysis
SELECT
water_source.type_of_water_source,
location.town_name,
location.province_name,
location.location_type,
water_source.number_of_people_served,
visits.time_in_queue,
well_pollution.results
FROM
visits
LEFT JOIN
well_pollution
ON well_pollution.source_id = visits.source_id
INNER JOIN
location
ON location.location_id = visits.location_id
INNER JOIN
water_source
ON water_source.source_id = visits.source_id
WHERE
visits.visit_count = 1;

−− This table assembles data from different tables into one to simplify analysis

CREATE VIEW combined_analysis_table AS
−− This view assembles data from different tables into one to simplify analysis
SELECT
water_source.type_of_water_source AS source_type,
location.town_name,
location.province_name,
location.location_type,
water_source.number_of_people_served AS people_served,
visits.time_in_queue,
well_pollution.results
FROM
visits
LEFT JOIN
well_pollution
ON well_pollution.source_id = visits.source_id
INNER JOIN
location
ON location.location_id = visits.location_id
INNER JOIN
water_source
ON water_source.source_id = visits.source_id
WHERE
visits.visit_count = 1;

