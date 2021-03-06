-- DROP TABLE QNA CASCADE CONSTRAINTS;

-- SELECT * FROM QNA;

DROP SEQUENCE QNA_SEQ;
CREATE SEQUENCE QNA_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 9999999
NOCYCLE
NOCACHE;

DROP TABLE QNA;
CREATE TABLE QNA(								-- QNA 테이블
	Q_NO NUMBER PRIMARY KEY,					-- 문의번호
	Q_M_NO NUMBER,								-- 작성자 NO
	Q_P_NO NUMBER,								-- 제품번호
	Q_TITLE VARCHAR2(200) NOT NULL,				-- 문의제목
	Q_CONTENT VARCHAR2(1000) NOT NULL,			-- 문의내용
	Q_PW VARCHAR2(30),							-- 비밀번호
	Q_DATE DATE,								-- 작성일
	Q_HIT NUMBER,								-- 조회수
	Q_FILENAME VARCHAR2(300),					-- 첨부파일
	Q_SECRET VARCHAR(20),						-- 비밀글 유무 (y,n)
	FOREIGN KEY (Q_M_NO) REFERENCES MEMBERS (M_NO) ON DELETE CASCADE,
	FOREIGN KEY (Q_P_NO) REFERENCES PRODUCT (P_NO) ON DELETE CASCADE
);

--	Q_GROUP NUMBER NOT NULL,                 -- 게시글 구분 
--	Q_GROUPORD NUMBER NOT NULL,              -- 정렬순서
--	Q_DEPTH NUMBER NOT NULL,                 -- 글의순번

-- INSERT --
INSERT INTO QNA VALUES(QNA_SEQ.NEXTVAL,4,20,'먼가요','단추가다떨어졌어요','1q2w3e4r',SYSDATE,0,'review1.jpg','y');
INSERT INTO QNA VALUES(QNA_SEQ.NEXTVAL,4,13,'이상해요','단추가다떨어졌어요','1q2w3e4r',SYSDATE,0,'review2.jpg','y');
INSERT INTO QNA VALUES(QNA_SEQ.NEXTVAL,5,12,'배송문의','언제도착하나요',NULL,SYSDATE,0,NULL,'n');
INSERT INTO QNA VALUES(QNA_SEQ.NEXTVAL,5,23,'문의드립니다','단추가다떨어졌어요','1q2w3e4r',SYSDATE,0,'review3.jpg','y');
INSERT INTO QNA VALUES(QNA_SEQ.NEXTVAL,5,17,'진짜머죠','단추가다떨어졌어요','1q2w3e4r',SYSDATE,0,'review4.jpg','y');
INSERT INTO QNA VALUES(QNA_SEQ.NEXTVAL,5,14,'이해안됩니다','단추가다떨어졌어요','1q2w3e4r',SYSDATE,0,'review2.jpg','y');
INSERT INTO QNA VALUES(QNA_SEQ.NEXTVAL,5,30,'안오나요','주문한지일주일지났습니다',NULL,SYSDATE,0,NULL,'n');
INSERT INTO QNA VALUES(QNA_SEQ.NEXTVAL,6,31,'진짜로우','단추가다떨어졌어요','1q2w3e4r',SYSDATE,0,'review5.jpg','y');
INSERT INTO QNA VALUES(QNA_SEQ.NEXTVAL,6,9,'정말로','단추가다떨어졌어요','1q2w3e4r',SYSDATE,0,'review6.jpg','y');
