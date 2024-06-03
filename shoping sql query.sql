select * from customers

select * from products

select * from orders

select * from reviews

-- 1) group by,having, order by 

select customer_name , address ,min(age) from customers
group by customer_name , address
having min(age) > 30
order by min(age)

------------------------------------------------------------------------------
-- 2) join , having , group by 

select c.customer_name,c.age,c.city,p.product_name,p.price, p.brand from customers as c
inner join products as p
on c.customer_id = p.product_id
group by  c.customer_name,c.age,c.city,p.product_name,p.price, p.brand 
having c.age > 30

-------------------------------------------------------------------------------
-- 3) window function 
-- a) window function using rank 

select order_date,status,
rank() over(
	partition by status 
	order by order_id
), total_amount,payment_method
from orders


-- b) window function using row number

select country, Row_number()
over(
	partition by country	
  )
from customers


-- c) window function using dense rank

select category, price, DENSE_RANK()
over(partition by category
	order by price DESC ) from products
where price Between 50 AND 500


--------------------------------------------------------------------------------
-- 4) subquery

select * from customers where customer_id in (
   select distinct product_id from products where price = 50
)

--------------------------------------------------------------------------------
-- 5) join with where

select * from customers as c
inner join products as p
on c.customer_id = p.product_id
inner join orders as ord 
on p.product_id = ord.order_id
inner join reviews as rev
on ord.order_id = rev.review_id
where country  =  'Brazil'

---------------------------------------------------------------------------------
-- 6) 3 table join

select * from customers as c
inner join products as p
on c.customer_id = p.product_id
inner join orders as ord 
on p.product_id = ord.order_id

---------------------------------------------------------------------------------
-- 7) create a new table using select query 

create table customer_copy as 
select customer_name,age,phone_number,email, address,city from customers

select * from customer_copy
























