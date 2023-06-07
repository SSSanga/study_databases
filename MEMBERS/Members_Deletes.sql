-- MEMBERS의 DB의 TABLE들에 대한 DATA를 다 삭제 하도록 하는 DML 작성
-- members table의 column data만 사라지는것. 
DELETE FROM membewrs_login
WHERE MEMBERS_ID LIKE '%';

DELETE FROM members_hobby
WHERE MEMBERS_ID LIKE '%';

DELETE FROM members
WHERE AGE LIKE '%';

DELETE FROM members
WHERE NAME LIKE '%';

DELETE FROM members
WHERE TELEPHONE LIKE '%';

DELETE FROM members
WHERE ADDRESS_CODE_ID;

DELETE FROM members
WHERE GENDER_CODE_ID;

DELETE FROM members
WHERE MEMBERS_ID;

-- 이 아래 부분들은 table 자체들이 삭제되는것?
-- DELETE FROM members_hobby;

-- DELETE FROM hobby_code;

-- DELETE FROM members;

-- DELETE FROM gender_code;

-- DELETE FROM address_code;






