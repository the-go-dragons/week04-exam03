-- Section1
SELECT name, phone FROM customers
JOIN orders on customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY COUNT(orders.customer_id) DESC
LIMIT 1;
-- Section2
select restaurant_foods.food_id as id, foods.name as name from orders
JOIN restaurant_foods on orders.restaurant_food_id = restaurant_foods.id
JOIN foods on restaurant_foods.food_id = foods.id
group by restaurant_foods.food_id
order by avg(orders.rate) DESC, restaurant_foods.food_id
LIMIT 10;
-- Section3
select restaurant_foods.restaurant_id as id, restaurants.name as name from orders
JOIN restaurant_foods on orders.restaurant_food_id = restaurant_foods.id
JOIN restaurants on restaurant_foods.restaurant_id = restaurants.id
group by restaurant_foods.restaurant_id
order by avg(orders.rate) DESC, restaurant_foods.restaurant_id
LIMIT 10;
-- Section4
-- TODO