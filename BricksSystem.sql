create database project;

use project;

create table BrickInventory(
size int(50),
quantity int(150),
unit_price  float(50),
total_cost float(50),
manufacturer varchar(30),
P_id int(5),
S_id int(5)
);

select*from BrickInventory;

create table Orders(
order_date date,
delivery_date date,
quantity int(150),
total_price float(50),
status char(10),
B_id int(5),
C_id int(5),
E_id int(5)
);
select*from Orders;

create table customers(
C_Name char(20),
email varchar(30),
Address varchar(30),
credit_limit int(15),
payment_history varchar(20),
phone_num varchar(50),
payment_date date,
C_id int(5)
);

select*from customers;

create table sales(
sale_date date,
quantity_sold int(150),
Payment_status char(20)
);

select*from sales;

create table employees(
Ename char(20),
position char(120),
contact_info varchar(15),
salary int(150),
hire_date date,
P_id int(5)
);

select*from employees;

create table transportation(
Driver char(20),
Route char(20),
Departure_time varchar(15),
Arrival_time varchar(15),
mileage char(15),
Fuel_consumption float(50),
E_id int(5)
);
select*from transportation;

create table production(
Quantity_produced int(150),
production_date date,
Manufacturing_plant char(20),
production_cost float(150,1),
E_id int(5),
S_id int(5)
);

select*from production;

create table suppliers(
Sup_name char(20),
contactInfo varchar(15),
Address varchar(20),
payment_terms char(20),
Materials char(30)
);

select*from suppliers;

create table equipment(
etype char(120),
manufacturer char(120),
purchase_date date,
maintenance_history char(120)
);

select*from equipment;

-- BrickInventory
insert into BrickInventory (size, quantity, unit_price, total_cost, manufacturer, P_id, S_id) 
values 
(8, 1000, 0.5, 500, 'ABC Bricks', 1, 1),
(6, 800, 0.4, 320, 'XYZ Bricks', 2, 2),
(4, 1200, 0.3, 360, '123 Bricks', 3, 3),
(10, 600, 0.6, 360, '456 Bricks', 4, 4),
(12, 500, 0.7, 350, '789 Bricks', 5, 5);
select*from BrickInventory;

-- Orders
insert into Orders (order_date, delivery_date, quantity, total_price, status, B_id, C_id, E_id) 
values 
('2024-05-01', '2024-05-10', 200, 150, 'Pending', 1, 1, 1),
('2024-05-02', '2024-05-12', 300, 200, 'Delivered', 2, 2, 2),
('2024-05-03', '2024-05-15', 400, 250, 'Pending', 3, 3, 3),
('2024-05-04', '2024-05-18', 500, 300, 'Delivered', 4, 4, 4),
('2024-05-05', '2024-05-20', 600, 350, 'Pending', 5, 5, 5);
select*from Orders;

-- Customers
insert into customers (C_Name, email, Address, credit_limit, payment_history, phone_num, payment_date, C_id) 
values 
('John Doe', 'john.doe@example.com', '123 Main St', 1000, 'Good', 1234567890, '2024-05-25', 1),
('Jane Smith', 'jane.smith@example.com', '456 Oak St', 1500, 'Excellent', 9876543210, '2024-05-28', 2),
('Bob Johnson', 'bob.johnson@example.com', '789 Elm St', 2000, 'Good', 5555555555, '2024-05-30', 3),
('Alice Williams', 'alice.williams@example.com', '101 Pine St', 2500, 'Excellent', 4444444444, '2024-06-02', 4),
('Michael Brown', 'michael.brown@example.com', '202 Maple St', 3000, 'Good', 7777777777, '2024-06-05', 5);
select*from customers;

-- Sales
insert into sales (sale_date, quantity_sold, Payment_status) 
values 
('2024-05-01', 150, 'Paid'),
('2024-05-02', 200, 'Paid'),
('2024-05-03', 250, 'Pending'),
('2024-05-04', 300, 'Paid'),
('2024-05-05', 350, 'Pending');
select*from sales;

-- Employees
insert into employees (Ename, position, contact_info, salary, hire_date, P_id) 
values 
('John Smith', 'Manager', 1111111111, 5000, '2020-01-01', 1),
('Jane Doe', 'Sales Repres', 2222222222, 3000, '2021-02-01', 2),
('Bob Brown', 'Accountant', 3333333333, 3500, '2021-03-15', 3),
('Alice Johnson', 'Production Superv', 4444444444, 3200, '2022-05-10', 4),
('Michael Williams', 'Transportation Manager', 5555555555, 3800, '2023-04-20', 5);
select*from employees;

-- Transportation
insert into transportation (Driver, Route, Departure_time, Arrival_time, mileage, Fuel_consumption, E_id) 
values 
('Tom', 'Route 1', '08:00', '10:00', '100 miles', 20.5, 1),
('Emily', 'Route 2', '09:00', '11:30', '150 miles', 25.5, 2),
('David', 'Route 3', '10:30', '13:00', '120 miles', 22.5, 3),
('Sarah', 'Route 4', '11:00', '13:30', '130 miles', 23.5, 4),
('Chris', 'Route 5', '12:00', '14:30', '140 miles', 24.5, 5);
select*from transportation;

-- Production
insert into production (Quantity_produced, production_date, Manufacturing_plant, production_cost, E_id, S_id) 
values 
(1000, '2024-05-01', 'Plant 1', 5000, 1, 1),
(1200, '2024-05-02', 'Plant 2', 6000, 2, 2),
(1500, '2024-05-03', 'Plant 3', 7500, 3, 3),
(1800, '2024-05-04', 'Plant 4', 9000, 4, 4),
(2000, '2024-05-05', 'Plant 5', 10000, 5, 5);
select*from production;

-- Suppliers
insert into suppliers (Sup_name, contactInfo, Address, payment_terms, Materials) 
values 
('Supplier 1', 1111111111, '123 Supplier St', 'Net 30', 'Bricks'),
('Supplier 2', 2222222222, '456 Supplier St', 'Net 45', 'Concrete'),
('Supplier 3', 3333333333, '789 Supplier St', 'Net 60', 'Steel'),
('Supplier 4', 4444444444, '101 Supplier St', 'Net 30', 'Wood'),
('Supplier 5', 5555555555, '202 Supplier St', 'Net 45', 'Glass');
select*from suppliers;

-- Equipment
insert into equipment (etype, manufacturer, purchase_date, maintenance_history) 
values 
('Crane', 'ABC Equipment', '2023-01-01', 'Regular maintenance every 3 months'),
('Forklift', 'XYZ Machinery', '2023-02-01', 'Maintenance performed as needed'),
('Excavator', '123 Inc.', '2023-03-01', 'Regular maintenance every 6 months'),
('Truck', '456 Vehicles', '2023-04-01', 'Regular maintenance every 4 months'),
('Loader', '789 Tools', '2023-05-01', 'Maintenance performed as needed');
select*from equipment;

-- BrickInventory
update brickinventory
set size = 10, quantity = 1200, unit_price = 0.4, total_cost = 480, manufacturer = 'abc bricks', P_id = 2, S_id = 2
where size = 8;
-- Orders
update orders
set order_date = '2024-05-02', delivery_date = '2024-05-12', quantity = 350, total_price = 220, status = 'delivered', B_id = 3, C_id = 3, E_id = 3
where order_date = '2024-05-01';
-- Customers
update customers
set C_Name = 'john smith', email = 'john.smith@example.com', Address = '456 oak st', credit_limit = 1200, payment_history = 'good', phone_num = 9876543210, payment_date = '2024-05-26'
where C_Name = 'John Doe';
-- Sales
update sales
set sale_date = '2024-05-03', quantity_sold = 300, Payment_status = 'paid'
where sale_date = '2024-05-01';
-- Employees
update employees
set Ename = 'jane doe', position = 'sales representative', contact_info = 2222222222, salary = 3200, hire_date = '2021-02-01', P_id = 3
where Ename = 'John Smith';
-- Transportation
UPDATE transportation
SET Driver = 'tommy', Route = 'route 1', Departure_time = '08:30', Arrival_time = '10:30', mileage = '110 miles', Fuel_consumption = 21.5, E_id = 2
WHERE Driver = 'Tom';
-- Production
update production
set Quantity_produced = 1300, production_date = '2024-05-02', Manufacturing_plant = 'plant 2', production_cost = 6500, E_id = 3, S_id = 3
where Quantity_produced = 1000;
-- Suppliers
update suppliers
set Sup_name = 'supplier 1', contactInfo = 2222222222, Address = '456 supplier st', payment_terms = 'net 45', Materials = 'concrete'
where Sup_name = 'Supplier 1';
-- Equipment
update equipment
set etype = 'crane', manufacturer = 'abc equipment', purchase_date = '2023-01-01', maintenance_history = 'regular maintenance every 3 months'
where etype = 'Crane';

select * from BrickInventory
where size < 10;

select * from Orders
where status = 'Pending';

select Address from customers
where C_Name like 'J%';

select quantity_sold from sales
where Payment_status = 'Paid';

select Ename from employees
where YEAR(hire_date) = 2021;

select * from transportation
where mileage > '100 miles' and mileage < '150 miles';

select production_cost from production
where S_id > 3;

-- Delete two rows from BrickInventory
delete from BrickInventory
limit 2;
select*from BrickInventory;

-- Delete two rows from Orders
delete from Orders
limit 2;
select*from Orders;


-- Delete two rows from customers
delete from customers
limit 2;
select*from customers;

-- Delete two rows from sales
delete from sales
limit 2;
select*from sales;

-- Delete two rows from employees
delete from employees
limit 2;
select*from employees;

-- Delete two rows from transportation
delete from transportation
limit 2;
select*from transportation;

-- Delete two rows from production
delete from production
limit 2;
select*from production;

-- Delete two rows from suppliers
delete from suppliers
limit 2;
select*from suppliers;

-- Delete two rows from equipment
delete from equipment
limit 2;
select*from equipment;



-- Cross Joins
SELECT * FROM BrickInventory CROSS JOIN Orders;
SELECT * FROM BrickInventory CROSS JOIN customers;
SELECT * FROM BrickInventory CROSS JOIN sales;
SELECT * FROM BrickInventory CROSS JOIN employees;
SELECT * FROM BrickInventory CROSS JOIN transportation;

-- Self Join
SELECT * FROM employees e1 INNER JOIN employees e2 ON e1.Ename = e2.Ename;
SELECT * FROM employees e1 INNER JOIN employees e2 ON e1.salary = e2.salary;
SELECT * FROM employees e1 INNER JOIN employees e2 ON e1.position = e2.position;
SELECT * FROM employees e1 INNER JOIN employees e2 ON e1.hire_date = e2.hire_date;
SELECT * FROM employees e1 INNER JOIN employees e2 ON e1.contact_info = e2.contact_info;

-- Left Outer Joins
SELECT * FROM Orders LEFT OUTER JOIN customers ON Orders.C_id = customers.C_id;
SELECT * FROM customers LEFT OUTER JOIN sales ON customers.C_id = sales.C_id;  -- Adjusted to use C_id
SELECT * FROM sales LEFT OUTER JOIN employees ON sales.E_id = employees.E_id;
SELECT * FROM employees LEFT OUTER JOIN transportation ON employees.E_id = transportation.E_id;


-- Right Outer Joins
SELECT * FROM BrickInventory RIGHT OUTER JOIN Orders ON BrickInventory.P_id = Orders.B_id;
SELECT * FROM Orders RIGHT OUTER JOIN customers ON Orders.C_id = customers.C_id;
SELECT * FROM customers RIGHT OUTER JOIN sales ON customers.phone_num = sales.phone_num;
SELECT * FROM sales RIGHT OUTER JOIN employees ON sales.E_id = employees.E_id;
SELECT * FROM employees RIGHT OUTER JOIN transportation ON employees.E_id = transportation.E_id;

-- Full Joins
SELECT * FROM BrickInventory LEFT OUTER JOIN Orders ON BrickInventory.P_id = Orders.B_id
UNION
SELECT * FROM BrickInventory RIGHT OUTER JOIN Orders ON BrickInventory.P_id = Orders.B_id;

SELECT * FROM Orders LEFT OUTER JOIN customers ON Orders.C_id = customers.C_id 
UNION 
SELECT * FROM Orders RIGHT OUTER JOIN customers ON Orders.C_id = customers.C_id;

SELECT * FROM customers LEFT OUTER JOIN sales ON customers.phone_num = sales.phone_num
UNION
SELECT * FROM customers RIGHT OUTER JOIN sales ON customers.phone_num = sales.phone_num;

SELECT * FROM sales LEFT OUTER JOIN employees ON sales.E_id = employees.E_id 
UNION 
SELECT * FROM sales RIGHT OUTER JOIN employees ON sales.E_id = employees.E_id; 

SELECT * FROM employees LEFT OUTER JOIN transportation ON employees.E_id = transportation.E_id
UNION 
SELECT * FROM employees RIGHT OUTER JOIN transportation ON employees.E_id = transportation.E_id;

-- Inner Joins
SELECT * FROM BrickInventory INNER JOIN Orders ON BrickInventory.P_id = Orders.B_id;
SELECT * FROM Orders INNER JOIN customers ON Orders.C_id = customers.C_id;
SELECT * FROM customers INNER JOIN sales ON customers.phone_num = sales.phone_num;
SELECT * FROM sales INNER JOIN employees ON sales.E_id = employees.E_id;
SELECT * FROM employees INNER JOIN transportation ON employees.E_id = transportation.E_id;

-- Natural Joins
SELECT * FROM BrickInventory NATURAL JOIN Orders;
SELECT * FROM Orders NATURAL JOIN customers;
SELECT * FROM customers NATURAL JOIN sales;
SELECT * FROM sales NATURAL JOIN employees;
SELECT * FROM employees NATURAL JOIN transportation;


-- Nested Queries

-- 1. Find Customers with Orders Greater than a Specific Quantity
SELECT C_Name 
FROM customers 
WHERE C_id IN (
    SELECT C_id 
    FROM Orders 
    WHERE quantity > 300
);

-- 2. Get Brick Inventory Items with Total Cost Above Average
SELECT size, total_cost 
FROM BrickInventory 
WHERE total_cost > (
    SELECT AVG(total_cost) 
    FROM BrickInventory
);

-- 3. List Employees Who Have Processed Orders for a Specific Customer
SELECT Ename 
FROM employees 
WHERE E_id IN (
    SELECT E_id 
    FROM Orders 
    WHERE C_id = 1
);

-- 4. Retrieve Suppliers with Materials Supplied to Orders Over a Certain Price
SELECT Sup_name 
FROM suppliers 
WHERE Sup_name IN (
    SELECT DISTINCT Sup_name 
    FROM BrickInventory 
    WHERE P_id IN (
        SELECT B_id 
        FROM Orders 
        WHERE total_price > 250
    )
);

-- 5. Find Production Entries with Cost Greater than the Average Cost
SELECT Manufacturing_plant, production_cost 
FROM production 
WHERE production_cost > (
    SELECT AVG(production_cost) 
    FROM production
);

-- Correlated Queries

-- 1. Find Total Sales for Each Customer
SELECT C_Name, 
       (SELECT SUM(quantity_sold) 
        FROM sales 
        WHERE sales.E_id IN (
            SELECT E_id 
            FROM Orders 
            WHERE Orders.C_id = customers.C_id
        )) AS total_sales 
FROM customers;

-- 2. List Employees with Orders They Processed and Their Payment Status
SELECT Ename, status 
FROM employees e 
WHERE EXISTS (
    SELECT 1 
    FROM Orders o 
    WHERE o.E_id = e.E_id
);

-- 3. Get All Brick Inventory Items Sold in Orders with a Total Price Greater than a Specific Amount
SELECT size, quantity 
FROM BrickInventory b 
WHERE EXISTS (
    SELECT 1 
    FROM Orders o 
    WHERE o.B_id = b.P_id AND o.total_price > 200
);

-- 4. Find Employees with Salary Higher than the Average Salary of Their Position
SELECT Ename 
FROM employees e1 
WHERE salary > (
    SELECT AVG(salary) 
    FROM employees e2 
    WHERE e1.position = e2.position
);

-- 5. List Customers with Payment History Better than Average
SELECT C_Name 
FROM customers c 
WHERE credit_limit > (
    SELECT AVG(credit_limit) 
    FROM customers
);


