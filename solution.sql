-- Section1
    select c.name, c.phone
    from customers c
    join orders o on c.id = o.customer_id
    group by c.id,c.name, c.phone
    order by count(*) desc
    limit 1;
-- Section2
    your 2nd query here
-- Section3
    your 3rd query here
-- Section4
    your 4th query here
