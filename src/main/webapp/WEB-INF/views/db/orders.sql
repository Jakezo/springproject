-- DROP TABLE ORDERS CASCADE CONSTRAINTS;

-- SELECT * FROM ORDERS;

DROP SEQUENCE ORDERS_SEQ;
CREATE SEQUENCE ORDERS_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 9999999
NOCYCLE
NOCACHE;

DROP TABLE ORDERS;
CREATE TABLE ORDERS(							-- 주문테이블
	O_NO NUMBER PRIMARY KEY,					-- 주문번호
	O_M_NO NUMBER NOT NULL,						-- 회원번호
	O_P_NO NUMBER NOT NULL,						-- 상품번호
	O_AMOUNT VARCHAR2(10) NOT NULL,				-- 주문수량
	O_REGDATE DATE NOT NULL,					-- 주문일자
	O_NAME VARCHAR2(30),						-- 주문자이름
	O_ADDR1 VARCHAR2(20) NOT NULL,				-- 수령자주소
	O_ADDR2 VARCHAR2(100) NOT NULL,				-- 수령자주소
	O_ADDR3 VARCHAR2(100),						-- 수령자주소
	O_CELLPHONE VARCHAR2(100) NOT NULL,			-- 수령자연락처
	O_PAYMENT VARCHAR2(10) NOT NULL,			-- 결제방법
	O_NOTE VARCHAR2(4000),						-- 기타메모
	O_PRICE VARCHAR2(100) NOT NULL,				-- 주문금액
	O_POINT VARCHAR2(20),
	O_IDX NUMBER,
	O_DELIVERY VARCHAR2(100) DEFAULT '배송준비중',
	FOREIGN KEY (O_M_NO) REFERENCES MEMBERS (M_NO) ON DELETE CASCADE,
	FOREIGN KEY (O_P_NO) REFERENCES PRODUCT (P_NO) ON DELETE CASCADE
);

INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,4,20,1,SYSDATE,'홍길동','(10544)','경기 고양시 덕양구 가양대로 110','(덕은동)','010-1111-1111','1',NULL,'258000','0',2,'배송완료');
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,4,13,2,SYSDATE,'홍길동','(10544)','경기 고양시 덕양구 가양대로 110','(덕은동)','010-1111-1111','1',NULL,'288000','0',2,'배송완료');
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,4,5,1,SYSDATE,'홍길동','(10544)','경기 고양시 덕양구 가양대로 110','(덕은동)','010-1111-1111','1',NULL,'288000','0',3,'배송중');
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,4,11,3,SYSDATE,'홍길동','(10544)','경기 고양시 덕양구 가양대로 110','(덕은동)','010-1111-1111','1',NULL,'268000','0',3,'배송중');
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,4,2,1,SYSDATE,'홍길동','(10544)','경기 고양시 덕양구 가양대로 110','(덕은동)','010-1111-1111','1',NULL,'288000','0',4,DEFAULT);
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,4,39,1,SYSDATE,'홍길동','(10544)','경기 고양시 덕양구 가양대로 110','(덕은동)','010-1111-1111','1',NULL,'199000','0',4,DEFAULT);

INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,5,12,1,SYSDATE,'임꺽정','(10439)','경기 고양시 덕양구 강매로 5-46','(행주내동)','010-2222-2222','1',NULL,'288000','0',5,'배송완료');
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,5,23,1,SYSDATE,'임꺽정','(10439)','경기 고양시 덕양구 강매로 5-46','(행주내동)','010-2222-2222','1',NULL,'368000','0',5,'배송완료');
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,5,17,2,SYSDATE,'임꺽정','(10439)','경기 고양시 덕양구 강매로 5-46','(행주내동)','010-2222-2222','1',NULL,'258000','0',5,'배송완료');
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,5,14,1,SYSDATE,'임꺽정','(10439)','경기 고양시 덕양구 강매로 5-46','(행주내동)','010-2222-2222','1',NULL,'288000','0',5,'배송완료');
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,5,30,1,SYSDATE,'임꺽정','(10439)','경기 고양시 덕양구 강매로 5-46','(행주내동)','010-2222-2222','1',NULL,'129000','0',5,'배송완료');

INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,6,31,1,SYSDATE,'김광현','(10895)','경기 파주시 가람로 6','(와동동)','010-3333-3333','1',NULL,'129000','0',6,'배송완료');
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,6,9,1,SYSDATE,'김광현','(10895)','경기 파주시 가람로 6','(와동동)','010-3333-3333','1',NULL,'268000','0',6,'배송완료');
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,6,22,1,SYSDATE,'김광현','(10895)','경기 파주시 가람로 6','(와동동)','010-3333-3333','1',NULL,'368000','0',7,DEFAULT);
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,6,18,1,SYSDATE,'김광현','(10895)','경기 파주시 가람로 6','(와동동)','010-3333-3333','1',NULL,'258000','0',7,DEFAULT);

INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,7,30,1,SYSDATE,'장원준','(16597)','경기 수원시 권선구 권선로 390','(평동)','010-4444-2222','1',NULL,'129000','0',8,'배송중');
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,7,14,1,SYSDATE,'장원준','(16597)','경기 수원시 권선구 권선로 390','(평동)','010-4444-2222','1',NULL,'288000','0',8,'배송중');
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,7,39,1,SYSDATE,'장원준','(16597)','경기 수원시 권선구 권선로 390','(평동)','010-4444-2222','1',NULL,'199000','0',8,'배송중');

INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,8,26,1,SYSDATE,'류현진','(12265)','경기 남양주시 가운로가재울길 1','(다산동)','010-5555-5555','1',NULL,'148000','0',9,DEFAULT);
INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,8,19,1,SYSDATE,'류현진','(12265)','경기 남양주시 가운로가재울길 1','(다산동)','010-5555-5555','1',NULL,'258000','0',9,DEFAULT);

INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,9,24,1,SYSDATE,'이승엽','(06307)','서울 강남구 개포로 202','(개포동)','010-6666-6666','1',NULL,'148000','0',10,DEFAULT);

INSERT INTO ORDERS VALUES(ORDERS_SEQ.NEXTVAL,10,12,1,SYSDATE,'한국영','(02591)','서울 동대문구 서울시립대로3길 6','(전농동)','010-7777-7777','1',NULL,'288000','0',11,'배송중');



