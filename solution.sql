-- Section1
select c.name, c.phone
from customers c
join orders o on c.id = o.customer_id
group by c.id,c.name, c.phone
order by count(*) desc
limit 1;

-- Section2
select f.id,f.name
from foods f
join restaurant_foods rf on f.id = rf.food_id
join orders o on rf.id = o.restaurant_food_id
group by f.id,f.name
order by avg(rate) desc,f.id
limit 10;

-- Section3
select r.id,r.name
from restaurants r
join restaurant_foods rf on r.id = rf.restaurant_id
join orders o on rf.id = o.restaurant_food_id
group by r.id,r.name
order by avg(rate)desc,r.id
limit 10;

-- Section4
    your 4th query here
