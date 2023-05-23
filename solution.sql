-- Section1
SELECT
  c.name,
  c.phone
FROM
  customers c
  INNER JOIN orders o ON c.id = o.customer_id
  INNER JOIN restaurant_foods rf ON rf.id = o.restaurant_food_id
GROUP BY
  c.name,
  c.phone
ORDER BY
  count(o.id) DESC,
  count(rf.restaurant_id) DESC
LIMIT
  1;

-- Section2
SELECT
  f.id,
  f.name
FROM
  orders o
  INNER JOIN restaurant_foods rf ON rf.id = o.restaurant_food_id
  INNER JOIN foods f ON rf.food_id = f.id
GROUP BY
  f.id,
  f.name
ORDER BY
  avg(o.rate) DESC,
  f.id
LIMIT
  10;

-- Section3
SELECT
  r.id,
  r.name
FROM
  orders o
  INNER JOIN restaurant_foods rf ON rf.id = o.restaurant_food_id
  INNER JOIN restaurants r ON rf.restaurant_id = r.id
GROUP BY
  r.id,
  r.name
ORDER BY
  avg(o.rate) DESC,
  r.id
LIMIT
  10;

-- Section4
SELECT
  c.name,
  c.phone
FROM
  customers c
  INNER JOIN orders o ON c.id = o.customer_id
  INNER JOIN restaurant_foods rf ON rf.id = o.restaurant_food_id
GROUP BY
  c.name,
  c.phone
HAVING
  count(DISTINCT rf.restaurant_id) >= 5
ORDER BY
  c.name;
