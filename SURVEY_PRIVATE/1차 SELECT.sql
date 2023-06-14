-- 연습 1--
-- USER1, 질문1, 정답, 질문2, 정답, 질문3, 정답, 질문4, 정답--
-- USER3, 질문1, 정답, 질문2, 정답, 질문3, 정답, 질문4, 정답--
SELECT USER 
FROM user
WHERE USER_ID = 'USER_01';
SELECT SURVEY
FROM survey
WHERE SURVEY_ID = 'SURVEY_01';
SELECT *
FROM answer; -- 이걸 HASHMAP으로 받으면 되겠구나?--

SELECT USER 
FROM user
WHERE USER_ID = 'USER_01';
SELECT SURVEY
FROM survey
WHERE SURVEY_ID = 'SURVEY_02';
SELECT *
FROM answer; -- 이걸 SURVEY랑 JOIN해도 되지 않을까? -- 


