SELECT * FROM Customers
-- WHERE Country <> 'Germany' AND Country <> 'UK';
-- -- Number of Records: 73
SELECT * FROM Customers
WHERE Country NOT IN ('Germany') AND Country NOT IN ('UK');
-- Number of Records: 73