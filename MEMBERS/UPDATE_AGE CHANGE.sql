-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ... < COLUMN 여러개 변경 가능
-- WHERE condition;
-- UPDATE 구문은 정렬이 필요 없음
-- COLUMN =VALUE 교차로 값을 넣는 것을 권장함. 
-- 1. 나이 변경 

UPDATE MEMBERS 
SET AGE = 29
WHERE AGE IN (30 , 25);

SELECT *
FROM MEMBERS
ORDER BY AGE;



