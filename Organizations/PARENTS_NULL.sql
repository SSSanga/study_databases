CREATE TABLE ORGANIZATIONS
(
  UNIQUE_ID         VARCHAR(200) NOT NULL COMMENT '대표값',
  DEPARTMENT        VARCHAR(200) NOT NULL COMMENT '부서명',
  PARENTS_UNIQUE_ID VARCHAR(200) NULL     COMMENT '상위대표값',
  PRIMARY KEY (UNIQUE_ID)
) COMMENT '조직도';

ALTER TABLE ORGANIZATIONS
  ADD CONSTRAINT FK_ORGANIZATIONS_TO_ORGANIZATIONS
    FOREIGN KEY (PARENTS_UNIQUE_ID)
    REFERENCES ORGANIZATIONS (UNIQUE_ID);

INSERT INTO organizations (DEPARTMENT, UNIQUE_ID, PARENTS_UNIQUE_ID) VALUES
('이사장', 'P1', null),
('비서실', 'P2', 'P1'),
('이사회', 'P3', 'P1'),
('감사', 'P4', 'P1'),
('감사실', 'P5', 'P4'),
('사무총장', 'P6', 'P1'),
('법률지원단', 'P7', 'P6'),
('기획조정실', 'P8', 'P6'),
('구조국', 'P9', 'P6'),
('행정국', 'P10', 'P6'),
('홍보실', 'P11', 'P6');

SELECT *
FROM organizations
WHERE UNIQUE_ID='P6';

-- P6아래 있는 소속을 확인
SELECT *
FROM organizations
WHERE PARENTS_UNIQUE_ID='P6';

-- 사무장이 소속되어있는 상위자
SELECT *
FROM organizations
WHERE PARENTS_UNIQUE_ID='P1';


