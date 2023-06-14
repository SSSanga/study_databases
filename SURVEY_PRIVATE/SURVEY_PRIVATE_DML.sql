-- INSERT INTO table_name (column1, column2, column3, ...)
-- VALUES (value1, value2, value3, ...);

INSERT INTO answer (ANSWER, ANSWER_ID)
VALUES ('(1) 전혀 아니다','ANSWER_01'),
('(2) 아니다', 'ANSWER_02'),
('(3) 그렇다', 'ANSWER_03'),
('(4) 매우 그렇다', 'ANSWER_04');

INSERT INTO survey (SURVEY, SURVEY_ID)
VALUES ('1. 수업 전 강의 목표 명확한가?','SURVEY_01'),
('2. 강의 내용 체계적으로 구성되었는가?','SURVEY_02'),
('3. 강의 내용의 전문적 지식이 포함되었는가?','SURVEY_03'),
('4. 강의 속도 적절한가?','SURVEY_04');

INSERT INTO user (USER, USER_ID)
VALUES ('김씨','USER_01'),
('박씨', 'USER_02'),
('이씨', 'USER_03'),
('하씨', 'USER_04');

INSERT INTO results (USER_ID,SURVEY_ID,ANSWER_ID,RESULTS_ID)
VALUES ('USER_01', 'SURVEY_01','ANSWER_03','RESULTS_01'),
('USER_01', 'SURVEY_02','ANSWER_02','RESULTS_02'),
('USER_01', 'SURVEY_03','ANSWER_03','RESULTS_03'),
('USER_01', 'SURVEY_04','ANSWER_04','RESULTS_04'),
('USER_02', 'SURVEY_01','ANSWER_01','RESULTS_05'),
('USER_02', 'SURVEY_02','ANSWER_02','RESULTS_06'),
('USER_02', 'SURVEY_03','ANSWER_02','RESULTS_07'),
('USER_02', 'SURVEY_04','ANSWER_01','RESULTS_08'),
('USER_03', 'SURVEY_01','ANSWER_04','RESULTS_09'),
('USER_03', 'SURVEY_02','ANSWER_02','RESULTS_10'),
('USER_03', 'SURVEY_03','ANSWER_01','RESULTS_11'),
('USER_03', 'SURVEY_04','ANSWER_03','RESULTS_12'),
('USER_04', 'SURVEY_01','ANSWER_01','RESULTS_13'),
('USER_04', 'SURVEY_02','ANSWER_03','RESULTS_14'),
('USER_04', 'SURVEY_03','ANSWER_04','RESULTS_15'),
('USER_04', 'SURVEY_04','ANSWER_02','RESULTS_16');

