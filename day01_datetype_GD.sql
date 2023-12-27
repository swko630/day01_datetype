/* 
     테이블(TABLE)
     1. 관계형 데이터베이스에서 데이터를 저장하는 객체이다.
     2. 표 형식을 가진다.
     3.행( ROW)과 열(COLUMN)의 집합 형식이다.
     

*/
/*
 테이블 만들기
 1. 열(COLUMN)을 만드는 과정이다.
 2. 테이블 만드는 쿼리문
   CREATE TABLE 테이블 이름 (
   칼럼이름1 데이터타입 제약조건,
   칼럼이름2 데이터타입 제약조건,
   ...
   );
   */
   
   /* 
   데이터 타입
1. NUMBER(p,s) : 정밀도가 p, 스케일이 s인 숫자
    1) 정밀도 p : 전체 유효 숫자 ex)1.24 -> p는 3
    2) 스케일 s : 소수부의 유효 숫자 ex)1.2 p는 2,s는 1= number(2,1)
     number(2,2) = 0.xx
     number(3) = s 생략
   3)스케일만 생략하면 정수로 표시하는 숫자
   4)정밀도와 스케일 모두 생략하면 정수, 실수 모두 표시할 수 있는 숫자
   
2. CHAR(size) : 글자수가 최대 size인 고정 문자
   1) 고정 문자 : 글자수의 변동이 적은 문자 ex)휴대전화번호,주민번호 등
   2) 최대 size : 2000 byte 
 
3. VARCHAR2(size) : 글자수가 최대 size인 가변 문자
   1) 가변 문자 : 글자수의 변동이 큰 문자 ex)이름, 주소 등
   2) 최대 size : 4000 byte
 
 char(5) 'abc'  
 varchar2(5)'abc'
    'abc' == 'abc  ->false
   char은 사이즈에 맞춰 저장 -> abc만 넣어도 abc..으로 저장
   vacchar2는 abc 세개만 저장

4. CLOB : VARCHAR2(size)로 처리할 수 없는 큰 문자
5. DATE : 날짜/시간(년,월,일,시,분,초)
6. TIMESTAMP : 정밀한 날짜/시간(년,월,일,시,분,초,마이크로초)

   */
   
  /*
  제약조건 5가지
  1. NOT NULL : 필수 입력 
  2.UINQUE : 중복 불가
  3.PRIMARY KEY(PK) : 기본키(식별가능한 번호 ex 군번 주민번호의 느낌)
  ㄴ같은 번호가 없어야하고 반드시 값을 가져야함 NOT NULL과 UNIQUE가 합쳐진 느낌)
  4.FOREIGH KEY (FK): 외래키
  5.CHECK : 작성한 조건으로 값의 제한
    
    
  
  */
  
  --블로그 구현을 위한 블로그 테이블
  CREATE TABLE BLOG_T (
  BLOG_NO NUMBER             NOT NULL PRIMARY KEY, 
  TITLE   VARCHAR2(100 BYTE) NOT NULL,
  EDITOR  VARCHAR2(100 BYTE) NOT NULL,
  CONTENTS CLOB              NULL,--NULL은 생략가능, 내용은 없어도 되므로 NULL
  CREATED DATE               NOT NULL
    );
 --블로그 테이블 삭제하기
 
 
  DROP TABLE BLOG_T
  
  
  
  
  
  
  
  
  
  
  
  
  