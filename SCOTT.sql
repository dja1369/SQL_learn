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
WHERE SAL NOT BETWEEN 2000 AND 3000; -- SAL 2000 ~ 3000 사이가 아닌것 

-- 이름이 M으로 시작하는 사람 

SELECT * FROM EMP 
WHERE ENAME LIKE  'M%';

-- 이름의 2번째가 L인 사원 조회
SELECT * FROM EMP 
WHERE ENAME LIKE '_L%';

--이름에 L이 포함된 사원 정보 조회
SELECT * FROM EMP 
WHERE ENAME LIKE '%L%';

--이름이 끝에서 두번째가 M로 끝나는 사람 
SELECT * FROM EMP 
WHERE ENAME LIKE '%M_';

--이름에 AM이 포함되어 있지 않은 사람
SELECT * FROM EMP
WHERE ENAME NOT LIKE '%A%M%';

-- 이렇게 하면 NULL 이 나옴
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
    
-- 합집합 UNION 
SELECT EMPNO, ENAME, DEPTNO 
FROM EMP
WHERE DEPTNO = 10
UNION -- 중복데이터는 제외하고 표시함
SELECT EMPNO, ENAME, DEPTNO 
FROM EMP
WHERE DEPTNO = 20;

-- 합집합 UNION ALL 
SELECT EMPNO, ENAME, DEPTNO 
FROM EMP
WHERE DEPTNO = 10
UNION ALL -- 중복데이터 도 표시함
SELECT EMPNO, ENAME, DEPTNO 
FROM EMP
WHERE DEPTNO = 10;

-- 차집합 MINUS
SELECT EMPNO, ENAME, DEPTNO
FROM EMP
MINUS
SELECT EMPNO, ENAME, DEPTNO
FROM EMP
WHERE DEPTNO = 10;

-- 교집합 INTERSECT
SELECT EMPNO, ENAME, DEPTNO
FROM EMP
INTERSECT
SELECT EMPNO, ENAME, DEPTNO
FROM EMP
WHERE DEPTNO = 20;



--사원 이름이 S로 끝나는 사원 데이터 모두 출력
SELECT * FROM EMP
WHERE ENAME LIKE '%S';

--30번 부서에서 근무하고 있는 사원중에 직책이 SALESMAN인 사원
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE JOB = 'SALESMAN';

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO 
FROM EMP
WHERE DEPTNO = 20
AND SAL > 2000
UNION -- 중복데이터는 제외하고 표시함
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
WHERE ENAME LIKE '%E%' --E를 포함 
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
    REPLACE('010-4567-1236','-') AS REPLACE1, --대체할 문자 생략시 문제 제거
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
    CONCAT(EMPNO, ENAME), --두가지 문자열을 이어붙일수 있다.
    CONCAT(EMPNO, CONCAT('-',ENAME)), --두가지 문자열을 이어붙일수 있다.
    EMPNO || '-' || ENAME -- || : 문자열 결합 연산자
    FROM EMP;
   
   