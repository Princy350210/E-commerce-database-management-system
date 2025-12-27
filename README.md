E-COMMERCE DATABASE MANAGEMENT SYSTEM

ECDBMS is created to deal with extensive business/organization work. It stores all the rudimentary information of the employees, customers, products etc. within an office/organization. It helps them keep track of ongoing projects, sales, transactions. ECDBMS is designed to efficiently retrieve records from database. I performed queries using triggers, views, stored procedures to optimize the queries.


This DBMS consists of following tables-
1.	Employees Table (EMPY):  EMPY table lets us know necessary employee details consisting of unique employee id (emp_id), employee name (emp_name), email, salary and a foreign key (dept_id) which is a primary key or primary column of department table.

2.	Department Table (DP):  DP table deals with department location (location) of an organization/business/office. This table stores a unique and non-null department id (dp_id) which is a primary key of department table (DP) along with department name (dp_name). DP table makes retrieving records efficient and less time-consuming. EMPY and DP table both share one column which would easily help them join tables is dept_id in EMPY and dp_id in DP. 

3.	Project Table (PROJS): In order to keep track of the budget, project name, etc. A project table (PROJS) is well required. By joining PROJS table and DP table we can easily find out that which project is being handled by which department as well as their location, project name (proj_name), project id (proj_id) and most importantly their budget. 

4.	Assign Table (ASSIGN): The table gives us information about the employees who are currently working on a certain project along with how many total hours they have worked for. Here, emp_id and proj_id are foreign keys (columns from another table)

5.	Client Table (CLS): Client table (CLS) is one of the most pivotal tables of ECDBMS since it stores and manages the relational information of the clients. It, moreover, stores client ids are a primary key column, client name (cl_name), contact information (contact_info).

6.	Contracts Table (CONTRACTS): This table stores contract value (cont_value), client id (cl_id) from CLS table, contract id (contract_id) and project id (proj_id) from PROJS table. 

7.	Teams Table (TEAMS): Teams table stores the relational information regarding the employees who are leading team as well as the projects. It stores team id (team_id) as a primary key and team name (team_name).

8.	Team members Table (TEAM_MEM): Team members table (TEAM_MEM) table efficiently and easily keep track of that how many members are in a team currently. 

9.	Customers Table (CUSTOMERS):  This table holds the relational data which consists of their primary key column called customer id (customer_id). Also, stores the personal data of customers such as their email, phone number (phone_no), and address (address) and customer name (customer_name).

10.	Products Table (PRODUCTS): This table stores the entire relational data of products. It demonstrates arrival date of a product (arrival_date), product name (product_name), what category a product belongs to, price of the product (price), quantity of stock (stock_quantity).

11.	Sales Table (SALES): SALES table is the heart of the E-commerce Database Management System as it provides data about number of sold products (quantity_sold), total_amount, sale_date, sales_id as a primary key, customer_id and product_id as foreign key.

12.	Transactions Table (TRANSACTIONS): Storing payment details in this table makes our job easier to understand payment status (payment_status), payment method (payment_method), date of the transaction made (transaction_date), total price (total_price) and transaction id (transaction_id) being a primary key column. Customer_id and product_id being foreign key columns. Having transaction_id as a primary key column makes this table fully normalized, moreover, due to this data integrity is ensured. 

 SOME OF THE QUERIES THAT I PERFORMED IN THIS DATABASE:
1.	Name the department and the client who assigned the project as well as the project name. 
2.	How many total hours are spent on a project? Name them with project ids.
3.	List all the employee names who are leads along with their team names.
4.	Display all the employees who are not in any team. 
5.	What is the total contract value managed by each department?
6.	What are the names of the employees who have worked the most hours on a single project?
7.	Retrieve all the projects that have a budget greater than the total contract value assigned to them. 
8.	I created a trigger to prevent null contract value (prevent_null_id) which checks if there’s a row with null project id (proj_id) and if there is any null value then it raises an error message and rollbacks. 
9.	Created a view to display all employees who have a salary > 50,000 along with their names department id (dept_id) and salary. Views ensure date security and data privacy.
10.	I, furthermore, created a stored procedure which updated salary of employees taking @emp_id and @percentageIncrease as parameters (variables) along with printing the message ‘Salary updated successfully’. Oh, yes, I have also handled the null case so worry not. 
11.	What are the total sales of each product?
12.	Used CTE table to split the full name of employees from EMPY table into first and last name increasing readability. 
13.	Also separated the full name customers and their address columns into separate columns using multiple functions of SQL.

I am still learning new concepts everyday to perform more advanced optimizing queries. Currently learning complex inventory problems and making good reports. 
THANK YOU FOR READING THIS FAR.
