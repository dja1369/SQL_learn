--ȸ�� ���̺�
CREATE TABLE customer_member(
    cm_cusnum NUMBER PRIMARY KEY, -- ȸ����ȣ
    cm_userid varchar2(10) NOT NULL, --���̵�
    cm_name varchar (10) NOT NULL, -- �̸�
    cm_hp varchar (15), -- ��ȭ ù��°ĭ
    cm_zipcode1 VARCHAR(5), -- �����ȣ 
    cm_address1 VARCHAR(20), -- �⺻ �ּ�
    cm_address2 VARCHAR(20), -- �� �ּ�
    cm_birthday VARCHAR(8) -- �������
);
SELECT*FROM customer_member;

--ȸ�� ������ ����
CREATE SEQUENCE CUSTOMER_MEMBER_SEQ
INCREMENT BY 1;
--start with 2; --������ �Ѹ��� �߰� �Ǿ������� 2����

--ȸ������ �� �߰�
INSERT INTO customer_member VALUES (1000,'KIM','����','010-1111-2222','10101','���','�������б�','970101');
INSERT INTO customer_member VALUES (1001,'LEE','������','010-1112-2223','10102','���','�������б�','970201');
INSERT INTO customer_member VALUES (1002,'BAK','�ڹڹ�','010-1113-2224','10103','���','�������б�','970301');

--ȸ������ ���ν��� ����
EXEC CUSTOMER_INSERT(1003,'gin','����','010-1114-2225','10104','���','�������б�','970401');

SELECT*FROM customer_member;

-- �������̺� ����
CREATE TABLE book_books(
     bb_code varchar2(4) PRIMARY KEY,
     bb_name VARCHAR(100) NOT NULL,   
     bb_price NUMBER NOT NULL,   
     bb_shop varchar2(20) NOT NULL,
     bb_writer varchar2(20) NOT NULL,
     bb_registdate DATE DEFAULT sysdate
     
);
-- ���� ������ ����
CREATE SEQUENCE BOOK_BOOKS_SEQ
INCREMENT BY 1;

--���� �߰�
INSERT INTO BOOK_BOOKS VALUES ('0001','�ڹ��� ����',25000,'����','���ü�',sysdate);
INSERT INTO BOOK_BOOKS VALUES ('0002','�Ųٷ� �д� �����',15750,'������','����ǥ',sysdate);
INSERT INTO BOOK_BOOKS VALUES ('0003','��.1',22500,'Ȳ�ݰ���','�ܱ���',sysdate);
INSERT INTO BOOK_BOOKS VALUES ('0004','�׳� ���� ����',15300,'�Ͻ���','�ֽ�����',sysdate);
INSERT INTO BOOK_BOOKS VALUES ('0005','�ֽ����� �����Ģ',15300,'���ÿ�','��������',sysdate);

SELECT * FROM book_books;