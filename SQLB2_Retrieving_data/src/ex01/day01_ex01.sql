select
    subquery.object_name
from (
    select
        person.name as object_name,
        1 as sort_order
    from person
    union all
    select
        menu.pizza_name as object_name,
        2 as sort_order
    from menu
) as subquery
order by subquery.sort_order, subquery.object_name;