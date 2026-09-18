SELECT 
    action_date.order_date AS action_date,
    person.name AS person_name
FROM (
    SELECT order_date, person_id FROM person_order
    INTERSECT
    SELECT visit_date, person_id FROM person_visits
) AS action_date
JOIN person ON person.id = action_date.person_id
ORDER BY 1 ASC, 2 DESC;