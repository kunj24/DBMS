CREATE TABLE STUDENT (
    STUDENTS_ID NUMBER(10),
    FIRST_NAME VARCHAR2(50),
    LAST_NAME VARCHAR2(50),
    DEPARTMENT VARCHAR2(10),
    BIRTH_DATE DATE
    );
   SELECT * FROM STUDENT;
   
   INSERT INTO STUDENT (STUDENTS_ID, FIRST_NAME, LAST_NAME, DEPARTMENT, BIRTH_DATE)
   VALUES (047,'kunj','Mungalpara','CSE','24-10-2005');
   
   ALTER TABLE STUDENT
   ADD EMAIL_ID VARCHAR2(50);
   
   DELETE FROM STUDENT WHERE FIRST_NAME='kunj';
   
   UPDATE STUDENT
   SET EMAIL_ID = '23cs047@charusat.edu.in'

   TRUNCATE TABLE STUDENT;
   DROP TABLE STUDENT;
   
   
   
   
   
   ----------------------------------------------------------------------------1.1

-- Creating the Job table
CREATE TABLE Job (
    job_id VARCHAR2(15),
    job_title VARCHAR2(30),
    min_sal NUMBER(7,2),
    max_sal NUMBER(7,2)
);

-- Inserting values into the Job table
INSERT INTO Job (job_id, job_title, min_sal, max_sal) 
VALUES('IT_PROG', 'Programmer', 4000, 10000);
INSERT INTO Job (job_id, job_title, min_sal, max_sal) 
values('MK_MGR', 'Marketing Manager', 9000, 15000);
INSERT INTO Job (job_id, job_title, min_sal, max_sal) 
VALUES('FI_MGR', 'Finance Manager', 8200, 12000);
INSERT INTO Job (job_id, job_title, min_sal, max_sal)
VALUES('FI_ACC', 'Account', 4200, 9000);
INSERT INTO Job (job_id, job_title, min_sal, max_sal)
VALUES('LEC', 'Lecturer', 6000, 17000);
INSERT INTO Job (job_id, job_title, min_sal, max_sal)
VALUES('COMP_OP', 'Computer Operator', 1500, 13000);

SELECT * FROM Job;


--------------------------------------------------------------------------------1.2

-- Creating the Employee table
CREATE TABLE Employee (
    emp_no NUMBER(10),
    emp_name VARCHAR2(30),
    emp_sal NUMBER(8,2),
    emp_comm NUMBER(8,2),
    dept_no NUMBER(8,2)
);
-- Inserting values into the Employee table
INSERT INTO Employee (emp_no, emp_name, emp_sal, emp_comm, dept_no)
VALUES(101, 'Smith', 800, 455, 20);
INSERT INTO Employee (emp_no, emp_name, emp_sal, emp_comm, dept_no)
VALUES(102, 'Snehal', 1600, 0, 25);
INSERT INTO Employee (emp_no, emp_name, emp_sal, emp_comm, dept_no)
VALUES(103, 'Adama', 1100, 425, 20);
INSERT INTO Employee (emp_no, emp_name, emp_sal, emp_comm, dept_no)
VALUES(104, 'Aman', 3000, NULL, 15);
INSERT INTO Employee (emp_no, emp_name, emp_sal, emp_comm, dept_no)
VALUES(105, 'Anita', 5000, 50000, 10);
INSERT INTO Employee (emp_no, emp_name, emp_sal, emp_comm, dept_no)
VALUES(106, 'Anamika', 2975, NULL, 30);

SELECT * FROM Employee;
drop table employee;

----------------------------------------------------------------------------1.3

-- Creating the Deposit table
CREATE TABLE Deposit (
    a_no VARCHAR2(15),
    cname VARCHAR2(15),
    bname VARCHAR2(15),
    amount NUMBER(10,2),
    a_date DATE
);
-- Inserting values into the Deposit table
INSERT INTO Deposit (a_no, cname, bname, amount, a_date)
VALUES('101', 'Anil', 'Andheri', 7000, TO_DATE('01-JAN-06', 'DD-MON-YY'));
INSERT INTO Deposit (a_no, cname, bname, amount, a_date)
VALUES('102', 'Sunil', 'Virar', 5000, TO_DATE('15-JUL-06', 'DD-MON-YY'));
INSERT INTO Deposit (a_no, cname, bname, amount, a_date)
VALUES('103', 'Jay', 'Villeparle', 6500, TO_DATE('12-MAR-06', 'DD-MON-YY'));
INSERT INTO Deposit (a_no, cname, bname, amount, a_date)
VALUES('104', 'Vijay', 'Andheri', 8000, TO_DATE('17-SEP-06', 'DD-MON-YY'));
INSERT INTO Deposit (a_no, cname, bname, amount, a_date)
VALUES('105', 'Keyur', 'Dadar', 7500, TO_DATE('19-NOV-06', 'DD-MON-YY'));
INSERT INTO Deposit (a_no, cname, bname, amount, a_date)
VALUES('106', 'Mayur', 'Borivali', 5500, TO_DATE('21-DEC-06', 'DD-MON-YY'));

SELECT * FROM Deposit;
drop table deposit;

----------------------------------------------------------------------------1.4

-- Creating the Borrow table
CREATE TABLE Borrow (
    loanno VARCHAR2(15),
    cname VARCHAR2(15),
    bname VARCHAR2(15),
    amount NUMBER(10,2)
);
-- Inserting values into the Borrow table
INSERT INTO Borrow (loanno, cname, bname, amount)
VALUES('201', 'Anil', 'VRCE', 1000.00);
INSERT INTO Borrow (loanno, cname, bname, amount)
VALUES('206', 'Mehul', 'AJNI', 5000.00);
INSERT INTO Borrow (loanno, cname, bname, amount)
VALUES('311', 'Sunil', 'Dharampeth', 3000.00);
INSERT INTO Borrow (loanno, cname, bname, amount)
VALUES('321', 'Madhuri', 'Andheri', 2000.00);
INSERT INTO Borrow (loanno, cname, bname, amount)
VALUES('375', 'Prmod', 'Virar', 8000.00);
INSERT INTO Borrow (loanno, cname, bname, amount)
VALUES('481', 'Kranti', 'Nehru Place', 3000.00);

SELECT * FROM Borrow;
drop table borrow;


---------------------------------prc2-------------------------------------------

-- 1. Create a table supplier from the employee table with all columns
CREATE TABLE supplier AS 
SELECT * 
FROM Employee;

-- Verify supplier table
SELECT * FROM supplier;

-- 2. Create table sup1 from the employee table with the first two columns
CREATE TABLE sup1 AS 
SELECT emp_no, emp_name 
FROM Employee;


-- Verify sup1 table
SELECT * FROM sup1;

-- 3. Create table sup2 from the employee table with no data
CREATE TABLE sup2 AS 
SELECT * 
FROM Employee 
WHERE 1=0;

-- Verify sup2 table
SELECT * FROM sup2;

-- 4. Insert the data into sup2 from employee where name is 'Anita'
INSERT INTO sup2
SELECT * 
FROM Employee 
WHERE emp_name = 'Anita';

-- Verify the inserted data
SELECT * FROM sup2;

-- 5. Rename the table sup2 to supplier2
ALTER TABLE sup2
RENAME TO supplier2;

-- Verify renamed table
SELECT * FROM supplier2;

-- 6. Destroy the table sup1
DROP TABLE sup1;

-- Verify table sup1 is destroyed
SELECT * FROM sup1; -- This will throw an error if sup1 is destroyed

-- 7. Add a column phone to the employee table
ALTER TABLE Employee
ADD phone VARCHAR2(10);

-- Verify the added column
DESC Employee;

-- 8. Modify the column phone and change its type to CHAR(10)
ALTER TABLE Employee
MODIFY phone CHAR(10);

-- Verify the modified column
DESC Employee;

-- 9. Delete employee_name column from supplier2
ALTER TABLE supplier2
DROP COLUMN emp_name;

-- Verify the column is dropped
DESC supplier2;

-- 10. Rename the column emp_sal to new_sal in supplier2
ALTER TABLE supplier2
RENAME COLUMN emp_sal TO new_sal;

-- Verify the renamed column
DESC supplier2;
                 
                 
                 
-----------------------------Prc3--------------------------------------


-- 1. Retrieve all data from Employee, Job, and Deposit tables
SELECT * FROM Employee;
SELECT * FROM Job;
SELECT * FROM Deposit;

-- 2. Display job title and maximum salary of all jobs
SELECT job_title, max_sal 
FROM Job;

-- 3. Write a query to find out all the unique branches
SELECT DISTINCT bname 
FROM Deposit;

-- 4. Display all account numbers where the deposit date is between '01-JAN-06' and '25-JUL-06'
SELECT a_no 
FROM Deposit
WHERE a_date BETWEEN TO_DATE('01-JAN-06', 'DD-MON-YY') AND TO_DATE('25-JUL-06', 'DD-MON-YY');

-- 5. Display names of all customers whose account was deposited after '09-OCT-06'
SELECT cname 
FROM Deposit
WHERE a_date > TO_DATE('09-OCT-06', 'DD-MON-YY');

-- 6. Display name and salary of employees in department 20 with alias for name as 'Employee Name'
SELECT emp_name AS "Employee Name", emp_sal 
FROM Employee
WHERE dept_no = 20;

-- 7. Display employee no, name, and department details for employees whose department is in (10, 20)
SELECT emp_no, emp_name, dept_no 
FROM Employee
WHERE dept_no IN (10, 20);

-- 8. Display employee no, name, and department details for employees whose department is NOT in (15, 30), excluding 25
SELECT emp_no, emp_name, dept_no 
FROM Employee
WHERE dept_no NOT IN (15, 30) AND dept_no <> 25;

-- 9. Display employee no, name, and department details for employees whose department number is between 15 and 25
SELECT emp_no, emp_name, dept_no 
FROM Employee
WHERE dept_no BETWEEN 15 AND 25;

-- 10. Display names of all employees with non-null commission values
SELECT emp_name 
FROM Employee
WHERE emp_comm IS NOT NULL;

-- 11. Combine min_sal and max_sal into a single column using a common alias name
SELECT (min_sal || ' - ' || max_sal) AS "Salary Range"
FROM Job;

-- 12. Insert all data from Employee table into Supplier2
INSERT INTO Supplier2
SELECT * 
FROM Employee;

-- 13. Delete all rows from Supplier1
DELETE FROM Supplier1;

-- 14. Delete details of the supplier where emp_no is 103
DELETE FROM Supplier2
WHERE emp_no = 103;

-- 15. Update the employee name to 'Aman' where the emp_name is 'Anita'
UPDATE Employee
SET emp_name = 'Aman'
WHERE emp_name = 'Anita';

-- 16. Update the employee name where emp_no is 103
UPDATE Employee
SET emp_name = 'Updated Name'
WHERE emp_no = 103;

-- 17. Find out the maximum and minimum salary from the Job table
SELECT MAX(max_sal) AS "Maximum Salary", MIN(min_sal) AS "Minimum Salary"
FROM Job;

-- 18. Find out the average salary of employees
SELECT AVG(emp_sal) AS "Average Salary"
FROM Employee;

-- 19. Count the total and distinct rows in dept_no column with a condition of salary greater than 1000
SELECT COUNT(dept_no) AS "Total Departments", COUNT(DISTINCT dept_no) AS "Distinct Departments"
FROM Employee
WHERE emp_sal > 1000;

-- 20. Display details of all employees in ascending order of their name and descending order of their number
SELECT * 
FROM Employee
ORDER BY emp_name ASC, emp_no DESC;

-- 21. Display dept_no in ascending order and emp_comm in descending order
SELECT dept_no, emp_comm 
FROM Employee
ORDER BY dept_no ASC, emp_comm DESC;

-- 22. Update emp_comm to 500 where dept_no is 20
UPDATE Employee
SET emp_comm = 500
WHERE dept_no = 20;

-- 23. Display emp_comm in ascending order with null values first and salary in descending order
SELECT emp_comm, emp_sal
FROM Employee
ORDER BY emp_comm ASC NULLS FIRST, emp_sal DESC;

-- 24. Display emp_comm in ascending order with null values last and emp_no in descending order
SELECT emp_comm, emp_no
FROM Employee
ORDER BY emp_comm ASC NULLS LAST, emp_no DESC;



---------------------------------Prc 4------------------------------------------


-- Step 1: Creating Employee and Customer schemas with constraints

DROP TABLE Employee;
CREATE TABLE Employee (
    Emp_ID NUMBER PRIMARY KEY,
    Emp_Name VARCHAR2(50) NOT NULL,
    Emp_Salary NUMBER CHECK (Emp_Salary > 0) NOT NULL,
    Job_ID VARCHAR2(30) UNIQUE,
    Dept_No NUMBER,
    Phone CHAR(10)
);

DROP TABLE Customer;
CREATE TABLE Customer (
    Cust_ID NUMBER PRIMARY KEY,
    Cust_Name VARCHAR2(50) NOT NULL,
    Branch VARCHAR2(50) NOT NULL
);
SELECT * FROM Customer;

-- Inserting sample data into Employee table
INSERT INTO Employee (Emp_ID, Emp_Name, Emp_Salary, Job_ID, Dept_No, Phone)
VALUES (101, 'Aman', 3000, 'FI_ACC', 20, NULL);
INSERT INTO Employee (Emp_ID, Emp_Name, Emp_Salary, Job_ID, Dept_No, Phone)
VALUES (102, 'Adama', 2500, 'MK_MGR', 10, '2345678901');
INSERT INTO Employee (Emp_ID, Emp_Name, Emp_Salary, Job_ID, Dept_No, Phone)
VALUES (103, 'Anita', 5000, 'IT_PROG', 30, '3456789012');
INSERT INTO Employee (Emp_ID, Emp_Name, Emp_Salary, Job_ID, Dept_No, Phone)
VALUES (104, 'Anamika', 2975, 'LEC', 15, '4567890123');
INSERT INTO Employee (Emp_ID, Emp_Name, Emp_Salary, Job_ID, Dept_No, Phone)
VALUES (105, 'Snehal', 1600, 'COMP_OP', 25, NULL);

-- Inserting sample data into Customer table
INSERT INTO Customer (Cust_ID, Cust_Name, Branch)
VALUES (201, 'Anil', 'Andheri');
INSERT INTO Customer (Cust_ID, Cust_Name, Branch)
VALUES (202, 'Sunil', 'Virar');
INSERT INTO Customer (Cust_ID, Cust_Name, Branch)
VALUES (203, 'Keyur', 'Dadar');
INSERT INTO Customer (Cust_ID, Cust_Name, Branch)
VALUES (204, 'Vijay', 'Borivali');

-- Task Queries


-- 1. Retrieve employees whose names start with 'A' or have 'a' as the third character
SELECT * FROM Employee
WHERE Emp_Name LIKE 'A%' OR SUBSTR(Emp_Name, 3, 1) = 'a';

-- 2. Retrieve employees whose names are exactly 5 characters long and start with 'Ani'
SELECT Emp_Name, Emp_ID, Emp_Salary FROM Employee
WHERE LENGTH(Emp_Name) = 5 AND Emp_Name LIKE 'Ani%';



-- 1. Retrieve employees whose second character is 'M' or 'N'
SELECT * FROM Employee
WHERE SUBSTR(Emp_Name, 2, 1) IN ('m', 'n');


-- 2. Retrieve employees whose second character is 'n' and names are exactly 5 characters long
SELECT * FROM Employee
WHERE LENGTH(Emp_Name) = 5 AND SUBSTR(Emp_Name, 2, 1) = 'n';

-- 3. Identify employees with incomplete details and third character as 'a'
SELECT * FROM Employee
WHERE (Emp_Salary IS NULL OR Phone IS NULL) AND SUBSTR(Emp_Name, 3, 1) = 'a';


-- 1. Retrieve names of customers in 'Andheri', 'Dadar', or 'Virar'
SELECT Cust_Name FROM Customer
WHERE Branch IN ('Andheri', 'Dadar', 'Virar');



-- 1. Retrieve job titles with Job_IDs starting with 'FI_'
SELECT Job_ID FROM Job
WHERE Job_ID LIKE 'FI_%';


-- 2. Retrieve job titles ending with '_MGR' and max salary > 12000
SELECT job_title FROM Job
WHERE job_title LIKE '%_MGR' AND max_sal > 12000;

-- Final Verification Queries
SELECT * FROM Employee;
SELECT * FROM Customer;


-----------------------------------Prc 5----------------------------------------









