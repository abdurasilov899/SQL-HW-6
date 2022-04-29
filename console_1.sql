-- 1 --
SELECT *
FROM customer
WHERE country = 'Canada';

-- 2 --
SELECT DISTINCT country
FROM customer;

-- 3 --
SELECT count(id)
FROM orders;

-- 4 --
SELECT MAX(total_amount)
FROM orders;

-- 5 --
SELECT SUM(total_amount)
FROM orders;

-- 6 --
SELECT *
FROM orders
WHERE order_date between '2014-01-01 ' and '2014-12-31';

-- 7 --
SELECT avg(total_amount)
FROM orders;

-- 8 --
SELECT customer_id, avg(total_amount)
FROM orders
group by customer_id;

-- 9 --
SELECT *
FROM customer
WHERE country IN ('Brazil', 'Spain');

-- 10 --
SELECT *
FROM orders
WHERE order_date between '2013-01-01' and '2014-01-01'
  and total_amount < 100.00;
--??--
-- 11 --
SELECT *
FROM customer
WHERE country IN ('Germany', 'Spain', 'Italy', 'France')
ORDER BY country;
--??--
-- 12 --
SELECT customer.country
FROM customer,
     supplier
where customer.country like supplier.country
group by customer.country, supplier.country;
-- 13 --
SELECT *
FROM customer
WHERE first_name LIKE 'Jo%';
-- 14 --
SELECT *
FROM customer
WHERE first_name like '___a';
-- 15 --
SELECT country, count(id)
FROM customer
group by country;
-- 16 --
SELECT country, count(id)
FROM customer
group by country
order by count(id) desc;
-- 17 --
SELECT sum(total_amount), customer_id, count(*)
from orders
group by customer_id
order by sum(total_amount);
-- 18 --
SELECT sum(total_amount),customer_id,count(*)
from orders
join order_item oi on orders.id = oi.order_id
where quantity > 20
group by customer_id;