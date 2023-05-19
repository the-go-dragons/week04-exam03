-- Section1
select c.name,c.phone from customers c
    inner  join orders o on c.id = o.customer_id
     inner join restaurant_foods rf on rf.id = o.restaurant_food_id
                    group by c.name, c.phone
order by count(o.id) desc, count(rf.restaurant_id)  desc
 limit 1;

-- Section2
    select f.id,f.name from  orders o
     inner join restaurant_foods rf on rf.id = o.restaurant_food_id
     inner join foods f on rf.food_id = f.id
                    group by f.id,f.name
order by avg(o.rate) desc, f.id
 limit 10;
-- Section3
   select r.id,r.name from  orders o
     inner join restaurant_foods rf on rf.id = o.restaurant_food_id
     inner join restaurants r on rf.restaurant_id = r.id
                    group by r.id,r.name
order by avg(o.rate) desc, r.id
 limit 10; 
-- Section4
  select c.name,c.phone  from customers c
    inner  join orders o on c.id = o.customer_id
     inner join restaurant_foods rf on rf.id = o.restaurant_food_id
            group by c.name,c.phone
            having  COUNT(DISTINCT rf.restaurant_id)>=5
order by c.name;
