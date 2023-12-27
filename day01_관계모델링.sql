--부서 테이블
CREATE TABLE DEPARTMENT_T (
DEPT_NO VARCHAR2(15BYTE) NOT NULL PRIMARY KEY,
DEPT_NAME VARCHAR2(30BYTE) NULL,
DEPT_LOCATION VARCHAR2(50BYTE) NULL
);
--사원테이블
CREATE TABLE EMPLOYEE_T(
EMP_NO NUMBER NOT NULL PRIMARY KEY,
DEPT_NO VARCHAR2(15BYTE) REFERENCES DEPARTMENT_T(DEPT_NO) ,
POSITION CHAR(15 BYTE) NULL,
NAME VARCHAR2(15BYTE),
HIRE_DATE DATE,
SALARY NUMBER
);

CREATE TABLE PROJECT_T (
PJT_NO NUMBER NOT NULL PRIMARY KEY,
PJT_NAME VARCHAR2(30BYTE),
BEGIN_DATE DATE,
END_DATE DATE
);
--프로젝트 진행내역 테이블
CREATE TABLE PROCEEDING_T (
PCD_NO NUMBER NOT NULL PRIMARY KEY,
EMP_NO NUMBER REFERENCES EMPLOYEE_T(EMP_NO),
PJT_NO NUMBER REFERENCES PROJECT_T(PJT_NO),
PJT_STATE NUMBER NOT NULL
);

DROP TABLE PROCEEDING_T;

DROP TABLE PROJECT_T;

DROP TABLE EMPLOYEE_T;

DROP TABLE DEPARTMENT_T;

