-- 조건: table Orders에서 EmployeeID가 7,9 직원의 각각 주문 갯수
-- EmployeeID 7: 14개, EmployeeID 9:6개
SELECT COUNT(*)
FROM Orders 
WHERE EmployeeID IN (7, 9)
GROUP BY EmployeeID;

-- RESULT_ Number of Records: 2
-- COUNT(*)
-- 14
-- 6
