-- Count how many orders were made from the USA.

select count(*)
from orders
where shipfromcountry = 'USA';

-- Find the largest order total amount.

select max(total)
from invoices;

-- Find the smallest order total amount.

select min(total)
from invoices;

-- Find all orders bigger than $5.

select * from invoices
where total > 5;

-- Count how many orders were smaller than $5.

select count(*) 
from invoices
where total < 5;

-- Count how many orders were in CA, TX, or AZ (use IN).

select count(*)
from orders 
where shipfromstate 
in ('CA', 'TX', 'AZ');

-- Get the average total of the orders.

select avg(total)
from invoices;

-- Get the total sum of the orders.

select sum(total)
from invoices;

-- Update the invoice with an invoice_id of 5 to have a total order amount of 24.

update invoices 
set total = 24
where invoice_id = 5;

-- Delete the invoice with an invoice_id of 1.

delete from invoices
where invoice_id = 1;