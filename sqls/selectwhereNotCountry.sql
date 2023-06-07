SELECT * FROM Customers
WHERE Country NOT IN ('Germany') AND Country NOT IN ('USA');
-- RESULT Number of Records: 67
-- UK가 아니라 USA 였음. 

-- WHERE Country <> 'Germany' AND Country <> 'UK';
-- -- Number of Records: 73
-- SELECT * FROM Customers
-- WHERE Country NOT IN ('Germany') AND Country NOT IN ('UK');
-- -- Number of Records: 73