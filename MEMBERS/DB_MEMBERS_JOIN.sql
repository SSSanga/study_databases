-- join 배우기
-- SELECT ?
-- FROM TABLE1번
	-- INNER JOIN TABLE2번 
    -- ON CONDITION 1과 2번을 어떤 조건으로 묶을건데?
-- 첫번째 예제, MEMEBERS와 MEMBERS LOGIN
-- 공통점을 먼저 찾는다: 주요 공통점 MEMBERS ID
-- FROM 에서 PRIMARY KEY가 존재하는 TABLE을 1번으로 주로 함. 

-- FROM members AS T_MEMS
-- 	INNER JOIN members_login AS T_MEMS_LOGIN
--    -- ON MEMBERS_ID = MEMBERS_ID <<이런 상황에서 ALIASE를 사용하는 것을 권장.
--    								-- 물론 TABLE.으로 해도 되지만 추후 빅데이터때 필요함. 미리 연습 필. 
--     ON T_MEMS.MEMBERS_ID = T_MEMS_LOGIN.MEMBERS_ID;
    
-- SELECT T_MEMS.*, T_MEMS_LOGIN.* << 이러면 중복이 있음, 그래서 COLUMN명을 지정해줘야함. 
-- FROM members AS T_MEMS
-- 	INNER JOIN members_login AS T_MEMS_LOGIN
--     ON T_MEMS.MEMBERS_ID = T_MEMS_LOGIN.MEMBERS_ID; 
    
SELECT COUNT(*), T_MEMS.AGE -- .*, T_MEMS_LOGIN.EMAIL, T_MEMS_LOGIN.MEMBERS_LOGIN_ID
FROM members AS T_MEMS
	INNER JOIN members_login AS T_MEMS_LOGIN
    ON T_MEMS.MEMBERS_ID = T_MEMS_LOGIN.MEMBERS_ID -- 최종 + GROUP BY (가상테이블이 만들어진 것으로 = T_MEMS와 T_MEMS_LOGIN이 JOIN된 테이블에서) 
GROUP BY T_MEMS.AGE; -- GROUP BY가 있으면 FUNCTION을 쓴다. 



