-- This is comment
/* This 
is 
a 
comment */

-- Task - Retrieve all customer data

SELECT *
FROM Customers

-- Task - Retrieve columns

SELECT
FirstName,
Country,
Score
FROM Customers

-- Task - Score != 500

SELECT *
FROM Customers 
WHERE Score != 0

-- Task - Retrieve customer from Germany

SELECT 
FirstName,
Country
FROM Customers
WHERE Country = 'Germany'

/* Task - Retrive all customers and sort
the results by highest score first */

SELECT *
FROM Customers
ORDER BY score DESC

/* Task - Retrive all customers and sort
the results by lowest score first */

SELECT *
FROM Customers
ORDER BY score ASC

/* Task - Retrive all customers and sort
the results by country then by highestll score */

SELECT *
FROM Customers
ORDER BY
Country ASC,
Score DESC

-- Task - total score for each country

SELECT 
Country,
SUM(score) AS TotalScore
FROM Customers
GROUP BY Country

/* Task - Find total score and the total
number of customersfor each country */

SELECT 
Country,
SUM(Score) AS TotalScore,
COUNT(CustomerID) AS TotalCustomers
FROM Customers
GROUP BY Country

/* Task - Find average score for each country
considering only customers with a score not equal to 0
and return only those countries with an average score greater than 430
*/

SELECT 
Country,
AVG(Score) AS AverageScore
FROM Customers
WHERE Score != 0
GROUP BY Country
HAVING AVG(Score) > 430

-- Unique list of all countries

SELECT DISTINCT CustomerID
FROM Customers

-- Retrieve only 3 customers

SELECT TOP 3*
FROM Customers

-- Retrive top 3 customers with the highest customers

SELECT TOP 3*
FROM Customers
ORDER BY Score DESC