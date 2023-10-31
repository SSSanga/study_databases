SELECT t_QC.QUESTIONS_ID, t_QC.CHOICE_ID, t_Q.QUESTIONS, t_C.CHOICE
FROM question_choice AS t_QC
INNER JOIN questions AS t_Q
ON t_QC.QUESTIONS_ID = t_Q.QUESTIONS_ID -- 질문-답 테이블에 질문 JOIN하기
INNER JOIN choice AS t_C
ON t_QC.CHOICE_ID=t_C.CHOICE_ID -- 질문-답 테이블에 답 JOIN하기
ORDER BY t_QC.QUESTIONS_ID, t_QC.CHOICE_ID;  -- JOIN된 테이블을 각각 ID로 정렬. 

DELETE FROM statistics
WHERE RESPONDENTS_ID = 'R1'; -- DELETE 할때는 UNIQUE-ID로 

-- 설문하기 이후 제출했을 때, R1이 로그인했다 전제하에 
INSERT INTO statistics (STATISTICS_ID,RESPONDENTS_ID,QUESTIONS_ID,CHOICE_ID)
VALUES ('UUID-01','R1','Q1','C1')
,('UUID-02','R1','Q2','C2')
,('UUID-03','R1','Q3','C3')
, ('UUID-04','R1','Q4','C1');


