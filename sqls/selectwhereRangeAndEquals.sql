SELECT * FROM Customers
WHERE CustomerID BETWEEN 50 AND 89  AND City IN ('London');
-- CustomerID가 50에서 89이고 City가 London인 고객
-- Result 
-- CustomerID: 53/ CustomerName: North/South /ContactName: Simon Crowther
-- CustomerID: 72/ CustomerName: Seven Seas Imports /ContactName: Hari Kumar