-- COUSTOMERS와 ORDERS를 JOIN 시키고 -> PRIMARY KEY는 CUSTOMERID
-- COUSTOMER의 ORDER 개수를 출력
-- CustomerName별로 
-- TABLE NAME: Customers, Orders
-- JOIN PRIMARY KEY: CustomerID

-- SELECT COUNT(*),
-- FROM Customers AS t_CUSTOM
-- 	INNER JOIN Orders AS t_ORDERS
--     ON t_CUSTOM.CustomerID = t_ORDERS.CustomerID
-- GROUP BY t_ORDERS.OrderID; 
-- >> 처음 작성했을 때는  그룹을 ORDERS로 묶었는데 이러면 고객별로 주문량이 안보임 
-- = ORDERID가 고유번호가 되버려서.. 
-- GROUP을 고객ID로 묶어야 보임. 

SELECT COUNT(t_ORDERS.OrderID) AS TOTAL_ORDER, t_CUSTOM.CustomerName,t_CUSTOM.CustomerID 
FROM Customers AS t_CUSTOM
	INNER JOIN Orders AS t_ORDERS
    ON t_CUSTOM.CustomerID = t_ORDERS.CustomerID
GROUP BY t_CUSTOM.CustomerID;

-- RESULTS
-- Number of Records: 74
-- TOTAL_ORDER	CustomerName	CustomerID
-- 1	Ana Trujillo Emparedados y helados	2
-- 1	Antonio Moreno Taquería	3
-- 2	Around the Horn	4
-- 3	Berglunds snabbköp	5
-- 4	Blondel père et fils	7
-- 1	Bólido Comidas preparadas	8
-- 3	Bon app'	9
-- 4	Bottom-Dollar Marketse	10
-- 1	B's Beverages	11
-- 1	Centro comercial Moctezuma	13
-- 2	Chop-suey Chinese	14
-- 1	Comércio Mineiro	15
-- 1	Consolidated Holdings	16
-- ..........