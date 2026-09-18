select
    person_order.person_id as person_id
from person_order
where person_order.order_date = '2022-01-07'
except all
select
    person_visits.person_id as person_id
from person_visits
where person_visits.visit_date = '2022-01-07';