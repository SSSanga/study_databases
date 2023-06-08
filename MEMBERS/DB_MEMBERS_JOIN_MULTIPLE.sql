-- N 대 N JOIN
-- SELECT T_MEMS.*, T_MEMS_LOGIN.EMAIL
-- FROM members AS T_MEMS
-- 	INNER JOIN members_login AS T_MEMS_LOGIN
--     ON T_MEMS.MEMBERS_ID = T_MEMS_LOGIN.MEMBERS_ID; 
    
    -- 이 조인된 로그인에서 GENDER_CODE_ID
    -- 주가 되는 TABLE이 첫번째 TABLE이 되는것이 좋다. (여기선 성별보단 회원정보가 더 중요하므로....??)
    -- 그래서 위의 LOGIN의 JOIN을 1개의 TABLE로 생각할것. 
    
    -- 현재 버전에서 JOIN해서 만든 가상의 TABLE의 AS가 먹히지 않으므로 FROM에 그냥 붙여 넣고 
    -- INNER JOIN에 필요한 부분의 조건을 가져오면 됨. 
SELECT T_MEMS.*, T_MEMS_LOGIN.EMAIL, T_GENDERS.GENDER
FROM (members AS T_MEMS
	INNER JOIN members_login AS T_MEMS_LOGIN
    ON T_MEMS.MEMBERS_ID = T_MEMS_LOGIN.MEMBERS_ID) 
	INNER JOIN gender_code AS T_GENDERS
    ON T_MEMS.GENDER_CODE_ID = T_GENDERS.GENDER_CODE_ID   -- << FROM JOIN된 TABLE의 조건. 
    