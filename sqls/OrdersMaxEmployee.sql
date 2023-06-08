-- W3SCHOOL로 실습
-- TABLE: Orders
-- 조건: 가장 많이 주문 받은 회사의 직원명, 주문 수량
-- Orders 테이블엔 OrderID, CustomerID, EmployeeID등 있음
-- Orders테이블의 EmployeeID, , Employees테이블의 EmployeeID
-- 1.여기서 주가 되는 table을 employees 테이블로 하자. 
-- 2. JOIN의 ON 조건은 EmployeeID다. 
-- 3.아래 select는 employeeID로 그룹하고 OrderID를 count 한것. 

-- SELECT COUNT(t_ORD.OrderID) AS TOTAL_ORD,t_EMP.LastName, t_EMP.FirstName 
-- FROM Employees AS t_EMP
--  	INNER JOIN Orders AS t_ORD
-- 	ON t_EMP.EmployeeID = t_ORD.EmployeeID
-- GROUP BY t_EMP.EmployeeID

-- 여기서 ordercount의 max를 쓰면 되는건가????
-- 이 SELECT구문을 INNER로 만들고 MAX를 찾으면 되나봄. 
SELECT MAX(t_COUNT.TOTAL_ORD) AS MAX_TOTAL_ORD,t_COUNT.LastName,t_COUNT.FirstName  
FROM
(SELECT COUNT(t_ORD.OrderID) AS TOTAL_ORD,t_EMP.LastName, t_EMP.FirstName 
FROM Employees AS t_EMP
 	INNER JOIN Orders AS t_ORD
	ON t_EMP.EmployeeID = t_ORD.EmployeeID
GROUP BY t_EMP.EmployeeID) AS t_COUNT;

-- RESULT
-- Number of Records: 1
-- MAX_TOTAL_ORD	LastName	FirstName
-- 40	Peacock	Margaret