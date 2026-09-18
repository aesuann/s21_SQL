select
    pizza_name as pizza_name
from menu
union
select
    pizza_name as pizza_name
from menu
order by pizza_name desc;