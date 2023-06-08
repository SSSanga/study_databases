-- TABLE : Products
-- CategoryID가 10개 이상


SELECT COUNT(T_PRD.CategoryID) AS CNT_CatID, T_PRD.CategoryID
FROM Products AS T_PRD
GROUP BY T_PRD.CategoryID
HAVING COUNT(T_PRD.CategoryID) >= 10;
-- 우연히 걸린거같다. 
-- 나는 문제를 제대로 이해하지 못했음. 
-- > CategoryID가 10인걸 찾는게 아니라 CategoryID가 10개 이상인 조건을 찾는것
-- > 이해력이 떨어지고 있음. 
