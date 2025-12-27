CREATE TABLE DP(
DP_ID INT PRIMARY KEY,
DP_NAME VARCHAR(34),
LOCATION_ VARCHAR(54)
);
CREATE TABLE EMPY(
EMP_ID INT PRIMARY KEY,
EMP_NAME VARCHAR(45),
EMAIL VARCHAR(65),
SALARY BIGINT,
DEPT_ID INT,
FOREIGN KEY(DEPT_ID) REFERENCES DP(DP_ID)
);

CREATE TABLE PROJS(
PROJ_ID INT PRIMARY KEY IDENTITY(1,1),
PROJ_NAME VARCHAR(54),
BUDGET VARCHAR(45),
DEPT_ID INT,
FOREIGN KEY(DEPT_ID) REFERENCES DP(DP_ID)
);

CREATE TABLE ASSIGN(
ASSIGN_ID INT PRIMARY KEY,
EMP_ID INT,
FOREIGN KEY(EMP_ID) REFERENCES EMPY(EMP_ID),
PROJ_ID INT,
FOREIGN KEY(PROJ_ID) REFERENCES PROJS(PROJ_ID),
HRS_WORKED INT
);

CREATE TABLE CLS(
CL_ID INT PRIMARY KEY,
CL_NAME VARCHAR(34),
CONTACT_INFO BIGINT
);

CREATE TABLE CONTRACTS(
CON_ID INT PRIMARY KEY,
CL_ID INT,
FOREIGN KEY(CL_ID) REFERENCES CLS(CL_ID),
PROJ_ID INT,
FOREIGN KEY(PROJ_ID) REFERENCES PROJS(PROJ_ID),
CONT_VALUE INT
);


CREATE TABLE TEAMS(
TEAM_ID INT PRIMARY KEY,
TEAM_NAME VARCHAR(40),
LEAD_ID INT,
FOREIGN KEY(LEAD_ID) REFERENCES EMPY(EMP_ID)
);
CREATE TABLE TEAM_MEM(
TEAM_MEM_ID INT PRIMARY KEY,
TEAM_ID INT,
FOREIGN KEY(TEAM_ID) REFERENCES TEAMS(TEAM_ID),
EMP_ID INT,
FOREIGN KEY(EMP_ID) REFERENCES EMPY(EMP_ID)
);


INSERT INTO DP(DP_ID,DP_NAME,LOCATION_)
VALUES(7,'IT', 'LUCKNOW'),
(4,'FINANCE','DELHI'),
(9, 'BUSINESS', 'AGRA');
SELECT *FROM DP;

-- INSERTION INTO EMPLOYEES TABLE--
INSERT INTO EMPY(EMP_ID, EMP_NAME, SALARY, DEPT_ID)
VALUES(98724, 'FHJ JDHF', 60000, 7),
(98730, 'KDK KXDJ', 45999,7),
(98725, 'FDH OPE', 30000, 9),
(98728, 'IORU IFK', 25000,4),
(98745, 'JDJS WU', 50000, 9),
(98742, 'JDH WSD', 70000, 4);
INSERT INTO EMPY(EMP_ID, EMP_NAME, SALARY, DEPT_ID)
VALUES(98727, 'IUY JDHF', 20000, 7);
SELECT *FROM EMPY;
UPDATE  EMPY
SET EMAIL ='NOT NECESSARY'
WHERE EMAIL IS NULL;
UPDATE EMPY
SET SALARY= 60
WHERE EMP_ID =98727;

--INSERTION IN PROJECTS TABLE--
INSERT INTO PROJS(  PROJ_NAME, DEPT_ID)
VALUES('NETWORK INFRASTRUCTURE AND CYBERSECURITY', 7),
('DATA CENTRE MANAGEMENT',7),
('API DEVELPMENT',7),
('ACCOUNTS RECEIVABLE AND PAYABLE MANAGEMENT',4),
('BUDGETING AND FORECASTING',4),
('MARKET RESEARCH AND ANALYSIS', 9),
('BUSINESS PLAN CREATION AND IMPLEMENTATION',  9),
('STRATEGIC PARTNERSHIP AMD COLLABORATION',9);
SELECT *FROM DP;
SELECT *FROM PROJS;


UPDATE PROJS
SET BUDGET = 500000
WHERE PROJ_ID= 1;
UPDATE PROJS
SET BUDGET = 90000
WHERE PROJ_ID= 2;
UPDATE PROJS
SET BUDGET = 200000
WHERE PROJ_ID= 3;
UPDATE PROJS
SET BUDGET = 700000
WHERE PROJ_ID= 4;
UPDATE PROJS
SET BUDGET = 80000
WHERE PROJ_ID= 5;
UPDATE PROJS
SET BUDGET = 400000
WHERE PROJ_ID= 6;
UPDATE PROJS
SET BUDGET = 70000
WHERE PROJ_ID= 7;
UPDATE PROJS
SET BUDGET = 600000
WHERE PROJ_ID= 8;
WHERE PROJ_ID= 1;
WHERE PROJ_ID= 1;
SELECT *FROM PROJS;

SELECT*FROM EMPY
INSERT INTO ASSIGN(ASSIGN_ID,EMP_ID,PROJ_ID,HRS_WORKED)
VALUES(87,98724,1,8),
(89,98730,2,12),
(80, 98742, 3,4),
(76, 98725, 4,7), 
(65,98728,5,9),
(45, 98745,6,15);
INSERT INTO ASSIGN(ASSIGN_ID,EMP_ID,PROJ_ID,HRS_WORKED)
VALUES(97,98728,5, 14);
INSERT INTO ASSIGN(ASSIGN_ID,EMP_ID,PROJ_ID,HRS_WORKED)
VALUES(98,98745,6, 20);
INSERT INTO ASSIGN(ASSIGN_ID,EMP_ID,PROJ_ID,HRS_WORKED)
VALUES(99,98730,2,7);
INSERT INTO ASSIGN(ASSIGN_ID,EMP_ID,PROJ_ID,HRS_WORKED)
VALUES(100,98742, 3, 2);
INSERT INTO CLS(CL_ID, CL_NAME, CONTACT_INFO)
VALUES(32,'JDFJ IUYR', 89347353),
(76, 'IOUIFRE UFEOIP', 83558738),
(43, 'IERII OIEURO', 84785356),
(75, 'IUEI CVM', 47983784),
(31,'EIRI MMV',  85743099),
(98,'DASDF KJFGT', 87387522);

SELECT *FROM CONTRACTS;
 INSERT INTO CONTRACTS( CON_ID, CL_ID, PROJ_ID, CONT_VALUE) 
 VALUES(88,76,4, 87787),
 (89,43,2,65643),
 (90, 75, 1, 98933),
 (91, 31, 5,73498);
 
 
 SELECT EMP_ID, DEPT_ID FROM EMPY;
 INSERT INTO TEAMS( TEAM_ID, TEAM_NAME, LEAD_ID)
 VALUES( 50, ' HEAD IT TEAM' , 98724),
 (51, ' FINANCE MANAGEMENT', 98728),
 (52,'BUSINESS MANAGEMENT', 98745);

 SELECT *FROM TEAMS; 
 CREATE TABLE TEAM_MEM(
TEAM_MEM_ID INT PRIMARY KEY,
TEAM_ID INT,
FOREIGN KEY(TEAM_ID) REFERENCES TEAMS(TEAM_ID),
EMP_ID INT,
FOREIGN KEY(EMP_ID) REFERENCES EMPY(EMP_ID)
);
 INSERT INTO TEAM_MEM( TEAM_MEM_ID, TEAM_ID,EMP_ID)
 VALUES( 11, 51, 98728),
 (12,50,98724),
 (13, 52, 98745);
  INSERT INTO TEAM_MEM( TEAM_MEM_ID, TEAM_ID,EMP_ID)
 VALUES( 14, 51, 98727);
  INSERT INTO TEAM_MEM( TEAM_MEM_ID, TEAM_ID,EMP_ID)
 VALUES( 15, 52, 98725);
 
 SELECT* FROM DP;
 SELECT *FROM TEAMS;
 SELECT*FROM TEAM_MEM;
 SELECT *FROM EMPY;
  SELECT *FROM CONTRACTS;
  SELECT *FROM CLS;
  SELECT * FROM PROJS;

  --Finding all the projects along with their department names and the client who assigned the project --
 SELECT PROJS.PROJ_NAME,DP.DP_NAME, CLS.CL_NAME
 FROM PROJS
 JOIN CONTRACTS ON PROJS.PROJ_ID=CONTRACTS.PROJ_ID
 JOIN DP ON DP.DP_ID= PROJS.DEPT_ID
 JOIN CLS ON CLS.CL_ID= CONTRACTS.CL_ID;
 
--Get the total hours worked by employees for each project--
SELECT SUM(HRS_WORKED) AS _TOTAL_HOURS_ , PROJ_ID
FROM ASSIGN
GROUP BY PROJ_ID;
 SELECT *FROM ASSIGN;
 --List all employers who are team leads along with their team names --
 SELECT EMPY.EMP_NAME, TEAMS.TEAM_NAME
 FROM EMPY
 JOIN TEAMS ON TEAMS.LEAD_ID=EMPY.EMP_ID;
 SELECT *FROM TEAMS;


SELECT* FROM EMPY;
--Display all employees who are not team leads or who are not part of any team --
SELECT *FROM EMPY
WHERE NOT EXISTS( SELECT 1
FROM TEAMS
WHERE EMPY.EMP_ID= TEAMS.LEAD_ID);
SELECT *FROM TEAMS;
--Find the total contract value managed by EACH Department--
SELECT SUM(CONT_VALUE) TOTAL_CONTRACT_VALUE, DP.DP_NAME
FROM CONTRACTS
JOIN PROJS ON PROJS.PROJ_ID= CONTRACTS.PROJ_ID
JOIN DP ON DP.DP_ID= PROJS.DEPT_ID
GROUP BY DP.DP_NAME;
SELECT *FROM CONTRACTS;

--Retrieve the name of teams where all members belong to the same department --
SELECT TEAMS.TEAM_NAME
FROM TEAMS
JOIN TEAM_MEM ON TEAM_MEM.TEAM_MEM_ID= TEAMS.TEAM_ID
JOIN EMPY ON TEAMS.LEAD_ID= EMPY.EMP_ID
GROUP BY TEAMS.TEAM_NAME
HAVING COUNT(DISTINCT EMPY.DEPT_ID)=1;
;

--Fetch the name of the employers who has worked the most hours on a single project --
SELECT TOP 3 MAX(HRS_WORKED) AS MAX_HOURS,EMPY.EMP_NAME
FROM EMPY
JOIN ASSIGN 
ON EMPY.EMP_ID=ASSIGN.EMP_ID
GROUP BY EMPY.EMP_NAME
ORDER BY MAX_HOURS DESC;
SELECT *FROM CONTRACTS;
SELECT * FROM PROJS;
--Get all projects that have a budget greater than the total contract value assigned to them --
SELECT PROJS.PROJ_ID, PROJS.PROJ_NAME, PROJS.BUDGET
FROM PROJS
WHERE PROJS.BUDGET > (
    SELECT SUM(CONT_VALUE)
    FROM CONTRACTS 
    WHERE CONTRACTS.PROJ_ID = PROJS.PROJ_ID
);

CREATE TRIGGER PREVENT_NULL_CONT_ID
ON CONTRACTS
FOR INSERT
AS
BEGIN
    -- Check if any row inserted has NULL project_id
    IF EXISTS (SELECT * FROM CONTRACTS WHERE CONT_VALUE IS NULL)
    BEGIN
        RAISERROR ('CONTRACT VALUE cannot be NULL!', 16, 1);  -- Error message with severity 16
        ROLLBACK TRANSACTION;  -- Rollback the transaction if the condition is met
    END
END;
DROP TRIGGER PREVENT_NULL_CONT_ID

CREATE TRIGGER PreventSalaryDecrease
ON EMP
AFTER UPDATE
AS
BEGIN
    IF EXISTS(SELECT 1 FROM INSERTED I, DELETED D
	WHERE I.EMP_ID=D.EMP_ID
	AND I.SALARY<D.SALARY)
	BEGIN 
	RAISERROR('SALARY CANNOT BE DECREASED!',16,1);
	ROLLBACK TRANSACTION;
	END
	END;
   
SELECT * FROM sys.triggers WHERE name = 'PreventSalaryDecrease';
SELECT * FROM sys.triggers WHERE is_disabled = 98727;
ENABLE TRIGGER PreventSalaryDecrease ON EMPY;

--Creative view that displays all employees who have a salary greater than 50,000 including their employee and department and salary --
CREATE VIEW GREATERSALARY
AS 
SELECT EMP_NAME, DEPT_ID,SALARY
FROM EMPY
WHERE SALARY>50000;
SELECT *FROM GREATERSALARY;


CREATE PROCEDURE UpdateSalary (@EmployeeID INT, @PercentageIncrease DECIMAL)
AS
BEGIN
    DECLARE @CurrentSalary INT;
    
    -- Get the current salary of the employee
    SELECT @CurrentSalary = salary
    FROM EMPY
    WHERE emp_id = @EmployeeID;

    -- Update the salary by the given percentage
    UPDATE EMPY
    SET salary = @CurrentSalary * (1 + @PercentageIncrease / 100)
    WHERE emp_id = @EmployeeID;
    
    PRINT 'Salary updated successfully!';
END;

EXEC UpdateSalary 98724, 10;  
EXEC UpdateSalary 98724, 7;

CREATE PROCEDURE GetEmployeesByDepartment (@DeptID INT)
AS
BEGIN
    SELECT emp_name, salary
    FROM EMPY
    WHERE DEPT_ID = @DeptID;
END;
EXEC GetEmployeesByDepartment 4;  

DROP PROCEDURE ADDNEWEMP;


 CREATE PROCEDURE GETNAMESANDSALARY( @DEPT_ID INT) 
 AS
 
 BEGIN
 DECLARE @EMP_NAME VARCHAR(43), 
  @SALARY INT;


SELECT @EMP_NAME= EMP_NAME,  @SALARY =SALARY
FROM EMPY
WHERE DEPT_ID = @DEPT_ID;

UPDATE EMPY 
SET SALARY  = @SALARY*3.5
WHERE DEPT_ID = @DEPT_ID;

 
 PRINT 'Updated salary for employees in department: ' + CAST(@DEPT_ID AS VARCHAR);
PRINT 'First employee name fetched: ' + @EMP_NAME;
PRINT 'salary for ALL employee IN THAT DEPARTMENT BEFORE UP: ' + CAST(@SALARY AS VARCHAR);
END;
 EXEC GETNAMESANDSALARY 7
 SELECT *FROM EMPY
 UPDATE EMPY SET SALARY = 87800 WHERE EMP_NAME = 'FHJ JDHF' ;
  UPDATE EMPY SET SALARY = 34554 WHERE EMP_NAME = 'SJDK IUFSI';
  UPDATE EMPY SET SALARY = 7298 WHERE EMP_NAME= 'JDJS WU';

  CREATE PROC TOTALSALARIESOFALLDEPT( @DEPT_ID INT)
AS 
SELECT *FROM EMPY
IF
@DEPT_ID IS NULL OR @DEPT_ID = ' '
BEGIN 
PRINT ' A DEPARTMENT ID CANNOT BE NULL!';
END;
ELSE 

BEGIN 
SELECT SUM(SALARY) AS TOTAL_SALARY, DEPT_ID
FROM EMPY
WHERE DEPT_ID = @DEPT_ID
GROUP BY DEPT_ID;
PRINT 'TOTAL SALARIES OF ALL EMPLOYEES IN DEPARTMENT: ' + CAST(@DEPT_ID AS VARCHAR);
END;


  EXEC  TOTALSALARIESOFALLDEPT ' ' 

  --CREATE A PROCEDURE TO FIND THE HIGHEST SALARY IN EACH DEPARTMENT ALONG WITH THEIR NAME--

  ALTER PROC HIGHESTSALARYIDEPT(@DEPT_ID INT)
  AS
  IF @DEPT_ID IS NULL 
  BEGIN 
  PRINT' NULL VALUES ARE NOT ACCEPTED!';
  END
  ELSE
  BEGIN
  SELECT TOP(1) SALARY , DEPT_ID, EMP_NAME
  FROM EMPY
  WHERE DEPT_ID = @DEPT_ID
  
  ORDER BY SALARY DESC;
  PRINT' DEPARTMENT '+ CAST(@DEPT_ID AS VARCHAR);
  END;

   EXEC HIGHESTSALARYIDEPT 7
   SELECT *FROM EMPY

   --CREATE A PROCEDURE TO GIVE BONUS--
   CREATE PROC BONUS(@DEPT_ID INT, @BONUS FLOAT)
   AS 
   IF 
   @DEPT_ID IS NULL OR @BONUS IS NULL
   BEGIN 
   PRINT' NULL VALUES NOT ACCEPTABLE!';
   END
   ELSE
   BEGIN 
   UPDATE EMPY SET SALARY = SALARY* @BONUS 
   WHERE DEPT_ID = @DEPT_ID;
   END
   --EXECUTION OF BONUS PROC--
   EXEC BONUS NULL, 1.1

   --CREATE PROC Bypassing department name to see the total employees in each department --
   ALTER PROC COUNTDESIGNATION(@DP_NAME VARCHAR(34))
   AS 
   IF 
   @DP_NAME IS NULL 
   BEGIN 
   PRINT'  NULL VALUES ARE NOT ACCEPTED MILORD! ';
   END
   ELSE
   BEGIN
   SELECT COUNT(DP_ID) AS TOTAL_EMPLOYEE, DP_ID,DP_NAME
   FROM DP
   JOIN EMPY 
   ON EMPY.DEPT_ID= DP.DP_ID
   WHERE DP_NAME =@DP_NAME
   GROUP BY DP_ID, DP_NAME;
   END
   --Executing a procedure counting the designation --
   EXEC COUNTDESIGNATION 'IT'

  ALTER TABLE TEAMS 
  ADD MANAGERNAME VARCHAR(49);
  SELECT*FROM DP;
  SELECT *FROM TEAMS
  SELECT*FROM EMPY;
  UPDATE TEAMS SET  MANAGERNAME='FHJ JDHF'
  WHERE LEAD_ID = 98724;
  UPDATE TEAMS SET  MANAGERNAME='IORU IFK'
  WHERE LEAD_ID = 98728;
  UPDATE TEAMS SET  MANAGERNAME='JDJS WU'
  WHERE LEAD_ID = 98745;

  --RENAMING A COLUMN IN A TEAMS TABLE--
  EXEC SP_RENAME 'TEAMS.MANAGERNAME' , 'TEAM_MANAGER_NAME' ,'COLUMN'; 



  ALTER TABLE EMPY
  ADD MANAGER_NAME VARCHAR(50);

  UPDATE EMPY SET MANAGER_NAME = 'FHJ JDHF'
  WHERE DEPT_ID =7;
  
  UPDATE EMPY SET MANAGER_NAME = 'IORU IFK'
  WHERE DEPT_ID =4;
  
  UPDATE EMPY SET MANAGER_NAME = 'JDJS WU'
  WHERE DEPT_ID =9;

  --created a procedure to update the employee's manager By accepting s id and new manager's name and then updating --
  ALTER PROC UPDATEMANAGER(@EMP_ID INT, @NEW_MANAGER_NAME VARCHAR(50))
  AS 
 IF @EMP_ID IS NOT NULL AND @NEW_MANAGER_NAME IS NOT NULL
  BEGIN
  UPDATE EMPY SET MANAGER_NAME = @NEW_MANAGER_NAME
  WHERE EMP_ID = @EMP_ID;
  PRINT' NEW MANAGER NAME IS '+ CAST(@NEW_MANAGER_NAME AS VARCHAR);
  END
  ELSE 
  BEGIN
  PRINT ' FOR UPDATION BOTH VALUES ARE TO BE PROVIDED';
  END
  EXEC UPDATEMANAGER 98724,'FHJ JDHF';



  CREATE TABLE CUSTOMERS(
  CUSTOMER_ID INT PRIMARY KEY IDENTITY(1,1),
CUSTOMER_NAME VARCHAR(60) NOT NULL, 
EMAIL VARCHAR(50),
PHONE_NO VARCHAR(14), 
ADDRESS_ VARCHAR(90)
);
SELECT*FROM CUSTOMERS;

INSERT INTO customers(customer_name, email, phone_no, address_)
VALUES
('Alice Johnson', 'alice.johnson@email.com', '123-456-7890', '123 Elm St, Springfield'),
('Bob Smith', 'bob.smith@email.com', '987-654-3210', '456 Oak St, Rivertown'),
('Charlie Brown', 'charlie.brown@email.com', '555-666-7777', '789 Pine St, Lakeside'),
('Diana Prince', 'diana.prince@email.com', '333-444-5555', '321 Maple St, Greenfield'),
('Evan Davis', 'evan.davis@email.com', '444-555-6666', '654 Birch St, Hilltop');

INSERT INTO customers (customer_name, email, phone_no, address_)
VALUES
('Fiona Green', 'fiona.green@email.com', '222-333-4444', '123 Cedar St, Woodbridge'),
('George Hill', 'george.hill@email.com', '111-222-3333', '456 Willow St, Riverside'),
('Helen White', 'helen.white@email.com', '999-888-7777', '789 Birchwood St, Pine Valley'),
('Ivy King', 'ivy.king@email.com', '555-123-4567', '321 Ash St, Hillside'),
('Jack Lee', 'jack.lee@email.com', '666-777-8888', '654 Oakwood St, Meadowbrook'),
('Laura Harris', 'laura.harris@email.com', '777-555-6666', '987 Redwood St, Brookfield'),
('Mike Davis', 'mike.davis@email.com', '888-444-5555', '123 Pine St, Forest Hill'),
('Nina Walker', 'nina.walker@email.com', '555-111-3333', '456 Elmwood St, Green Valley'),
('Oscar Moore', 'oscar.moore@email.com', '333-222-1111', '789 Cedarwood St, Riverview'),
('Paul Carter', 'paul.carter@email.com', '999-555-3333', '321 Redwood St, Sunnyvale'),
('Quincy Miller', 'quincy.miller@email.com', '444-888-7777', '654 Birch St, Meadow Park'),
('Rita Johnson', 'rita.johnson@email.com', '555-444-2222', '987 Maple St, Clearview'),
('Steve Brown', 'steve.brown@email.com', '123-888-5555', '123 Oak St, Silverstone'),
('Tina Scott', 'tina.scott@email.com', '666-555-4444', '456 Pinewood St, Lakeshore');

INSERT INTO customers (customer_name, email, phone_no, address_)
VALUES
('Ursula Reed', 'ursula.reed@email.com', '222-555-1111', '123 Birchwood St, Maple Hill'),
('Victor Grey', 'victor.grey@email.com', '777-888-9999', '456 Cedar St, Pine Ridge'),
('Wendy Green', 'wendy.green@email.com', '444-555-6666', '789 Maplewood St, Oak Valley'),
('Xander Brown', 'xander.brown@email.com', '111-999-8888', '321 Cedarwood St, Westview'),
('Yvonne Clark', 'yvonne.clark@email.com', '555-333-7777', '654 Redwood St, Riverwood'),
('Zachary Harris', 'zachary.harris@email.com', '888-222-5555', '987 Willow St, Sunnybrook'),
('Abigail Lee', 'abigail.lee@email.com', '777-111-4444', '123 Oakwood St, Riverton'),
('Benjamin Walker', 'benjamin.walker@email.com', '444-333-2222', '456 Pine St, Crescent City'),
('Catherine King', 'catherine.king@email.com', '555-444-9999', '789 Birch St, Northfield'),
('David Thomas', 'david.thomas@email.com', '333-444-5555', '321 Maplewood St, Pinehill'),
('Elise Moore', 'elise.moore@email.com', '777-555-1111', '654 Cedarwood St, Meadowview'),
('Frank Wilson', 'frank.wilson@email.com', '888-333-4444', '987 Redwood St, Lakeside'),
('Grace Adams', 'grace.adams@email.com', '111-444-2222', '123 Pinewood St, Beachside'),
('Henry King', 'henry.king@email.com', '444-555-7777', '456 Oak St, Valleyview'),
('Isabel Martinez', 'isabel.martinez@email.com', '777-888-4444', '789 Maplewood St, Golden Valley'),
('James Moore', 'james.moore@email.com', '555-333-1111', '321 Birchwood St, Rockland'),
('Katherine Wright', 'katherine.wright@email.com', '222-555-4444', '654 Pinewood St, Fairmount'),
('Louis Turner', 'louis.turner@email.com', '999-888-7777', '987 Oakwood St, Silver Ridge'),
('Monica Anderson', 'monica.anderson@email.com', '555-444-8888', '123 Redwood St, Hillcrest'),
('Nina Patel', 'nina.patel@email.com', '333-222-4444', '456 Cedar St, Greenhill'),
('Oliver Brown', 'oliver.brown@email.com', '444-777-2222', '789 Pine St, Clearview'),
('Penelope Green', 'penelope.green@email.com', '555-111-4444', '321 Birchwood St, Riverstone'),
('Quinton Hughes', 'quinton.hughes@email.com', '999-333-5555', '654 Oakwood St, Mountainview'),
('Rachael Scott', 'rachael.scott@email.com', '222-777-8888', '987 Maplewood St, Parkside'),
('Samuel Taylor', 'samuel.taylor@email.com', '444-555-8888', '123 Cedarwood St, Springdale'),
('Tanya Wilson', 'tanya.wilson@email.com', '555-999-4444', '456 Birch St, Pinecrest'),
('Uriel Turner', 'uriel.turner@email.com', '777-111-3333', '789 Oakwood St, West Ridge'),
('Veronica Baker', 'veronica.baker@email.com', '333-444-7777', '321 Pinewood St, Forest Glen'),
('William White', 'william.white@email.com', '888-555-3333', '654 Redwood St, Crystal Heights'),
('Xena Collins', 'xena.collins@email.com', '555-111-7777', '987 Birchwood St, Brookstone'),
('Yara Johnson', 'yara.johnson@email.com', '444-222-5555', '123 Oak St, Sunset Park');



CREATE TABLE PRODUCTS(
PRODUCT_ID INT PRIMARY KEY NOT NULL, 
PRODUCT_NAME VARCHAR(250) NOT NULL,
ARRIVAL_DATE DATE, 
STOCK_QUANTITY INT DEFAULT 'OUT OF STOCK',
CATEGORY VARCHAR(250), 
PRICE DECIMAL(10,2) NOT NULL
);
SELECT*FROM PRODUCTS;






INSERT INTO products (product_id, product_name, arrival_date, stock_quantity, category, price)
VALUES
(99, 'Tent Stakes', '2024-07-05', 200, 'Outdoor Equipment', 8.00),
(100, 'Binoculars', '2024-07-07', 50, 'Outdoor Equipment', 120.00);

INSERT INTO products (product_id, product_name, arrival_date, stock_quantity, category, price)
VALUES
(1, 'Toaster', '2023-07-05', 80, 'Kitchen Appliances', 35.00),
(2, 'Juicer', '2023-07-15', 50, 'Kitchen Appliances', 70.00),
(3, 'Dishwasher', '2023-08-12', 20, 'Home Appliances', 900.00),
(4, 'Vacuum Cleaner', '2023-08-20', 30, 'Home Appliances', 150.00),
(5, 'Portable Speaker', '2023-09-03', 100, 'Electronics', 50.00),
(6, 'Projector', '2023-09-10', 40, 'Electronics', 250.00),
(7, 'Smart TV', '2023-09-18', 25, 'Electronics', 1200.00),
(8, 'Smartphone Case', '2023-10-05', 500, 'Accessories', 15.00),
(9, 'Laptop Bag', '2023-10-08', 200, 'Accessories', 40.00),
(10, 'Charging Cable', '2023-10-12', 1000, 'Accessories', 10.00),
(11, 'Camera', '2023-10-15', 60, 'Electronics', 600.00),
(12, 'Camera Lens', '2023-10-18', 35, 'Electronics', 250.00),
(13, 'Printer', '2023-10-22', 50, 'Electronics', 150.00),
(14, 'Ink Cartridge', '2023-10-25', 400, 'Accessories', 20.00),
(15, 'Desk Lamp', '2023-10-28', 150, 'Furniture', 45.00),
(16, 'Office Chair', '2023-11-01', 40, 'Furniture', 180.00),
(17, 'Bookshelf', '2023-11-07', 30, 'Furniture', 120.00),
(18, 'Dining Table', '2023-11-15', 15, 'Furniture', 400.00),
(19, 'Sofa', '2023-11-18', 10, 'Furniture', 800.00),
(20, 'Recliner', '2023-11-22', 20, 'Furniture', 350.00),
(21, 'Curtains', '2023-11-25', 100, 'Furniture', 25.00),
(22, 'Cushions', '2023-11-30', 200, 'Furniture', 15.00),
(23, 'Coffee Table', '2023-12-02', 40, 'Furniture', 150.00),
(24, 'Treadmill', '2023-12-05', 10, 'Sports Equipment', 600.00),
(25, 'Dumbbells', '2023-12-10', 150, 'Sports Equipment', 30.00),
(26, 'Yoga Mat', '2023-12-12', 100, 'Sports Equipment', 20.00),
(27, 'Bicycle', '2023-12-15', 25, 'Sports Equipment', 500.00),
(28, 'Golf Clubs', '2023-12-18', 30, 'Sports Equipment', 350.00),
(29, 'Tennis Racket', '2023-12-20', 50, 'Sports Equipment', 100.00),
(30, 'Football', '2023-12-25', 200, 'Sports Equipment', 25.00);

INSERT INTO products (product_id, product_name, arrival_date, stock_quantity, category, price)
VALUES
(66, 'Yoga Blocks', '2024-04-12', 200, 'Sports Equipment', 10.00),
(67, 'Dumbbell Rack', '2024-04-15', 50, 'Sports Equipment', 75.00),
(68, 'Speedo Swimsuit', '2024-04-18', 100, 'Sports Equipment', 25.00),
(69, 'Ski Poles', '2024-04-20', 30, 'Sports Equipment', 40.00),
(70, 'Snorkel Gear', '2024-04-22', 40, 'Sports Equipment', 60.00),
(71, 'Camping Tent', '2024-04-25', 20, 'Outdoor Equipment', 150.00),
(72, 'Sleeping Bag', '2024-04-28', 60, 'Outdoor Equipment', 50.00),
(73, 'Hiking Boots', '2024-05-01', 80, 'Outdoor Equipment', 90.00),
(74, 'Camping Stove', '2024-05-03', 35, 'Outdoor Equipment', 70.00),
(75, 'Backpack', '2024-05-05', 100, 'Outdoor Equipment', 40.00),
(76, 'Cooler Box', '2024-05-08', 90, 'Outdoor Equipment', 50.00),
(77, 'Hammock', '2024-05-10', 120, 'Outdoor Equipment', 35.00),
(78, 'Trekking Poles', '2024-05-12', 200, 'Outdoor Equipment', 25.00),
(79, 'Ice Skates', '2024-05-15', 40, 'Sports Equipment', 80.00),
(80, 'Tennis Net', '2024-05-17', 15, 'Sports Equipment', 150.00),
(81, 'Baseball Bat', '2024-05-20', 70, 'Sports Equipment', 60.00),
(82, 'Soccer Cleats', '2024-05-22', 90, 'Sports Equipment', 55.00),
(83, 'Boxing Gloves', '2024-05-25', 50, 'Sports Equipment', 35.00),
(84, 'Rugby Ball', '2024-05-27', 60, 'Sports Equipment', 25.00),
(85, 'Cycling Helmet', '2024-05-30', 100, 'Sports Equipment', 40.00),
(86, 'Climbing Rope', '2024-06-02', 30, 'Outdoor Equipment', 120.00),
(87, 'Portable Grill', '2024-06-05', 25, 'Outdoor Equipment', 90.00),
(88, 'Solar Lantern', '2024-06-08', 150, 'Outdoor Equipment', 30.00),
(89, 'Water Filter', '2024-06-10', 200, 'Outdoor Equipment', 25.00),
(90, 'Fishing Rod', '2024-06-12', 50, 'Outdoor Equipment', 80.00),
(91, 'Kettlebell', '2024-06-15', 70, 'Sports Equipment', 45.00),
(92, 'Resistance Bands Set', '2024-06-18', 100, 'Sports Equipment', 20.00),
(93, 'Gym Mat', '2024-06-20', 200, 'Sports Equipment', 15.00),
(94, 'Racket String', '2024-06-22', 150, 'Sports Equipment', 12.00),
(95, 'Bike Pump', '2024-06-25', 250, 'Sports Equipment', 18.00),
(96, 'Rugby Shorts', '2024-06-28', 120, 'Sports Equipment', 25.00),
(97, 'Canoe Paddle', '2024-07-01', 30, 'Outdoor Equipment', 60.00),
(98, 'Kayak', '2024-07-03', 10, 'Outdoor Equipment', 450.00);


INSERT INTO products (product_id, product_name, arrival_date, stock_quantity, category, price)
VALUES
(31, 'Blender', '2023-12-28', 150, 'Kitchen Appliances', 75.00),
(32, 'Electric Kettle', '2024-01-02', 60, 'Kitchen Appliances', 30.00),
(33, 'Microwave', '2024-01-05', 25, 'Kitchen Appliances', 120.00),
(34, 'Air Fryer', '2024-01-10', 40, 'Kitchen Appliances', 100.00),
(35, 'Refrigerator', '2024-01-12', 10, 'Home Appliances', 800.00),
(36, 'Washing Machine', '2024-01-15', 15, 'Home Appliances', 700.00),
(37, 'Electric Oven', '2024-01-18', 30, 'Home Appliances', 200.00),
(38, 'Ceiling Fan', '2024-01-20', 80, 'Home Appliances', 40.00),
(39, 'Air Conditioner', '2024-01-22', 12, 'Home Appliances', 1200.00),
(40, 'Heater', '2024-01-25', 60, 'Home Appliances', 90.00),
(41, 'Bluetooth Earphones', '2024-02-01', 150, 'Electronics', 40.00),
(42, 'Smart Watch', '2024-02-05', 75, 'Electronics', 150.00),
(43, 'Tablet', '2024-02-08', 30, 'Electronics', 350.00),
(44, 'Laptop', '2024-02-10', 50, 'Electronics', 800.00),
(45, 'Gaming Mouse', '2024-02-12', 200, 'Electronics', 30.00),
(46, 'Gaming Keyboard', '2024-02-15', 120, 'Electronics', 70.00),
(47, 'Phone Charger', '2024-02-18', 500, 'Accessories', 12.00),
(48, 'Power Bank', '2024-02-20', 200, 'Accessories', 35.00),
(49, 'Headphones', '2024-02-25', 150, 'Electronics', 60.00),
(50, 'Laptop Stand', '2024-02-28', 100, 'Accessories', 25.00),
(51, 'Fitness Tracker', '2024-03-02', 50, 'Electronics', 120.00),
(52, 'Fitness Ball', '2024-03-05', 80, 'Sports Equipment', 20.00),
(53, 'Skipping Rope', '2024-03-08', 150, 'Sports Equipment', 10.00),
(54, 'Dumbbell Set', '2024-03-10', 40, 'Sports Equipment', 50.00),
(55, 'Rowing Machine', '2024-03-12', 25, 'Sports Equipment', 350.00),
(56, 'Resistance Bands', '2024-03-15', 200, 'Sports Equipment', 15.00),
(57, 'Basketball', '2024-03-18', 100, 'Sports Equipment', 20.00),
(58, 'Baseball Glove', '2024-03-20', 60, 'Sports Equipment', 40.00),
(59, 'Soccer Ball', '2024-03-22', 150, 'Sports Equipment', 18.00),
(60, 'Tennis Balls', '2024-03-25', 300, 'Sports Equipment', 12.00),
(61, 'Tennis Shoes', '2024-03-28', 50, 'Sports Equipment', 80.00),
(62, 'Canoe', '2024-04-01', 10, 'Sports Equipment', 400.00),
(63, 'Skateboard', '2024-04-05', 100, 'Sports Equipment', 45.00),
(64, 'Helmet', '2024-04-07', 200, 'Sports Equipment', 25.00),
(65, 'Golf Balls', '2024-04-10', 150, 'Sports Equipment', 15.00);


CREATE TABLE sales (
    sales_id VARCHAR(50) PRIMARY KEY, 
    customer_id INT, 
    product_id INT, 
    quantity_sold INT, 
    sale_date DATE, 
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
SELECT *FROM SALES;

INSERT INTO sales (sales_id, customer_id, product_id, quantity_sold, sale_date, total_amount)
VALUES
('S1', 1, 1, 2, '2023-01-10', 3000.00),
('S2', 2, 2, 1, '2023-01-15', 800.00),
('S3', 3, 3, 3, '2023-02-05', 360.00),
('S4', 4, 4, 1, '2023-02-10', 600.00),
('S5', 5, 5, 2, '2023-03-05', 100.00),
('S6', 6, 6, 1, '2023-03-15', 50.00),
('S7', 7, 7, 4, '2023-04-01', 200.00),
('S8', 8, 8, 1, '2023-04-20', 40.00),
('S9', 9, 9, 5, '2023-05-01', 2500.00),
('S10', 10, 10, 3, '2023-05-15', 450.00),
('S11', 11, 11, 2, '2023-06-10', 1200.00),
('S12', 12, 12, 3, '2023-06-15', 750.00),
('S13', 13, 13, 1, '2023-07-01', 600.00),
('S14', 14, 14, 4, '2023-07-15', 1200.00),
('S15', 15, 15, 2, '2023-08-05', 160.00),
('S16', 16, 16, 5, '2023-08-10', 1200.00),
('S17', 17, 17, 3, '2023-09-01', 900.00),
('S18', 18, 18, 1, '2023-09-15', 600.00),
('S19', 19, 19, 2, '2023-10-01', 400.00),
('S20', 20, 20, 4, '2023-10-10', 800.00),
('S21', 21, 21, 1, '2023-10-15', 200.00),
('S22', 22, 22, 3, '2023-11-01', 1200.00),
('S23', 23, 23, 5, '2023-11-05', 600.00),
('S24', 24, 24, 2, '2023-11-10', 300.00),
('S25', 25, 25, 4, '2023-12-01', 400.00),
('S26', 26, 26, 3, '2023-12-10', 900.00),
('S27', 27, 27, 5, '2023-12-15', 1500.00),
('S28', 28, 28, 1, '2023-12-20', 100.00),
('S29', 29, 29, 4, '2023-12-25', 800.00),
('S30', 30, 30, 2, '2023-12-28', 500.00);





INSERT INTO sales (sales_id, customer_id, product_id, quantity_sold, sale_date, total_amount)
VALUES
('S101', 1, 10, 2, '2023-12-31', 20.00),
('S102', 2, 20, 3, '2023-12-31', 75.00),
('S103', 3, 30, 1, '2023-12-31', 25.00),
('S104', 4, 40, 5, '2023-12-31', 100.00),
('S105', 5, 50, 2, '2023-12-31', 100.00),
('S106', 6, 60, 3, '2023-12-31', 120.00),
('S107', 7, 70, 4, '2023-12-31', 300.00),
('S108', 8, 80, 3, '2023-12-31', 150.00),
('S109', 9, 90, 1, '2023-12-31', 50.00),
('S110', 10, 100, 2, '2023-12-31', 200.00),
('S111', 11, 10, 3, '2023-12-31', 60.00),
('S112', 12, 20, 1, '2023-12-31', 25.00),
('S113', 13, 30, 4, '2023-12-31', 400.00),
('S114', 14, 40, 2, '2023-12-31', 100.00),
('S115', 15, 50, 3, '2023-12-31', 75.00),
('S116', 16, 60, 5, '2023-12-31', 250.00),
('S117', 17, 70, 2, '2023-12-31', 200.00),
('S118', 18, 80, 1, '2023-12-31', 30.00),
('S119', 19, 90, 3, '2023-12-31', 120.00),
('S120', 20, 100, 4, '2023-12-31', 450.00),
('S121', 21, 10, 2, '2023-12-31', 40.00),
('S122', 22, 20, 5, '2023-12-31', 250.00),
('S123', 23, 30, 1, '2023-12-31', 25.00),
('S124', 24, 40, 3, '2023-12-31', 90.00),
('S125', 25, 50, 2, '2023-12-31', 100.00),
('S126', 26, 60, 1, '2023-12-31', 50.00),
('S127', 27, 70, 4, '2023-12-31', 350.00),
('S128', 28, 80, 3, '2023-12-31', 150.00),
('S129', 29, 90, 5, '2023-12-31', 250.00),
('S130', 30, 100, 1, '2023-12-31', 50.00),
('S131', 31, 10, 4, '2023-12-31', 200.00),
('S132', 32, 20, 2, '2023-12-31', 80.00),
('S133', 33, 30, 3, '2023-12-31', 120.00),
('S134', 34, 40, 5, '2023-12-31', 250.00),
('S135', 35, 50, 4, '2023-12-31', 400.00),
('S136', 36, 60, 1, '2023-12-31', 30.00),
('S137', 37, 70, 2, '2023-12-31', 200.00),
('S138', 38, 80, 1, '2023-12-31', 20.00),
('S139', 39, 90, 3, '2023-12-31', 150.00),
('S140', 40, 100, 5, '2023-12-31', 500.00),
('S141', 41, 10, 2, '2023-12-31', 70.00),
('S142', 42, 20, 1, '2023-12-31', 25.00),
('S143', 43, 30, 4, '2023-12-31', 400.00),
('S144', 44, 40, 3, '2023-12-31', 150.00),
('S145', 45, 50, 2, '2023-12-31', 100.00),
('S146', 46, 60, 1, '2023-12-31', 60.00),
('S147', 47, 70, 3, '2023-12-31', 300.00),
('S148', 48, 80, 2, '2023-12-31', 200.00),
('S149', 49, 90, 5, '2023-12-31', 250.00),
('S150', 50, 100, 3, '2023-12-31', 300.00);
INSERT INTO sales (sales_id, customer_id, product_id, quantity_sold, sale_date, total_amount)
VALUES
('S151', 1, 11, 2, '2023-12-31', 120.00),
('S152', 2, 12, 3, '2023-11-30', 180.00),
('S153', 3, 13, 4, '2023-10-25', 400.00),
('S154', 4, 14, 1, '2023-09-15', 25.00),
('S155', 5, 15, 3, '2023-08-01', 90.00),
('S156', 6, 16, 2, '2023-07-20', 80.00),
('S157', 7, 17, 5, '2023-06-15', 500.00),
('S158', 8, 18, 1, '2023-05-01', 45.00),
('S159', 9, 19, 2, '2023-04-10', 100.00),
('S160', 10, 20, 3, '2023-03-15', 150.00),
('S161', 11, 21, 1, '2023-02-28', 20.00),
('S162', 12, 22, 4, '2023-01-25', 300.00),
('S163', 13, 23, 5, '2022-12-15', 250.00),
('S164', 14, 24, 2, '2022-11-22', 60.00),
('S165', 15, 25, 1, '2022-10-18', 35.00),
('S166', 16, 26, 3, '2022-09-10', 120.00),
('S167', 17, 27, 4, '2022-08-05', 200.00),
('S168', 18, 28, 2, '2022-07-10', 40.00),
('S169', 19, 29, 5, '2022-06-23', 400.00),
('S170', 20, 30, 1, '2022-05-20', 50.00),
('S171', 21, 31, 3, '2022-04-15', 150.00),
('S172', 22, 32, 2, '2022-03-05', 80.00),
('S173', 23, 33, 1, '2022-02-10', 25.00),
('S174', 24, 34, 4, '2022-01-17', 400.00),
('S175', 25, 35, 5, '2021-12-25', 450.00),
('S176', 26, 36, 1, '2021-11-18', 30.00),
('S177', 27, 37, 3, '2021-10-30', 180.00),
('S178', 28, 38, 2, '2021-09-25', 90.00),
('S179', 29, 39, 4, '2021-08-14', 350.00),
('S180', 30, 40, 5, '2021-07-05', 500.00),
('S181', 31, 41, 1, '2021-06-30', 25.00),
('S182', 32, 42, 2, '2021-05-21', 60.00),
('S183', 33, 43, 3, '2021-04-19', 150.00),
('S184', 34, 44, 4, '2021-03-12', 200.00),
('S185', 35, 45, 5, '2021-02-25', 250.00),
('S186', 36, 46, 1, '2021-01-22', 35.00),
('S187', 37, 47, 3, '2020-12-19', 180.00),
('S188', 38, 48, 2, '2020-11-13', 90.00),
('S189', 39, 49, 5, '2020-10-06', 400.00),
('S190', 40, 50, 1, '2020-09-02', 50.00),
('S191', 41, 51, 2, '2020-08-30', 70.00),
('S192', 42, 52, 4, '2020-07-18', 350.00),
('S193', 43, 53, 3, '2020-06-15', 150.00),
('S194', 44, 54, 5, '2020-05-05', 500.00),
('S195', 45, 55, 1, '2020-04-22', 60.00),
('S196', 46, 56, 4, '2020-03-19', 300.00),
('S197', 47, 57, 2, '2020-02-12', 80.00),
('S198', 48, 58, 1, '2020-01-06', 25.00),
('S199', 49, 59, 3, '2019-12-18', 120.00),
('S200', 50, 60, 5, '2019-11-11', 400.00);



CREATE TABLE TRANSACTIONS(
TRANSACTION_ID INT PRIMARY KEY, 
CUSTOMER_ID INT, 
PRODUCT_ID INT, 
TOTAL_PRICE DECIMAL(10,2), 
TRANSACTION_DATE DATE,
PAYMENT_METHOD VARCHAR(60),
FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID),
FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS(PRODUCT_ID)
);
ALTER TABLE TRANSACTIONS ADD STATUS_ VARCHAR(60);
SELECT*FROM TRANSACTIONS;
INSERT INTO transactions (transaction_id, customer_id, product_id, total_price, transaction_date, payment_method, status_) VALUES
('001', 1, 15, 90.00, '2023-01-10', 'Credit Card', 'Completed'),
('002', 2, 20, 350.00, '2023-01-11', 'Cash', 'Completed'),
('003', 3, 25, 120.00, '2023-01-12', 'Debit Card', 'Completed'),
('004', 4, 30, 150.00, '2023-01-13', 'PayPal', 'Pending'),
('005', 5, 35, 400.00, '2023-01-14', 'Credit Card', 'Completed'),
('006', 6, 40, 700.00, '2023-01-15', 'Cash', 'Completed'),
('007', 7, 45, 250.00, '2023-01-16', 'Debit Card', 'Completed'),
('008', 8, 50, 300.00, '2023-01-17', 'PayPal', 'Refunded'),
('009', 9, 55, 600.00, '2023-01-18', 'Credit Card', 'Completed'),
('010', 10, 60, 500.00, '2023-01-19', 'Cash', 'Pending'),
('011', 11, 65, 180.00, '2023-01-20', 'Credit Card', 'Completed'),
('012', 12, 70, 150.00, '2023-01-21', 'Debit Card', 'Completed'),
('013', 13, 75, 300.00, '2023-01-22', 'PayPal', 'Completed'),
('014', 14, 80, 500.00, '2023-01-23', 'Cash', 'Pending'),
('015', 15, 85, 450.00, '2023-01-24', 'Credit Card', 'Completed'),
('016', 16, 90, 1200.00, '2023-01-25', 'Debit Card', 'Completed'),
('017', 17, 95, 240.00, '2023-01-26', 'PayPal', 'Refunded'),
('018', 18, 100, 360.00, '2023-01-27', 'Cash', 'Completed'),
('019', 19, 5, 225.00, '2023-01-28', 'Credit Card', 'Completed'),
('020', 20, 10, 750.00, '2023-01-29', 'Debit Card', 'Completed'),
('021', 21, 15, 120.00, '2023-01-30', 'PayPal', 'Completed'),
('022', 22, 20, 100.00, '2023-01-31', 'Cash', 'Completed'),
('023', 23, 25, 200.00, '2023-02-01', 'Credit Card', 'Pending'),
('024', 24, 30, 300.00, '2023-02-02', 'Debit Card', 'Completed'),
('025', 25, 35, 450.00, '2023-02-03', 'PayPal', 'Refunded'),
('026', 26, 40, 650.00, '2023-02-04', 'Cash', 'Completed'),
('027', 27, 45, 90.00, '2023-02-05', 'Credit Card', 'Completed'),
('028', 28, 50, 280.00, '2023-02-06', 'Debit Card', 'Completed'),
('029', 29, 55, 330.00, '2023-02-07', 'PayPal', 'Pending'),
('030', 30, 60, 200.00, '2023-02-08', 'Cash', 'Completed'),
('031', 31, 65, 100.00, '2023-02-09', 'Credit Card', 'Completed'),
('032', 32, 70, 140.00, '2023-02-10', 'Debit Card', 'Completed'),
('033', 33, 75, 250.00, '2023-02-11', 'PayPal', 'Refunded'),
('034', 34, 80, 400.00, '2023-02-12', 'Cash', 'Completed'),
('035', 35, 85, 120.00, '2023-02-13', 'Credit Card', 'Completed'),
('036', 36, 90, 450.00, '2023-02-14', 'Debit Card', 'Completed'),
('037', 37, 95, 300.00, '2023-02-15', 'PayPal', 'Completed'),
('038', 38, 100, 180.00, '2023-02-16', 'Cash', 'Pending'),
('039', 39, 5, 720.00, '2023-02-17', 'Credit Card', 'Completed'),
('040', 40, 10, 900.00, '2023-02-18', 'Debit Card', 'Completed'),
('041', 41, 15, 400.00, '2023-02-19', 'PayPal', 'Completed'),
('042', 42, 20, 80.00, '2023-02-20', 'Cash', 'Completed'),
('043', 43, 25, 100.00, '2023-02-21', 'Credit Card', 'Completed'),
('044', 44, 30, 500.00, '2023-02-22', 'Debit Card', 'Refunded'),
('045', 45, 35, 600.00, '2023-02-23', 'PayPal', 'Completed'),
('046', 46, 40, 100.00, '2023-02-24', 'Cash', 'Completed'),
('047', 47, 45, 150.00, '2023-02-25', 'Credit Card', 'Completed'),
('048', 48, 50, 180.00, '2023-02-26', 'Debit Card', 'Completed'),
('049', 49, 55, 250.00, '2023-02-27', 'PayPal', 'Pending'),
('050', 50, 60, 300.00, '2023-02-28', 'Cash', 'Completed');
INSERT INTO transactions (transaction_id, customer_id, product_id, total_price, transaction_date, payment_method, status_) VALUES
(51, 1, 12, 320.00, '2020-03-05', 'Debit Card', 'Completed'),
(52, 2, 18, 150.00, '2020-04-10', 'Cash', 'Pending'),
(53, 3, 22, 430.00, '2020-05-12', 'PayPal', 'Refunded'),
(54, 4, 29, 280.00, '2021-06-18', 'Credit Card', 'Completed'),
(55, 5, 34, 220.00, '2021-07-22', 'Cash', 'Completed'),
(56, 6, 39, 590.00, '2021-08-25', 'Debit Card', 'Pending'),
(57, 7, 44, 360.00, '2022-09-15', 'PayPal', 'Completed'),
(58, 8, 49, 450.00, '2022-10-18', 'Credit Card', 'Refunded'),
(59, 9, 53, 100.00, '2022-11-22', 'Cash', 'Completed'),
(60, 10, 58, 300.00, '2022-12-12', 'Debit Card', 'Completed'),
(61, 11, 63, 125.00, '2022-01-01', 'PayPal', 'Pending'),
(62, 12, 68, 475.00, '2022-02-15', 'Credit Card', 'Completed'),
(63, 13, 73, 260.00, '2022-03-19', 'Cash', 'Completed'),
(64, 14, 78, 520.00, '2022-04-25', 'Debit Card', 'Completed'),
(65, 15, 83, 680.00, '2022-05-12', 'PayPal', 'Completed'),
(66, 16, 88, 370.00, '2022-06-17', 'Credit Card', 'Pending'),
(67, 17, 93, 540.00, '2022-07-20', 'Debit Card', 'Refunded'),
(68, 18, 98, 210.00, '2022-08-09', 'Cash', 'Completed'),
(69, 19, 99, 620.00, '2022-09-14', 'PayPal', 'Completed'),
(70, 20, 95, 520.00, '2022-10-10', 'Credit Card', 'Completed'),
(71, 21, 94, 160.00, '2022-11-02', 'Debit Card', 'Completed'),
(72, 22, 91, 200.00, '2022-12-05', 'Cash', 'Pending'),
(73, 23, 87, 380.00, '2021-01-08', 'PayPal', 'Completed'),
(74, 24, 82, 220.00, '2021-02-14', 'Credit Card', 'Completed'),
(75, 25, 79, 150.00, '2021-03-17', 'Debit Card', 'Refunded'),
(76, 26, 74, 280.00, '2021-04-06', 'Cash', 'Completed'),
(77, 27, 69, 350.00, '2021-05-22', 'PayPal', 'Completed'),
(78, 28, 64, 400.00, '2021-06-30', 'Credit Card', 'Completed'),
(79, 29, 59, 260.00, '2021-07-08', 'Debit Card', 'Pending'),
(80, 30, 54, 320.00, '2021-08-19', 'Cash', 'Completed'),
(81, 31, 49, 480.00, '2021-09-24', 'PayPal', 'Refunded'),
(82, 32, 44, 550.00, '2021-10-16', 'Credit Card', 'Completed'),
(83, 33, 39, 630.00, '2021-11-09', 'Debit Card', 'Completed'),
(84, 34, 34, 210.00, '2021-12-20', 'Cash', 'Completed'),
(85, 35, 29, 500.00, '2020-01-03', 'PayPal', 'Completed'),
(86, 36, 24, 150.00, '2020-02-08', 'Credit Card', 'Completed'),
(87, 37, 19, 300.00, '2020-03-14', 'Debit Card', 'Refunded'),
(88, 38, 14, 450.00, '2020-04-20', 'Cash', 'Pending'),
(89, 39, 9, 400.00, '2020-05-10', 'PayPal', 'Completed'),
(90, 40, 4, 250.00, '2020-06-07', 'Credit Card', 'Completed'),
(91, 41, 3, 500.00, '2020-07-19', 'Debit Card', 'Completed'),
(92, 42, 2, 550.00, '2020-08-23', 'Cash', 'Refunded'),
(93, 43, 1, 350.00, '2020-09-13', 'PayPal', 'Completed'),
(94, 44, 5, 150.00, '2020-10-05', 'Credit Card', 'Completed'),
(95, 45, 6, 450.00, '2020-11-12', 'Debit Card', 'Completed'),
(96, 46, 7, 200.00, '2020-12-19', 'Cash', 'Pending'),
(97, 47, 8, 700.00, '2021-01-25', 'PayPal', 'Refunded'),
(98, 48, 9, 100.00, '2021-02-11', 'Credit Card', 'Completed'),
(99, 49, 10, 250.00, '2021-03-02', 'Debit Card', 'Completed'),
(100, 50, 11, 300.00, '2021-04-14', 'Cash', 'Completed');


--Write a query to extract all employee records with their department names--
SELECT EMPY.EMP_ID,EMPY.SALARY, EMPY.EMP_NAME, DP.DP_NAME
FROM EMPY
JOIN DP
ON EMPY.DEPT_ID = DP.DP_ID;


SELECT *FROM SALES;

--Write a query to find and remove duplicates from a sales table. The duplicate rows have identical sale_id and sale_date--
SELECT S1.SALES_ID FROM SALES AS S1
JOIN SALES AS S2
ON S1.SALES_ID =S2.SALES_ID
WHERE S1.SALE_DATE<>S2.SALE_DATE
GROUP BY S1.SALES_ID
HAVING COUNT(*)>1;
--SPLITTING THE FULL EMPLOYEE NAME INTO FIRST_NAME AND LAST_NAME--
SELECT EMP_ID, DEPT_ID, 
REVERSE(PARSENAME(REPLACE(REVERSE(EMP_NAME), ' ','.'),1)) AS FIRST_NAME,
REVERSE(PARSENAME(REPLACE(REVERSE(EMP_NAME), ' ','.'),2)) AS LAST_NAME,
SALARY
FROM EMPY;

--USING CTE SPLIT THE FULL NAME INTO FIRST_NAME AND LAST_NAME
WITH CTE_FL_NAME 
AS 
( 
SELECT
EMP_ID, DEPT_ID, REVERSE(PARSENAME(REPLACE(REVERSE(EMP_NAME),' ','.'),1)) AS FIRST_NAME, 
REVERSE(PARSENAME(REPLACE(REVERSE(EMP_NAME), ' ','.'),2)) AS LAST_NAME, SALARY
FROM EMPY)
SELECT *FROM CTE_FL_NAME;






SELECT *FROM CUSTOMERS
WHERE CUSTOMER_ID =8;

--separating the full name and address column into separate columns--
SELECT CUSTOMER_ID, EMAIL, PHONE_NO ,
REVERSE(PARSENAME(REPLACE(REVERSE(CUSTOMER_NAME), ' ','.'),1))AS FIRST_NAME,
REVERSE(PARSENAME(REPLACE(REVERSE(CUSTOMER_NAME), ' ', '.'),2)) AS LAST_NAME,
REVERSE(PARSENAME(REPLACE(REVERSE(ADDRESS_), ' ', '.'),1)) AS HOUSE_NO,
REVERSE(PARSENAME(REPLACE(REVERSE(ADDRESS_), ' ',  '.'),2)) AS STREET_NAME,
REVERSE(PARSENAME(REPLACE(REVERSE(ADDRESS_), ' ',  '.'),3)) AS STREET,
REVERSE(PARSENAME(REPLACE(REVERSE(ADDRESS_), ' ', '.'),4)) AS CITY
FROM CUSTOMERS;

--DATE AGGREGATION/TRANSFORMATION--
SELECT*FROM PRODUCTS;

SELECT PRODUCT_NAME,SUM(TOTAL_AMOUNT) TOTAL_SALES
FROM PRODUCTS
JOIN SALES 
ON PRODUCTS.PRODUCT_ID= SALES.PRODUCT_ID
GROUP BY PRODUCT_NAME;



SELECT FORMAT (GETDATE(),'DD/MM/YYYY') AS DATE,
TRANSACTION_ID, PAYMENT_METHOD, STATUS_
FROM TRANSACTIONS
WHERE TRANSACTION_ID BETWEEN  1 AND 60;

SELECT *FROM EMPY;

EXEC UPSERT 59, '775-3353-242', 'Jim Halpart', 'Halpertmypam12@gmail.com', '16/65 Scranton, Penneslvynia,';

--Created a procedure here to enter the customer id of the customer table to see if the id exist and if the id exists we update the record and if not then we insert a record --
ALTER PROC UPSERT( @CUSTID INT,@PHNO VARCHAR(14),
 @CNAME VARCHAR(60),
 @EMAIL VARCHAR(50),@ADS VARCHAR(90))
AS
BEGIN 
IF EXISTS(SELECT 1 FROM CUSTOMERS
WHERE CUSTOMER_ID= @CUSTID)

BEGIN
UPDATE CUSTOMERS 
SET   CUSTOMER_NAME = @CNAME,
EMAIL = @EMAIL, 
PHONE_NO = @PHNO,
ADDRESS_ = @ADS
WHERE CUSTOMER_ID= @CUSTID;
PRINT'RECORD IS UPDATED';
END;
ELSE
BEGIN
 EXEC INSERTS  @PHNO,@ADS,@EMAIL,@CNAME;
 
 END;
 END

CREATE PROC INSERTS(@PHONENUM VARCHAR(14),
@ADDRESS VARCHAR(90),
 @VCUSTNAME VARCHAR(60),
 @EMAIL VARCHAR(50))
 AS 
 
BEGIN
INSERT INTO CUSTOMERS(PHONE_NO,ADDRESS_, CUSTOMER_NAME,EMAIL )
VALUES(@PHONENUM, @ADDRESS,@VCUSTNAME,@EMAIL);
PRINT'NEW INSERTION';
END;
EXEC INSERTS '666-555-3333', '65/3, Alibagh, Lucknow','James Arther',  'jarther@gmail'
SELECT *FROM CUSTOMERS;
SELECT *FROM SALES;
SELECT *FROM PRODUCTS;


-- Display time taken
SET STATISTICS TIME ON;
--TOP 5 products having the highest revenue --
SELECT TOP 5 PRODUCTS.PRODUCT_NAME, SUM(TOTAL_AMOUNT) AS REVENUE
FROM SALES
JOIN PRODUCTS
ON SALES.PRODUCT_ID= PRODUCTS.PRODUCT_ID
GROUP BY PRODUCTS.PRODUCT_NAME
ORDER BY SUM(TOTAL_AMOUNT) DESC;

select *from empy
SELECT *FROM DP;
SELECT DP.DP_NAME
AS DEPARTMENT, SALARY, EMP_NAME
FROM EMPY
JOIN DP
ON DP.DP_ID=EMPY.DEPT_ID
WHERE SALARY IN (
SELECT MAX(SALARY)
FROM EMPY
WHERE EMPY.DEPT_ID=DP.DP_ID

);


--Now queries using row number--
SELECT E.*,
MAX(SALARY) OVER(PARTITION BY DEPT_ID) AS MAX_SALARY 
FROM EMPY E;
SELECT *FROM EMPY;

SELECT  * FROM(
SELECT E.* ,ROW_NUMBER() OVER(PARTITION BY DEPT_ID ORDER BY EMP_ID) AS RN
FROM EMPY E
) AS X 
WHERE X.RN<3;
SELECT *FROM PRODUCTS;

--Retrieve the top 5 most expensive products in each category using ROW_NUMBER()--
SELECT TOP 5 PRODUCT_ID, PRODUCT_NAME, PRICE FROM PRODUCTS
ORDER BY PRICE DESC;
SELECT * FROM (
SELECT  P.*, ROW_NUMBER() OVER(PARTITION BY CATEGORY ORDER BY PRICE DESC) AS R
FROM PRODUCTS P
) AS L
WHERE L.R<6;

--Assign a row number to each employee based on their joining date--


SELECT E.*, ROW_NUMBER() OVER(ORDER BY EMP_ID) AS R
FROM EMPY E;

--Find the third highest-paid employee in each department--
SELECT * FROM (
SELECT E.* , ROW_NUMBER() OVER(PARTITION BY DEPT_ID ORDER BY  SALARY DESC) AS THIRD_HIGHEST_PAID_EMPY
FROM EMPY E
) AS THIRD_EMP
WHERE THIRD_EMP.THIRD_HIGHEST_PAID_EMPY=3;


SELECT *FROM EMPY
ORDER BY SALARY DESC;

--RETRIEVING EMPLOYEES EARNING ABOVE THE AVERAGE SALARY 
 SELECT *FROM EMPY
 WHERE SALARY>
 (SELECT AVG(SALARY) FROM EMPY);

--FINDING DUPLICATES OF EMAIL FROM EMPOYEE TABLE
SELECT EMAIL ,COUNT(*)AS DUPLICATE_EMAILS
FROM EMPY
GROUP BY EMAIL
HAVING COUNT(*)>1;

--IDENTIFYING THE DEPARTMENT WITH THE HIGHEST SALARY--
SELECT TOP 1 DEPT_ID,COUNT(*)
FROM EMPY 
GROUP BY DEPT_ID
ORDER BY COUNT(*) DESC
;
--RANKING EMPLOYEES BASED ON THEIR SALARY--
SELECT EMP_NAME,SALARY,DEPT_ID,
RANK()OVER(ORDER BY SALARY DESC) AS SALARY_RANKS
FROM EMPY
;

--RANKING THE SALARY OF EMPLOYEES BY DEPARTMENT--
SELECT EMP_NAME,SALARY,DEPT_ID,
RANK()OVER(PARTITION BY DEPT_ID ORDER BY SALARY DESC) AS SALARY_RANKS
FROM EMPY

;