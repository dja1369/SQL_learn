--회원 테이블
CREATE TABLE customer_member(
    cm_cusnum NUMBER PRIMARY KEY, -- 회원번호
    cm_userid varchar2(10) NOT NULL, --아이디
    cm_name varchar (10) NOT NULL, -- 이름
    cm_hp varchar (15), -- 전화 첫번째칸
    cm_zipcode1 VARCHAR(5), -- 우편번호 
    cm_address1 VARCHAR(20), -- 기본 주소
    cm_address2 VARCHAR(20), -- 상세 주소
    cm_birthday VARCHAR(8) -- 생년월일
);
SELECT*FROM customer_member;

--회원 시퀀스 생성
CREATE SEQUENCE CUSTOMER_MEMBER_SEQ
INCREMENT BY 1;
--start with 2; --기존에 한명이 추가 되어있을땐 2부터

--회원가입 및 추가
INSERT INTO customer_member VALUES (1000,'KIM','김김김','010-1111-2222','10101','사상구','동서대학교','970101');
INSERT INTO customer_member VALUES (1001,'LEE','이이이','010-1112-2223','10102','사상구','동서대학교','970201');
INSERT INTO customer_member VALUES (1002,'BAK','박박박','010-1113-2224','10103','사상구','동서대학교','970301');

--회원가입 프로시저 실행
EXEC CUSTOMER_INSERT(1003,'gin','긴긴긴','010-1114-2225','10104','사상구','동서대학교','970401');

SELECT*FROM customer_member;

-- 도서테이블 생성
CREATE TABLE book_books(
     bb_code varchar2(4) PRIMARY KEY,
     bb_name VARCHAR(100) NOT NULL,   
     bb_price NUMBER NOT NULL,   
     bb_shop varchar2(20) NOT NULL,
     bb_writer varchar2(20) NOT NULL,
     bb_registdate DATE DEFAULT sysdate
     
);
-- 도서 시퀀스 생성
CREATE SEQUENCE BOOK_BOOKS_SEQ
INCREMENT BY 1;

--도서 추가
INSERT INTO BOOK_BOOKS VALUES ('0001','자바의 정석',25000,'돋움','남궁성',sysdate);
INSERT INTO BOOK_BOOKS VALUES ('0002','거꾸로 읽는 세계사',15750,'돌베개','윤성표',sysdate);
INSERT INTO BOOK_BOOKS VALUES ('0003','듄.1',22500,'황금가지','외국인',sysdate);
INSERT INTO BOOK_BOOKS VALUES ('0004','그냥 하지 말라',15300,'북스톤','주식쟁이',sysdate);
INSERT INTO BOOK_BOOKS VALUES ('0005','주식투자 절대원칙',15300,'센시오','워렌버핏',sysdate);

SELECT * FROM book_books;