SELECT * FROM HumanResources.Employee  
 
--3rd highest salary 

SELECT MAX(Rate) FROM HumanResources.EmployeePayHistory WHERE RATE <  
(SELECT MAX(Rate) FROM HumanResources.EmployeePayHistory WHERE RATE <  
(SELECT MAX(Rate) FROM HumanResources.EmployeePayHistory)) 

--1st and last each employee based on the hire date column 
SELECT MAX(HireDate) FROM HumanResources.Employee

SELECT MIN(HireDate) FROM HumanResources.Employee
  
--most recent transaction of each customer 
SELECT CustomerID, MAX(OrderDate) FROM Sales.SalesOrderHeader 
GROUP BY CustomerID 
 
--total salary of each department 
 
SELECT * FROM HumanResources.Department 
SELECT * FROM HumanResources.EmployeeDepartmentHistory 
 
CREATE VIEW VIEW1 AS
SELECT DepartmentID FROM HumanResources.EmployeeDepartmentHistory ed 
JOIN HumanResources.EmployeePayHistory ep 
ON ed.BusinessEntityID=ep.BusinessEntityID 
GROUP BY DepartmentID 
HAVING SUM(Rate) > 300 

SELECT * FROM VIEW1
 
--running total of order for each customer sorted by order date 

SELECT CustomerID, OrderDate, SUM(TotalDue) FROM Sales.SalesOrderHeader 
GROUP BY CustomerID, OrderDate  
ORDER BY OrderDate 
 
--total no of employees hired per month and year 
SELECT COUNT(BusinessEntityID), MONTH(HireDate), YEAR(HireDate) FROM HumanResources.Employee 
GROUP BY  MONTH(HireDate),YEAR(HireDate) 
 
-- display all employees who earn more than the average salary salary of their department 
CREATE VIEW VIEW2 AS
SELECT e.BusinessEntityID FROM HumanResources.EmployeeDepartmentHistory e 
JOIN HumanResources.EmployeePayHistory p 
ON e.BusinessEntityID=p.BusinessEntityID  
WHERE RATE > ANY  
(SELECT  AVG(Rate) FROM HumanResources.EmployeeDepartmentHistory ed 
JOIN HumanResources.EmployeePayHistory ep 
ON ed.BusinessEntityID=ep.BusinessEntityID 
WHERE e.DepartmentID=ed.DepartmentID 
GROUP BY DepartmentID)

SELECT * FROM VIEW2

--second-lowest salary from employee table

SELECT MIN(Rate) FROM HumanResources.EmployeePayHistory WHERE Rate >
(SELECT MIN(Rate) FROM HumanResources.EmployeePayHistory)

--list all the products that have never been ordered

SELECT * FROM Production.Product
SELECT * FROM Sales.SalesOrderDetail
SELECT * FROM Purchasing.PurchaseOrderDetail

CREATE VIEW VIEW3 AS
SELECT p.ProductID, Name FROM Production.Product p 
LEFT OUTER JOIN  Sales.SalesOrderDetail s
ON p.ProductID=S.ProductID

SELECT * FROM VIEW3

--find employees who have joined in the same month and year
CREATE VIEW VIEW4 AS
SELECT BusinessEntityID, HireDate FROM HumanResources.Employee
WHERE MONTH(HireDate)=1 AND YEAR(HireDate)=2010

SELECT * FROM VIEW4

--get a list of emplyees who are older than their average age of the employees in their department
CREATE VIEW VIEW5 AS
SELECT BusinessEntityID FROM HUmanResources.Employee WHERE DATEDIFF(year,BirthDate,GETDATE())=
(SELECT AVG(DATEDIFF(YEAR,BirthDate,GETDATE())) FROM HUmanResources.Employee )

SELECT * FROM VIEW5