-- List all employee first and last names only that live in Calgary.

select firstName, lastName
from employees
where City = 'Calgary';

-- Find the birthdate for the youngest employee.

select min(birthdate) 
from employees;

-- Find the birthdate for the oldest employee.

select max(birthdate) 
from employees;

-- Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards

select firstName, lastName
from employees
where ReportsTo = (
    select employeeId 
    from employees
    where firstName = 'Nancy'
    and lastName = 'Edwards'
);

-- Count how many people live in Lethbridge.

select count(*) 
from employees 
where City = 'Lethbridge'