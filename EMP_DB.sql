CREATE DATABASE EMP_DB;
USE EMP_DB;

#✅ 1. Table Creation Script

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    gender VARCHAR(10),
    mother_tongue VARCHAR(30),
    department VARCHAR(30),
    salary DECIMAL(10,2),
    dob DATE,
    doj DATE,
    experience INT
);

#✅ 2. INSERT Script – 50 Employees

INSERT INTO employee VALUES
(101,'Arun','Male','Tamil','IT',45000,'1998-05-12','2021-07-01',3),
(102,'Divya','Female','Tamil','HR',38000,'1999-08-20','2022-01-15',2),
(103,'Karthik','Male','Telugu','Finance',52000,'1997-03-10','2020-06-10',4),
(104,'Meena','Female','Tamil','IT',60000,'1996-11-05','2019-08-25',5),
(105,'Rahul','Male','Hindi','Sales',30000,'2000-02-18','2023-02-01',1),
(106,'Sneha','Female','Kannada','HR',42000,'1998-07-22','2021-03-12',3),
(107,'Vijay','Male','Tamil','IT',55000,'1997-09-14','2020-10-05',4),
(108,'Anita','Female','Hindi','Marketing',36000,'1999-12-01','2022-06-18',2),
(109,'Suresh','Male','Telugu','Finance',48000,'1996-01-30','2019-04-10',5),
(110,'Pooja','Female','Marathi','HR',39000,'1998-04-09','2021-11-20',3),
(111,'Ramesh','Male','Tamil','Sales',34000,'1997-06-15','2020-02-17',4),
(112,'Kavya','Female','Kannada','IT',62000,'1996-10-11','2018-07-01',6),
(113,'Ajay','Male','Hindi','IT',58000,'1995-12-25','2019-01-10',6),
(114,'Nisha','Female','Tamil','Finance',46000,'1998-03-19','2021-05-05',3),
(115,'Manoj','Male','Malayalam','Operations',40000,'1997-08-02','2020-09-14',4),
(116,'Priya','Female','Tamil','HR',37000,'1999-11-28','2022-08-01',2),
(117,'Deepak','Male','Hindi','Marketing',43000,'1998-02-07','2021-06-21',3),
(118,'Revathi','Female','Tamil','IT',51000,'1997-05-30','2020-01-15',4),
(119,'Sunil','Male','Kannada','Finance',49000,'1996-09-09','2019-12-12',5),
(120,'Aishwarya','Female','Telugu','Sales',35000,'2000-01-18','2023-03-10',1),
(121,'Ganesh','Male','Tamil','Operations',41000,'1997-04-14','2020-07-07',4),
(122,'Shalini','Female','Hindi','HR',36000,'1999-06-21','2022-02-14',2),
(123,'Prakash','Male','Telugu','IT',57000,'1996-12-03','2019-05-01',5),
(124,'Swathi','Female','Kannada','Marketing',39000,'1998-08-16','2021-09-09',3),
(125,'Naveen','Male','Tamil','Finance',53000,'1997-01-27','2020-11-11',4),
(126,'Keerthi','Female','Tamil','IT',60000,'1996-03-05','2018-06-20',6),
(127,'Mohit','Male','Hindi','Sales',32000,'2000-07-08','2023-01-05',1),
(128,'Latha','Female','Tamil','HR',44000,'1997-10-23','2020-04-18',4),
(129,'Sanjay','Male','Marathi','Operations',47000,'1996-02-11','2019-08-30',5),
(130,'Bhavya','Female','Kannada','IT',56000,'1998-12-17','2021-12-01',3),
(131,'Arvind','Male','Hindi','Finance',50000,'1997-09-06','2020-03-25',4),
(132,'Harini','Female','Tamil','Marketing',38000,'1999-05-13','2022-07-07',2),
(133,'Rohit','Male','Hindi','IT',61000,'1996-11-19','2018-09-15',6),
(134,'Yamini','Female','Telugu','HR',40000,'1998-06-01','2021-10-10',3),
(135,'Balaji','Male','Tamil','Sales',36000,'1999-01-09','2022-04-04',2),
(136,'Neha','Female','Hindi','Finance',48000,'1997-07-27','2020-02-20',4),
(137,'Kiran','Male','Kannada','Operations',42000,'1998-03-16','2021-06-06',3),
(138,'Sandhya','Female','Tamil','IT',59000,'1996-08-08','2019-01-01',5),
(139,'Lokesh','Male','Telugu','Marketing',45000,'1997-11-04','2020-12-12',4),
(140,'Anusha','Female','Telugu','HR',37000,'1999-02-25','2022-09-09',2),
(141,'Vimal','Male','Tamil','IT',54000,'1997-04-03','2020-05-15',4),
(142,'Preethi','Female','Tamil','Finance',41000,'1998-09-29','2021-08-08',3),
(143,'Sathish','Male','Tamil','Operations',43000,'1996-06-18','2019-03-03',5),
(144,'Ritu','Female','Hindi','Marketing',39000,'1999-10-10','2022-11-11',2),
(145,'Madhan','Male','Tamil','Sales',35000,'2000-12-01','2023-06-01',1),
(146,'Pallavi','Female','Marathi','HR',42000,'1997-02-14','2020-07-20',4),
(147,'Harsha','Male','Telugu','IT',58000,'1996-05-26','2018-12-12',6),
(148,'Uma','Female','Tamil','Operations',40000,'1998-01-05','2021-04-04',3),
(149,'Nitin','Male','Hindi','Finance',51000,'1997-08-31','2020-09-09',4),
(150,'Saranya','Female','Tamil','IT',62000,'1996-04-22','2018-01-10',6);

#🔹 PART A – Basic SELECT & Filtering (10 Questions)
/*1. Display all records from the employee table.*/
SELECT *
FROM EMPLOYEE;

/*2.Show only employee name, department, and salary.*/
SELECT EMP_NAME,DEPARTMENT,SALARY
FROM EMPLOYEE;

/*3.List all employees working in the IT department.*/
SELECT *
FROM EMPLOYEE 
WHERE DEPARTMENT='IT';

/*4.Display employees whose salary is greater than 50,000.*/
SELECT *
FROM EMPLOYEE 
WHERE SALARY>50000;

/*5.List all female employees.*/
SELECT *
FROM EMPLOYEE
WHERE GENDER="Female";

/*6.Display employees whose mother tongue is Tamil.*/
SELECT*
FROM EMPLOYEE
WHERE MOTHER_TONGUE="Tamil";

/*7.Show employees who joined the company after 2021-01-01.*/
SELECT*
FROM EMPLOYEE
WHERE DOJ>'2021-01-01';

/*8.Display employees whose experience is less than 3 years.*/
SELECT*
FROM EMPLOYEE
WHERE EXPERIENCE<3;

/*9.List employees belonging to HR or Finance departments.*/
SELECT*
FROM EMPLOYEE
WHERE DEPARTMENT="HR" OR DEPARTMENT="Finance";

SELECT*
FROM EMPLOYEE
WHERE DEPARTMENT IN("HR","Finance");

/*10.Display employees whose salary is between 40,000 and 60,000.*/
SELECT*
FROM EMPLOYEE
WHERE SALARY BETWEEN 40000 AND 60000;

#🔹 PART B – Sorting, DISTINCT & Pattern Matching (10 Questions)
/*11.Display employees ordered by salary in descending order.*/
SELECT*
FROM EMPLOYEE
ORDER BY SALARY DESC;

/*12.List employees ordered by date of joining (DOJ).*/
SELECT *
FROM EMPLOYEE
ORDER BY DOJ ASC;

/*13.Display distinct departments in the company.*/
SELECT distinct DEPARTMENT 
FROM EMPLOYEE;

/*14.Display distinct mother tongues of employees.*/
SELECT distinct MOTHER_TONGUE 
FROM EMPLOYEE;

/*15.List employee names that start with ‘A’.*/
SELECT * 
FROM EMPLOYEE 
WHERE EMP_NAME LIKE"A%";

/*16.List employee names that end with ‘a’.*/
SELECT *
FROM EMPLOYEE 
WHERE EMP_NAME LIKE"%a";

/*17.Display employees whose name contains the letter ‘i’.*/
SELECT *
FROM EMPLOYEE 
WHERE EMP_NAME LIKE "i%" OR EMP_NAME LIKE "%i%" OR EMP_NAME LIKE "%i";

/*18.Display employees sorted by department and salary.*/
SELECT * 
FROM EMPLOYEE
ORDER BY DEPARTMENT , SALARY;

SELECT * 
FROM EMPLOYEE
ORDER BY DEPARTMENT , SALARY DESC;

/*19.List employees ordered by experience (highest first).*/
SELECT*
FROM EMPLOYEE
ORDER BY EXPERIENCE DESC;

SELECT*
FROM EMPLOYEE
ORDER BY EXPERIENCE DESC LIMIT 10;

/*20. Display the top 5 highest paid employees.*/
SELECT*
FROM EMPLOYEE
ORDER BY SALARY DESC LIMIT 5;

#🔹 PART C – Aggregate Functions (10 Questions)
/*21.Find the total number of employees.*/
SELECT COUNT(*) AS NO_OF_EMP 
FROM EMPLOYEE;

/*22.Find the average salary of all employees.*/
SELECT AVG(SALARY) AS AVG_SALARY 
FROM EMPLOYEE;

/*23.Find the highest salary in the company.*/
SELECT MAX(SALARY) AS HIGHEST_SALARY 
FROM EMPLOYEE;

/*24.Find the lowest salary in the company.*/
SELECT MIN(SALARY) AS LOWEST_SALARY 
FROM EMPLOYEE;

/*25.Count the number of female employees.*/
SELECT COUNT(*) AS NO_OF_FEMALE_EMP
FROM EMPLOYEE 
WHERE GENDER="Female";

SELECT COUNT(*) AS NO_OF_FEMALE_EMP
FROM EMPLOYEE
GROUP BY GENDER
HAVING GENDER="Female";

/*26.Find the average salary of male employees.*/
SELECT AVG(SALARY) AS AVG_SALARY_MALE_EMP
FROM EMPLOYEE 
WHERE GENDER="Male";

SELECT AVG(SALARY) AS AVG_SALARY_MALE_EMP
FROM EMPLOYEE 
GROUP BY GENDER
HAVING GENDER="Male";

SELECT DEPARTMENT,AVG(SALARY) AS AVG_SALARY_MALE_EMP
FROM EMPLOYEE
WHERE GENDER="Male"
GROUP BY DEPARTMENT;

/*27.Count the number of employees in the IT department.*/
SELECT COUNT(*) AS _IT_EMP
FROM EMPLOYEE 
WHERE DEPARTMENT='IT';

/*28.Find the total salary paid to all employees.*/
SELECT SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEE;

/*29.Find the average experience of employees.*/
SELECT AVG(EXPERIENCE) AS AVG_EXP
FROM EMPLOYEE;

/*30.Count employees whose salary is more than 45,000.*/
SELECT COUNT(*) AS MORE_45K
FROM EMPLOYEE
WHERE SALARY>45000;

#🔹 PART D – GROUP BY & HAVING (Single Table) (10 Questions)
/*31.Display department-wise employee count.*/
SELECT DEPARTMENT,COUNT(*) AS DEPT_EMP 
FROM EMPLOYEE
GROUP BY DEPARTMENT;

/*32.Find department-wise average salary.*/
SELECT DEPARTMENT,AVG(SALARY) AS DEPT_AVG_SALARY
FROM EMPLOYEE
GROUP BY DEPARTMENT;

/*33.Display mother tongue-wise employee count.*/
SELECT MOTHER_TONGUE,COUNT(*) AS MOTHER_TONGUE_EMP
FROM EMPLOYEE
GROUP BY MOTHER_TONGUE;

/*34.Display gender-wise employee count.*/
SELECT GENDER,COUNT(*) AS GENEDR_COUNT_EMP
FROM EMPLOYEE
GROUP BY GENDER;

/*35.Find departments having more than 5 employees.*/
SELECT DEPARTMENT,COUNT(*) AS DEPT_EMP
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING COUNT(*)>5;

/*36.Display mother tongues having average salary above 45,000.*/
SELECT MOTHER_TONGUE,AVG(SALARY) AS AVG_SALARY_MORE_4K
FROM EMPLOYEE
GROUP BY MOTHER_TONGUE
HAVING AVG(SALARY)>45000;

/*37.Find departments where maximum salary exceeds 60,000.*/
SELECT DEPARTMENT,MAX(SALARY) AS MAXIMUM_SALARY
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING MAX(SALARY)>60000;

/*38.Display departments with average experience greater than 4 years.*/
SELECT DEPARTMENT,AVG(EXPERIENCE) AS AVG_EXPERIENCE_MORE_4YRS
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING AVG(EXPERIENCE)>4;

/*39.Find gender-wise average salary.*/
SELECT GENDER,AVG(SALARY)
FROM EMPLOYEE
GROUP BY GENDER;

/*40.Display departments having total salary above 3,00,000.*/
SELECT DEPARTMENT,SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING SUM(SALARY)>300000;

#🔹 PART E – Date & Experience-Based Queries (10 Questions)
/*41. Display employees born after 1998.*/
SELECT *
FROM EMPLOYEE
WHERE DOJ > '1998-12-31';

SELECT * 
FROM EMPLOYEE
WHERE YEAR(DOJ)> '2000';

/*42.Find employees who joined in the year 2020.*/ 
SELECT *
FROM EMPLOYEE
WHERE YEAR(DOJ) = 2020;

/*43.Display employees whose date of birth month is May.*/
SELECT *
FROM EMPLOYEE 
WHERE MONTH(DOJ)=5;

/*44.Find employees with more than 5 years of experience.*/
SELECT*
FROM EMPLOYEE
WHERE EXPERIENCE >5;

/*45.Display employees who joined in the last 3 years.*/
SELECT *
FROM EMPLOYEE 
WHERE DOJ>=DATE_SUB(CURDATE(), INTERVAL 3 YEAR);

/*46.Find the youngest employee (based on DOB).*/
SELECT*
FROM EMPLOYEE
ORDER BY DOB DESC;

SELECT*
FROM EMPLOYEE
ORDER BY DOB DESC LIMIT 1;

/*47.Find the most experienced employee.*/
SELECT * 
FROM EMPLOYEE 
ORDER BY EXPERIENCE DESC;

SELECT * 
FROM EMPLOYEE 
ORDER BY EXPERIENCE DESC LIMIT 1;

/*48.Display employees whose age is greater than 25 years.*/
SELECT EMP_NAME,
timestampdiff(YEAR,DOB,CURDATE())AS AGE
FROM EMPLOYEE
WHERE timestampdiff(YEAR,DOB,CURDATE())>25;

/*49.Find employees who joined before 2020.*/
SELECT * 
FROM EMPLOYEE 
WHERE DOJ<'2020-01-01'; 

SELECT *
FROM EMPLOYEE 
WHERE YEAR(DOJ)<2020;

/*50.Display employees who joined in the same year as their experience value (logic-based).*/
SELECT*
FROM EMPLOYEE
WHERE YEAR(DOJ)=YEAR(CURDATE())-EXPERIENCE;

#⭐ Bonus / Challenge Questions (Optional)
/*51.Categorize employees as Low / Medium / High salary using CASE WHEN.*/
SELECT EMP_NAME,SALARY,
CASE
	WHEN SALARY < 30000 THEN 'Low'
    WHEN SALARY BETWEEN 50000 AND 90000 THEN 'Medium'
    ELSE 'High'
END AS Salary_Category
FROM EMPLOYEE;

-- 52.Calculate current age of each employee using DOB.
SELECT EMP_ID,EMP_NAME,(YEAR(CURDATE()) - YEAR(DOB)) AS EMP_AGE 
FROM EMPLOYEE;

-- 53. Calculate experience from DOJ instead of using the experience column.
SELECT emp_id, emp_name, doj,
TIMESTAMPDIFF(YEAR, doj, CURDATE()) AS experience
FROM employee;

-- 54. Display employees whose salary is above department average.
SELECT emp_id, emp_name, department, salary
FROM employee
WHERE salary >
(
    SELECT AVG(salary)
    FROM employee
);

-- 55. Identify employees eligible for promotion (experience ≥ 5 and salary ≥ 50000) 
SELECT emp_id, emp_name, salary, doj
FROM employee
WHERE TIMESTAMPDIFF(YEAR, doj, CURDATE()) >= 5
AND salary >= 50000;
