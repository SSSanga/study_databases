-- GENDER CODE
INSERT INTO gender
(GENDER,GENDER_ID)
VALUES
('남자','G-03');

INSERT INTO gender
(GENDER,GENDER_ID)
VALUES
('여자','G-07');

-- ADDRESS CODE
INSERT INTO address
(ADDRESS,ADDRESS_ID)
VALUES
('서울시','A-01'),
('부산시','A-02'),
('인천시','A-03'),
('대구시','A-04'),
('경기도','A-05'),
('광주시','A-06'),
('대전시','A-07'),
('울산시','A-08');

-- HOBBY CODE
INSERT INTO hobby_type
(HOBBY,HOBBY_TYPE_ID)
VALUES
('등산', 'H-01'),
('요리', 'H-02'),
('음악 감상', 'H-03'),
('여행', 'H-04'),
('축구', 'H-05'),
('영화 감상', 'H-06'),
('그림 그리기', 'H-07'),
('독서', 'H-08'),
('게임', 'H-09'),
('음식 탐구', 'H-10'),
('수영', 'H-11'),
('피아노 연주', 'H-12');

-- 회원정보 
INSERT INTO mem_inform
(NAME,AGE,PHONE,UNIQUE_ID,GENDER_ID,ADDRESS_ID)
VALUES
('홍길동',25,'010-1234-5678','M-01','G-03','A-01'),
('김영희',30,'010-9876-5432','M-02','G-07','A-02'),
('이철수',28,'010-5555-7777','M-03','G-03','A-03'),
('박지원',23,'010-2222-3333','M-04','G-07','A-04'),
('최성민',26,'010-4444-6666','M-05','G-03','A-05'),
('김철호',32,'010-7777-8888','M-06','G-03','A-06'),
('이지은',29,'010-9999-1111','M-07','G-07','A-07'),
('정민준',27,'010-2222-3333','M-08','G-03','A-08');

-- 회원 로그인
INSERT INTO login
(EMAIL,UNIQUE_ID,LOGIN_ID)
VALUES
('honggildong@gmail.com','M-01','L-01'),
('kimyounghee@gmail.com','M-02','L-02'),
('leechulsu@gmail.com','M-03','L-03'),
('parkjiwon@gmail.com','M-04','L-04'),
('choiseongmin@gmail.com','M-05','L-05'),
('kimcheolho@gmail.com','M-06','L-06'),
('leejiun@gmail.com','M-07','L-07'),
('jeongminjun@gmail.com','M-08' ,'L-08');

-- 회원 취미
INSERT INTO mem_hobby
(UNIQUE_ID,HOBBY_TYPE_ID)
VALUES
('M-01', 'H-01'),
('M-01', 'H-02'),
('M-02', 'H-03'),
('M-02', 'H-04'),
('M-03', 'H-05'),
('M-03', 'H-06'),
('M-04', 'H-07'),
('M-04', 'H-08'),
('M-05', 'H-09'),
('M-05', 'H-10'),
('M-06', 'H-11'),
('M-06', 'H-06'),
('M-07', 'H-12'),
('M-07', 'H-08'),
('M-08', 'H-02'),
('M-08', 'H-04');
