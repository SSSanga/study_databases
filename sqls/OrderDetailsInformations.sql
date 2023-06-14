-- TABLE: OrderDetails
-- 조건: 고객명, 제품명, 가격, 주문 개수 표시. 
-- ** 레코드 적은 쪽 ->  레코드 많은 쪽 병합
-- OrderDetails (518 REDORD): OrderDetailID, OrderID(공통), ProductID, Qauntity= 주문 개수
-- Products (77 RECORD): ProductID(공통), ProductName, Price 
-- Orders (196 RECORD): OrderID (공통), CustomerID(공통)....
-- Customers (91 RECORD): CustomerID, CustomerName, ContactName ....
-- 고객명은 LAST, 1차는 ProductID을 ORDERDETAILS와 연결_PRODUCT의 NAME, PRIC, QUNATITY 알수 있음. 

-- 1차 --
(SELECT *
FROM Products AS t_PRD
	INNER JOIN OrderDetails AS t_ORD_DT
    ON t_PRD.ProductID =t_ORD_DT.ProductID)AS t_PRD_INF

-- 2차 -- 
-- Orders의 OrderID를 tPRD_INF에 연결해버리자.
(SELECT t_ORD_INF.OrderID,t_ORD_INF.CustomerID,t_PRD_INF.ProductID,t_PRD_INF.ProductName,t_PRD_INF.Price,t_PRD_INF.Quantity
FROM Orders AS t_ORD_INF
        INNER JOIN (SELECT * FROM Products AS t_PRD
	                INNER JOIN OrderDetails AS t_ORD_DT
                    ON t_PRD.ProductID =t_ORD_DT.ProductID)AS t_PRD_INF
        ON t_ORD_INF.OrderID=t_PRD_INF.OrderID) AS t_CUST_ORD

-- 3차 --
-- 아직 CustomerID이게 누구인지 모름ㅎㅎ+Customers JOIN 필요
SELECT *
FROM Customers AS t_CUST
    INNER JOIN (SELECT t_ORD_INF.OrderID,t_ORD_INF.CustomerID,t_PRD_INF.ProductID,t_PRD_INF.ProductName,t_PRD_INF.Price,t_PRD_INF.Quantity
                FROM Orders AS t_ORD_INF
                    INNER JOIN (SELECT * FROM Products AS t_PRD
	                            INNER JOIN OrderDetails AS t_ORD_DT
                                    ON t_PRD.ProductID =t_ORD_DT.ProductID)AS t_PRD_INF
                 ON t_ORD_INF.OrderID=t_PRD_INF.OrderID) AS t_CUST_ORD
    ON t_CUST.CustomerID = t_CUST_ORD.CustomerID;

-- 4차 --
-- SELECT 문에서 필요한 COLUMN만 표시하기: 고객명, 제품명, 가격, 주문 개수 표시. 
SELECT t_CUST.CustomerID, t_CUST.CustomerName, t_CUST_ORD.OrderID, t_CUST_ORD.ProductID, t_CUST_ORD.ProductName, t_CUST_ORD.Price, t_CUST_ORD.Quantity
FROM Customers AS t_CUST
    INNER JOIN (SELECT t_ORD_INF.OrderID,t_ORD_INF.CustomerID,t_PRD_INF.ProductID,t_PRD_INF.ProductName,t_PRD_INF.Price,t_PRD_INF.Quantity
                FROM Orders AS t_ORD_INF
                    INNER JOIN (SELECT * FROM Products AS t_PRD
	                            INNER JOIN OrderDetails AS t_ORD_DT
                                    ON t_PRD.ProductID =t_ORD_DT.ProductID)AS t_PRD_INF
                 ON t_ORD_INF.OrderID=t_PRD_INF.OrderID) AS t_CUST_ORD
    ON t_CUST.CustomerID = t_CUST_ORD.CustomerID
      ORDER BY t_CUST.CustomerID ;

-- ==RESULTS==
-- Number of Records: 518
-- CustomerID	CustomerName	OrderID	ProductID	ProductName	Price	Quantity
-- 2	Ana Trujillo Emparedados y helados	10308	69	Gudbrandsdalsost	36	1
-- 2	Ana Trujillo Emparedados y helados	10308	70	Outback Lager	15	5
-- 3	Antonio Moreno Taquería	10365	11	Queso Cabrales	21	24
-- 4	Around the Horn	10355	24	Guaraná Fantástica	4.5	25
-- 4	Around the Horn	10355	57	Ravioli Angelo	19.5	25
-- .................
-- THINK?? PRODUCT ID를 GROUP BY 해버리면??


