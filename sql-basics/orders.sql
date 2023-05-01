-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

create table orders (
    id serial primary key,
    person_id integer,
    product_name varchar(30),
    product_price float,
    quantity integer
);


-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.

insert into orders (person_id, product_name, product_price, quantity)
values (1, 'pack of batteries', 49.99, 1),
       (2, 'earphones', 39.99, 2),
       (3, 'cast iron skillet', 29.99, 2),
       (4, 'pack of noodles', 19.99, 2),
       (5, 'lighter', 9.99, 1);



-- Select all the records from the orders table.

select * from orders;


-- Calculate the total number of products ordered.

select sum(quantity)
as product_total
from orders;

-- Calculate the total order price.

select sum(product_price * quantity)
as price_total 
from orders;

-- Calculate the total order price by a single person_id.

select sum(product_price * quantity)
as price_total
from orders
where person_id = 1;


