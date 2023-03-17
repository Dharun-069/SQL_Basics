-- SQL is case insensitive
/*
We will follow:
UPPERCASE: keywords
LOWERCASE: one -keywords
*/
USE store;
use store;
SHOW TABLES;
use exercise_hr;
SHOW TABLES;
use store;
select *
from customers
order by first_name;
use store;
select *
from customers
order by   first_name desc;
use exercise_hr;
select *
from employees
order by first_name;
select 1,2;
select 1+2;
select 100 - 50/2;
/*
SELECT 
from <table_name>
select *   -- for all columns
from <table_name>
*/
USE store;
SELECT first_name
FROM customers;
select first_name, last_name, points, points+10
from customers;
select first_name, last_name, points, points+10 AS new_points
from customers;
use exercise_hr;
select 171*214+625;
select first_name as 'first name',last_name as 'last name'
from employees;
select first_name, last_name,salary, salary *15/100 as pf
from employees;
use store;
select distinct state 
from customers;
use store;
select name,unit_price, 1.1* unit_price as 'new price'
from products;
/*
comparison operators
>
>=
<
<=
=
!= or <>alter
*/
select *
from customers;
select *
from customers
WHERE state = 'fl';
select *
from customers
WHERE POINTS> 3000;
select *
from customers
WHERE PHONE = 781-932-9754;
select *
from customers
WHERE POINTS> 3000 AND  Phone = "312-480-8498";
select *
from customers
WHERE POINTS>1000 AND birth_date>"1899" or state="va";
/* 
customers living in FL or VA or GA */
use store;
select *
from customers
where state = "FL" OR  state = "VA" OR state = "GA";
use store;
select *
from PRODUCTS
where quantity_in_stock in (49,38,72);
/* 
order of logical operators 
-not
-and
-or
*/
select * from customers;
select *
from customers
where address like '%trail%'  OR  address like '%avenue%';
-- and phone like "%9" and phone not like "%9"
-- where last_name like "%y"
-- where birth_date between "1990-01-01" and "2000-01-01";
-- where points between 3000 and 10000 
-- where points>3000 and points<10000 
use store;
-- select last_name
-- from customers;
select *
from customers
-- where last_name like "m%y"
where last_name regexp "acc";
/*
^ - Starts with
$ - ends with
| - logical OR
*/
use store;
select *
from customers
where last_name regexp "^mac|field$|rose";
select *
from customers
where last_name regexp "[bc]e";
select *
from employees
where first_name regexp  "b|c";
use exercise_hr;
select *
from employees
where first_name like "%b%" and first_name like "%c%";
use store;
select *
from orders
where shipper_id is null
limit 0,3;
/*-----3 loyal customers----*/
select *
from customers
order by points desc
limit 0,3;
/*---------------------*/
use exercise_hr;
 select *
from employees
order by last_name;
use exercise_hr;
select department_id
from departments
where department_name like "it";
select *
from employees
where department_id like 60;
-- select *
--  from employees inner join departments
--  on employees.department_id =  departments.department_id
use exercise_hr;
select *
 from employees inner join departments
 on employees.department_id =  departments.department_name
 
 use exercise_hr;
select first_name, last_name, department_id
from employees;

use exercise_hr;
select job_title 
from jobs inner join employees on jobs.min_salary=employees.salary;
select first_name from employees inner join departments on employees.department_id=departments.department_id;

use exercise_hr;
 INSERT INTO jobs (job_title)
 SELECT first_name from employees
 WHERE salary between min_salary;


SELECT employee_id, job_title, end_date - start_date Days FROM job_history
NATURAL JOIN jobs
WHERE department_id=90;

use exercise_hr; 
select job_title, first_name and salary between min_salary
 from employees inner join jobs on employees.job_id=jobs.job_id
where job_title, first_name and salary between min_salary;

USE exercise_hr;

SELECT first_name,last_name,department_id,department_name
FROM employees
NATURAL JOIN departments;


SELECT first_name,job_title,salary-min_salary AS Difference
FROM employees
NATURAL JOIN jobs;

SELECT *
FROM customers
WHERE state ='FL' ;
USE store;
SELECT *
FROM customers
WHERE birth_date >= '1990-01-01';

SELECT *
FROM customers
WHERE points > 3000 AND birth_date >= '1990-01-01';

select *
from customers
where points > 3000 or birth_date >= '1990-01-01';

select *
from customers
where state = 'FL' ;

select *
from customers
where state = 'FL' ;

USE store;
show tables;
select * from customers;
select * from customers where state='FL' or state='VA' or state='GA'

USE store ;
SELECT *
FROM products 
WHERE quantity_in_stock IN ( 49, 38, 72 );
select *
 FROM customers
 WHERE birth_date between '1/1/1990' and '1/1/2000' ;

select *
FROM customers;
where poins > 3000 and point < 10000;

select *
FROM customers 
where points between 3000 and 10000;

select *
from customers
where last_name like 'macCaffrey';

select *
from customers
where last_name like '%age%';

select *
from customers
where last_name like 'b%';

select * from customers where address LIKE '%TRAIL%' or address like '%AVENUE%';

select * from customers where phone  like '9%';


use store ;
select *
from customers where last_name like '_____y' ;


use store ;
select *
from customers where last_name like 'b____y' ;

select *
from customers where last_name like 'b%y';


select * from customers where phone  like '9%';

use store ;
select *
from customers where last_name regexp 'age' ;
    
    
    use store ;
select *
from customers
  where last_name regexp '^Mac';
  
      use store ;
select *
from customers
  where last_name regexp 'field$' ;
  
        use store ;
select *
from customers
  where last_name regexp 'mac|field$|rose' ;
  
  /*
  
  ^  - starts with
$ - ends with
| - logical OR
[.] -set

*/                 

--     use exercise_hr ;
--     select *

-- USE store ;
-- select *
-- from customers where last_name regexp '[bc]e' ;

-- select * from customers where last_name regexp '[ff]' || '[qf]' || '[cf]';

-- use exercise_hr ;
-- select * from employees where first_name regexp 'b' and  first_name regexp  'c' ;

use store;
-- select * from orders 

select *
from orders where status=1;

 select * from orders where shipper_id is null;
 
 select * from orders where status=2;
--  use store;
--   select * from orders where shipper_id not null;
  
 -- show first 3 value
 
 use store;
 select * from orders where shippers_id is not null limit 1,3;
 
 -- find last 5 customers
 
 
select *
from customer order by customer_id DESC 
 LIMIT 5;
 
 use store;
 
 select *
 from customers limit 3;
 
 use store;
 select *
 from customers ;
 
 select *
 from employee where last_name = 'De Haan'
