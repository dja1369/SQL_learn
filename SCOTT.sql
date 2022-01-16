SELECT
    * FROM EMP
    WHERE deptno = 30;

DESC EMP;    

SELECT
    * FROM EMP
WHERE JOB = 'MANAGER';

SELECT
    * FROM EMP
WHERE DEPTNO = 30
    AND JOB = 'SALESMAN';
    
SELECT EMPNO, ENAME, JOB
     FROM EMP
WHERE DEPTNO = 30
    OR JOB = 'CLERK';
    
SELECT SAL
    FROM EMP
WHERE SAL != 2850; 

SELECT SAL
     FROM EMP
WHERE SAL <> 2850;

SELECT
    * FROM EMP
WHERE JOB ='MANAGER'
    OR JOB = 'SALESMAN' 
    OR JOB = 'CLERK';
    
SELECT
    * FROM EMP
WHERE JOB IN('MANAGER', 'SALESMAN', 'CLERK');

SELECT
    * FROM EMP
WHERE JOB NOT IN('MANAGER', 'SALESMAN', 'CLERK');

SELECT
    * FROM EMP
WHERE DEPTNO IN(10, 20)
ORDER BY DEPTNO DESC, JOB ASC, EMPNO;

SELECT * FROM EMP
WHERE SAL BETWEEN 2000 AND 3000;

SELECT * FROM EMP
WHERE SAL NOT BETWEEN 2000 AND 3000; -- SAL 2000 ~ 3000 ���̰� �ƴѰ� 

-- �̸��� M���� �����ϴ� ��� 

SELECT * FROM EMP 
WHERE ENAME LIKE  'M%';

-- �̸��� 2��°�� L�� ��� ��ȸ
SELECT * FROM EMP 
WHERE ENAME LIKE '_L%';

--�̸��� L�� ���Ե� ��� ���� ��ȸ
SELECT * FROM EMP 
WHERE ENAME LIKE '%L%';

--�̸��� ������ �ι�°�� M�� ������ ��� 
SELECT * FROM EMP 
WHERE ENAME LIKE '%M_';

--�̸��� AM�� ���ԵǾ� ���� ���� ���
SELECT * FROM EMP
WHERE ENAME NOT LIKE '%A%M%';

-- �̷��� �ϸ� NULL �� ����
SELECT
    * FROM EMP
WHERE COMM IS NULL;

SELECT
    * FROM EMP
WHERE SAL > NULL --NULL
    AND COMM IS NULL; --FALSE
    
SELECT
    * FROM EMP
WHERE SAL > NULL --NULL
    OR COMM IS NULL; --TRUE
    
-- ������ UNION 
SELECT EMPNO, ENAME, DEPTNO 
FROM EMP
WHERE DEPTNO = 10
UNION -- �ߺ������ʹ� �����ϰ� ǥ����
SELECT EMPNO, ENAME, DEPTNO 
FROM EMP
WHERE DEPTNO = 20;

-- ������ UNION ALL 
SELECT EMPNO, ENAME, DEPTNO 
FROM EMP
WHERE DEPTNO = 10
UNION ALL -- �ߺ������� �� ǥ����
SELECT EMPNO, ENAME, DEPTNO 
FROM EMP
WHERE DEPTNO = 10;

-- ������ MINUS
SELECT EMPNO, ENAME, DEPTNO
FROM EMP
MINUS
SELECT EMPNO, ENAME, DEPTNO
FROM EMP
WHERE DEPTNO = 10;

-- ������ INTERSECT
SELECT EMPNO, ENAME, DEPTNO
FROM EMP
INTERSECT
SELECT EMPNO, ENAME, DEPTNO
FROM EMP
WHERE DEPTNO = 20;



--��� �̸��� S�� ������ ��� ������ ��� ���
SELECT * FROM EMP
WHERE ENAME LIKE '%S';

--30�� �μ����� �ٹ��ϰ� �ִ� ����߿� ��å�� SALESMAN�� ���
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE JOB = 'SALESMAN';

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO 
FROM EMP
WHERE DEPTNO = 20
AND SAL > 2000
UNION -- �ߺ������ʹ� �����ϰ� ǥ����
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO 
FROM EMP
WHERE DEPTNO = 30
AND SAL > 2000;


SELECT EMPNO, ENAME, JOB, SAL, DEPTNO 
FROM EMP
WHERE DEPTNO IN(20,30)
AND SAL < 2000
or SAL > 3000;

SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE ENAME LIKE '%E%' --E�� ���� 
    AND DENPNO = 30
    AND SAL NOT BETWEEN 1000 AND 2000;

SELECT * FROM EMP
WHERE COMM IS NULL 
AND MGR IS NOT NULL
AND JOB IN ('MANAGER','CLERK')
AND ENAME NOT LIKE '_L%';

SELECT ENAME, LOWER(ENAME), UPPER(LOWER(ENAME)), INITCAP(ENAME)
FROM ENP;

SELECT '010-4567-1236' AS REPLACE_BEFROE,
    REPLACE('010-4567-1236','-') AS REPLACE1, --��ü�� ���� ������ ���� ����
    REPLACE('010-4567-1236','-', ' ') AS REPLACE2
    FROM DUAL;
    
SELECT 'ORACLE',
    LPAD('ORACLE', 10, '*') AS LPAD1,
    LPAD('ORACLE', 10) AS LPAD2
    FROM DUAL;
    
SELECT 'ORACLE',
    RPAD('ORACLE', 10, '$') AS RPAD1,
    RPAD('ORACLE', 10) AS RPAD2
    FROM DUAL;
    
SELECT RPAD('961225', 14, '*') AS JUMIN,
    RPAD('010-9876-', 13, '*') AS PHONE
    FROM DUAL;
    
SELECT EMPNO, ENAME,    
    CONCAT(EMPNO, ENAME), --�ΰ��� ���ڿ��� �̾���ϼ� �ִ�.
    CONCAT(EMPNO, CONCAT('-',ENAME)), --�ΰ��� ���ڿ��� �̾���ϼ� �ִ�.
    EMPNO || '-' || ENAME -- || : ���ڿ� ���� ������
    FROM EMP;
   
   