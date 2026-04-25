--1	. Write an SQL query to fetch the EmpId and FullName of all the employees working under the Manager with id – ‘986’.
SELECT EmpId, FullName
FROM [dbo].[Employee_Details$]
WHERE ManagerId = 986

--2	Write an SQL query to fetch the different projects available from the EmployeeSalary table.
SELECT DISTINCT(Project)
FROM [dbo].[Employee_Salary$]

--3	Write an SQL query to fetch the count of employees working in project ‘P1’.
SELECT COUNT(EmpId) AS 'No. of P1 Employees'
FROM [dbo].[Employee_Salary$]
WHERE Project = 'P1'

--4	Write an SQL query to find the maximum, minimum, and average salary of the employees.

SELECT MAX(Salary) AS Maximum_Salary,
MIN(Salary) AS Minimum_Salary,
AVG(Salary) AS Average_Salary
FROM [dbo].[Employee_Salary$]

-- OR

SELECT Project,
MAX(Salary) AS Maximum_Salary,
MIN(Salary) AS Minimum_Salary,
AVG(Salary) AS Average_Salary
FROM [dbo].[Employee_Salary$]
GROUP BY Project

--5	Write an SQL query to find the employee id whose salary lies in the range of 9000 and 15000.
SELECT EmpId, Salary
FROM [dbo].[Employee_Salary$]
WHERE Salary BETWEEN 9000 AND 15000

--6	Write an SQL query to fetch those employees who live in Toronto and work under the manager with ManagerId – 321.
SELECT *
FROM [dbo].[Employee_Details$]
WHERE City = 'Toronto' AND ManagerId = 321

--7	Write an SQL query to fetch all the employees who either live in California or work under a manager with ManagerId – 321.
SELECT *
FROM [dbo].[Employee_Details$]
WHERE City = 'California' OR ManagerId = 321

--8	Write an SQL query to fetch all those employees who work on Projects other than P1.
SELECT *
FROM [dbo].[Employee_Salary$]
WHERE Project != 'P1'

-- OR
SELECT *
FROM [dbo].[Employee_Salary$]
WHERE Project <> 'P1'

--9	Write an SQL query to display the total salary of each employee adding the Salary with Variable value.
SELECT EmpId, Project, Salary + Variable AS [Total Salary]
FROM [dbo].[Employee_Salary$]


--10	Write an SQL query to fetch the employees whose name begins with any two characters, followed by a text “hn” and ends with any sequence of characters.
SELECT *
FROM [dbo].[Employee_Details$]
WHERE FullName LIKE '__hn%'

--11	Write an SQL query to fetch all the EmpIds which are present in either of the tables – ‘EmployeeDetails’ and ‘EmployeeSalary’.
SELECT EmpId 
FROM [dbo].[Employee_Details$]
UNION
SELECT EmpId
FROM [dbo].[Employee_Salary$]

SELECT *
FROM [dbo].[Employee_Details$] AS EmpD
INNER JOIN [dbo].[Employee_Salary$] AS EmpS
	ON EmpD.EmpId = EmpS.EmpId

