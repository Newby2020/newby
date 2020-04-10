------------------------------ TABLE ------------------------------
-- 테이블 및 제약조건이 존재할 경우 삭제 
--DROP TABLE CLASS_APPROVAL CASCADE CONSTRAINTS; --12
DROP TABLE PAYMENT_SCHEDULE CASCADE CONSTRAINTS; --11
DROP TABLE PAYMENT_LIST CASCADE CONSTRAINTS; --10
DROP TABLE CLASS_SCHEDULE CASCADE CONSTRAINTS; --9
DROP TABLE NOTICE CASCADE CONSTRAINTS; --8
DROP TABLE QNA CASCADE CONSTRAINTS; --7
DROP TABLE CLAIM CASCADE CONSTRAINTS; --6
DROP TABLE PAYMENT CASCADE CONSTRAINTS; --5
DROP TABLE REVIEW CASCADE CONSTRAINTS; --4
DROP TABLE CLASS CASCADE CONSTRAINTS; --3
DROP TABLE HOST CASCADE CONSTRAINTS; --2
DROP TABLE MEMBER CASCADE CONSTRAINTS; --1

-- 테이블이 추가로 존재할때 실행 
-- DROP TABLE CLASS_INFO CASCADE CONSTRAINTS;
-- DROP TABLE CLASS_CHECK CASCADE CONSTRAINTS;
-- DROP TABLE CLASS_ORDER CASCADE CONSTRAINTS;
-- DROP TABLE CANCEL_LIST CASCADE CONSTRAINTS;
-- DROP TABLE HOST_CHECK CASCADE CONSTRAINTS;
-- DROP TABLE HOST_INFO CASCADE CONSTRAINTS;
-- DROP TABLE REPORT_HOST CASCADE CONSTRAINTS;
-- DROP TABLE REPORT_LIST CASCADE CONSTRAINTS;
-- DROP TABLE CANCEL_LIST CASCADE CONSTRAINTS;
-- DROP TABLE CANCLE_LIST CASCADE CONSTRAINTS;



-- 1. MEMBER TABLE 생성 및 COMMENT 추가

CREATE TABLE MEMBER (
 MEM_NO VARCHAR2(50)/* 회원번호 */,
 MEM_ID VARCHAR2(50)/* 회원ID(E-MAIL) */,
 MEM_NICK VARCHAR2(50)/* 닉네임 */,
 MEM_PWD VARCHAR2(50)/* 비밀번호 */,
 MEM_NAME VARCHAR2(50)/* 이름 */,
 PHONE VARCHAR2(50)/* 휴대폰 */,
 ENROLLDATE DATE DEFAULT SYSDATE,/* 회원 가입일자 */
 MILEAGE NUMBER(10) DEFAULT 0,
 MEM_HOST_NO VARCHAR2(50) DEFAULT NULL
);

ALTER TABLE MEMBER ADD CONSTRAINT MEMBER_pkey PRIMARY KEY (MEM_NO);
ALTER TABLE MEMBER ADD CONSTRAINT MEMBER_Ukey0 UNIQUE (MEM_ID);
ALTER TABLE MEMBER ADD CONSTRAINT MEMBER_Ukey1 UNIQUE (MEM_NICK);
COMMENT ON COLUMN "MEMBER"."MEM_NO" IS '회원번호';
COMMENT ON COLUMN "MEMBER"."MEM_ID" IS '회원ID(E-MAIL)';
COMMENT ON COLUMN "MEMBER"."MEM_NICK" IS '닉네임';
COMMENT ON COLUMN "MEMBER"."MEM_PWD" IS '비밀번호';
COMMENT ON COLUMN "MEMBER"."MEM_NAME" IS '이름';
COMMENT ON COLUMN "MEMBER"."PHONE" IS '휴대폰';
COMMENT ON COLUMN "MEMBER"."ENROLLDATE" IS '회원 가입일자';
COMMENT ON COLUMN "MEMBER"."MILEAGE" IS '마일리지';
COMMENT ON COLUMN "MEMBER"."MEM_HOST_NO" IS '호스트번호';



-- 2. CLASS TABLE 생성 및 COMMENT 추가

CREATE TABLE CLASS (
 CLASS_NO VARCHAR2(50)/* 클래스 번호 */,
 CLASS_HOST_NO VARCHAR2(50)/* 호스트번호(fk) */,
 CLASS_NAME VARCHAR2(400)/* 클래스명 */,
 FIRST_CATEGORY VARCHAR2(50)/* 수업카테고리(신나는,차분한) */,
 SECOND_CATEGORY VARCHAR2(50)/* 수업카테고리(2) */,
 THIRD_CATEGORY VARCHAR2(50)/* 수업카테고리(2-1) */,
 CLASS_TYPE VARCHAR2(50)/* 클래스종류(원데이,1:1,그룹) */,
 CLASS_TIME NUMBER(10)/* 1회당 클래스 시간 */,
 CLASS_PRICE NUMBER(10)/* 클래스 1회 금액*/,
 CLASS_MAXNUM NUMBER(10)/* 최대인원 */,
 CLASS_IMG VARCHAR2(300)/* 커버사진 */,
 CLASS_LOCATION VARCHAR2(400)/* 장소 */,
 CLASS_INTRO VARCHAR2(4000)/* 수업 소개 */,
 CLASS_TARGET VARCHAR2(4000)/* 수업 대상 */,
 CLASS_CURRICULUM VARCHAR2(4000)/* 커리큘럼 */,
 CLASS_ENROLLDATE DATE DEFAULT SYSDATE/* 등록날짜 */,
 CLASS_STATUS CHAR(6) DEFAULT '미결' /* 상태(미결, 승인, 반려)*/,
 REJECT_REASON VARCHAR2(1000) DEFAULT NULL/* 반려사유*/
);

ALTER TABLE CLASS ADD CONSTRAINT CLASS_pkey PRIMARY KEY (CLASS_NO);
COMMENT ON TABLE "CLASS" IS '클래스';
COMMENT ON COLUMN "CLASS"."CLASS_NO" IS '클래스 번호';
COMMENT ON COLUMN "CLASS"."CLASS_HOST_NO" IS '호스트번호(fk)';
COMMENT ON COLUMN "CLASS"."CLASS_NAME" IS '클래스명';
COMMENT ON COLUMN "CLASS"."FIRST_CATEGORY" IS '수업카테고리(신나는,차분한)';
COMMENT ON COLUMN "CLASS"."SECOND_CATEGORY" IS '수업카테고리(2)';
COMMENT ON COLUMN "CLASS"."THIRD_CATEGORY" IS '수업카테고리(2-1)';
COMMENT ON COLUMN "CLASS"."CLASS_TYPE" IS '클래스종류(원데이,1:1,그룹)';
COMMENT ON COLUMN "CLASS"."CLASS_TIME" IS '1회당 클래스 시간';
COMMENT ON COLUMN "CLASS"."CLASS_PRICE" IS '클래스 1회 금액';
COMMENT ON COLUMN "CLASS"."CLASS_MAXNUM" IS '최대인원';
COMMENT ON COLUMN "CLASS"."CLASS_IMG" IS '커버사진';
COMMENT ON COLUMN "CLASS"."CLASS_LOCATION" IS '장소';
COMMENT ON COLUMN "CLASS"."CLASS_INTRO" IS '수업 소개';
COMMENT ON COLUMN "CLASS"."CLASS_TARGET" IS '수업 대상';
COMMENT ON COLUMN "CLASS"."CLASS_CURRICULUM" IS '커리큘럼';
COMMENT ON COLUMN "CLASS"."CLASS_ENROLLDATE" IS '등록날짜';



-- 3. PAYMENT TABLE 생성 및 COMMENT 추가

CREATE TABLE PAYMENT (
 PAY_NO VARCHAR2(50)/* 주문번호(PK) */,
 PAY_MEM_NO VARCHAR2(50)/* 주문회원번호 */,
 PAY_DATE DATE DEFAULT SYSDATE,/* 결제시간 */
 PAY_CLASS_NO VARCHAR2(50)/* 주문 CLASS_NO */,
 PAY_MILEAGE NUMBER(10) DEFAULT 0,
 PAY_SAVE_MILEAGE NUMBER(10), /*클래스 별 적립 마일리지*/
 PAY_CS_NO VARCHAR2(50) 
);

ALTER TABLE PAYMENT ADD CONSTRAINT PAYMENT_pkey PRIMARY KEY (PAY_NO);
COMMENT ON TABLE "PAYMENT" IS '결제';
COMMENT ON COLUMN "PAYMENT"."PAY_NO" IS '주문번호(PK)';
COMMENT ON COLUMN "PAYMENT"."PAY_MEM_NO" IS '주문회원번호';
COMMENT ON COLUMN "PAYMENT"."PAY_DATE" IS '결제시간';
COMMENT ON COLUMN "PAYMENT"."PAY_CLASS_NO" IS '주문 CLASS_NO';
COMMENT ON COLUMN "PAYMENT"."PAY_MILEAGE" IS '사용 마일리지';
COMMENT ON COLUMN "PAYMENT"."PAY_SAVE_MILEAGE" IS '클래스 별 적립 마일리지';
COMMENT ON COLUMN "PAYMENT"."PAY_CS_NO" IS '상세 CS_NO';



-- 4. HOST TABLE 생성 및 COMMENT 추가

CREATE TABLE HOST (
 HOST_NO VARCHAR2(50)/* 호스트번호 */,
 HOST_MEM_ID VARCHAR2(50)/* 기존ID(FK) */,
 BANK VARCHAR2(50)/* 은행명 */,
 ACCOUNT_HOLDER VARCHAR2(50)/* 예금주명 */,
 ACCOUNT_NUM VARCHAR2(50)/* 계좌번호 */,
 HOST_INTRO VARCHAR2(300)/* 호스트소개 */,
 AVERAGE_REVIEW NUMBER(10)/* 평균별점 */,
 HOST_ENROLLDATE DATE DEFAULT SYSDATE,/* 호스트등록날짜 */
 SUSPENSION_STARTDATE DATE/* 정지시작일 */,
 SUSPENSION_FINISHDATE DATE/* 정지종료일 */
);

ALTER TABLE HOST ADD CONSTRAINT HOST_pkey PRIMARY KEY (HOST_NO);
ALTER TABLE HOST ADD CONSTRAINT HOST_Ukey UNIQUE (ACCOUNT_NUM);
COMMENT ON TABLE "HOST" IS '호스트';
COMMENT ON COLUMN "HOST"."HOST_NO" IS '호스트번호';
COMMENT ON COLUMN "HOST"."HOST_MEM_ID" IS '기존ID(FK)';
COMMENT ON COLUMN "HOST"."BANK" IS '은행명';
COMMENT ON COLUMN "HOST"."ACCOUNT_HOLDER" IS '예금주명';
COMMENT ON COLUMN "HOST"."ACCOUNT_NUM" IS '계좌번호';
COMMENT ON COLUMN "HOST"."HOST_INTRO" IS '호스트소개';
COMMENT ON COLUMN "HOST"."AVERAGE_REVIEW" IS '평균별점';
COMMENT ON COLUMN "HOST"."HOST_ENROLLDATE" IS '호스트등록날짜';
COMMENT ON COLUMN "HOST"."SUSPENSION_STARTDATE" IS '정지시작일';
COMMENT ON COLUMN "HOST"."SUSPENSION_FINISHDATE" IS '정지종료일';



-- 5. REVIEW TABLE 생성 및 COMMENT 추가

CREATE TABLE REVIEW (
 REV_NO VARCHAR2(50)/* 리뷰번호 */,
 REV_CLASS_NO VARCHAR2(50),
 REV_WRITER_NO VARCHAR2(50)/* 작성자 */,
 REV_POINT NUMBER(10) DEFAULT NULL,/* 별점 */
 REV_CONTENT VARCHAR2(1000)/* 내용 */,
 REV_DATE DATE DEFAULT SYSDATE/* 리뷰 날짜 */
);

ALTER TABLE REVIEW ADD CONSTRAINT REVIEW_pkey PRIMARY KEY (REV_NO);
COMMENT ON TABLE "REVIEW" IS '리뷰';
COMMENT ON COLUMN "REVIEW"."REV_NO" IS '리뷰번호';
COMMENT ON COLUMN "REVIEW"."REV_WRITER_NO" IS '작성자';
COMMENT ON COLUMN "REVIEW"."REV_POINT" IS '별점';
COMMENT ON COLUMN "REVIEW"."REV_CONTENT" IS '내용';
COMMENT ON COLUMN "REVIEW"."REV_DATE" IS '날짜';



-- 6. QNA TABLE 생성 및 COMMENT 추가

CREATE TABLE QNA (
 Q_NO VARCHAR2(50)/* 글번호 */,
 Q_TITLE VARCHAR2(200)/* 제목 */,
 Q_WRITER_NO VARCHAR2(50)/* 작성자 */,
 Q_DATE DATE DEFAULT SYSDATE,/* 작성일 */
 Q_CONTENT VARCHAR2(1000)/* 문의내용 */,
 Q_COMMENT VARCHAR2(1000)/* 댓글데이터 */,
 Q_COMMENT_DATE DATE DEFAULT SYSDATE,/* 댓글 작성일 */
 Q_STATUS VARCHAR2(50) DEFAULT NULL/* 문의 처리 상태*/
);

ALTER TABLE QNA ADD CONSTRAINT QNA_pkey PRIMARY KEY (Q_NO);
COMMENT ON TABLE "QNA" IS '문의';
COMMENT ON COLUMN "QNA"."Q_NO" IS '글번호';
COMMENT ON COLUMN "QNA"."Q_TITLE" IS '제목';
COMMENT ON COLUMN "QNA"."Q_WRITER_NO" IS '작성자';
COMMENT ON COLUMN "QNA"."Q_DATE" IS '작성일';
COMMENT ON COLUMN "QNA"."Q_CONTENT" IS '문의내용';
COMMENT ON COLUMN "QNA"."Q_COMMENT" IS '댓글데이터';
COMMENT ON COLUMN "QNA"."Q_COMMENT_DATE" IS '댓글 작성일';
COMMENT ON COLUMN "QNA"."Q_STATUS" IS '문의처리상태';



-- 7. CLAIM TABLE 생성 및 COMMENT 추가

CREATE TABLE CLAIM (
 CLAIM_NO VARCHAR2(50)/* 글번호 */,
 CLAIM_CLASS_NO VARCHAR2(50)/* 신고할 CLASS_NO */,
 CLAIM_WRITER_NO VARCHAR2(50)/* 작성자 */,
 CLAIM_TITLE VARCHAR2(200)/* 신고이유 */,
 CLAIM_CONTENT VARCHAR2(1000)/* 신고내용 */,
 CLAIM_DATE DATE DEFAULT SYSDATE,/* 신고날짜 */
 HANDLED_DATE DATE DEFAULT NULL,/* 신고 처리 날짜 —> 처리 페이지에서 쿼리문 SYSDATE로 입력 */
 CLAIM_STATUS VARCHAR2(50) DEFAULT '미결',/* 처리유무(미결, 정지, 정지만료, 경고) */
 SUSPENSION_PERIOD NUMBER DEFAULT NULL, /* 정지 기간 */
 SUSPENSION_START_DATE DATE DEFAULT NULL, /* 정지 시작일 */
 SUSPENSION_END_DATE DATE DEFAULT NULL /* 정지 종료일 */
);

ALTER TABLE CLAIM ADD CONSTRAINT CLAIM_pkey PRIMARY KEY (CLAIM_NO);
COMMENT ON TABLE "CLAIM" IS '신고';
COMMENT ON COLUMN "CLAIM"."CLAIM_NO" IS '글번호';
COMMENT ON COLUMN "CLAIM"."CLAIM_CLASS_NO" IS '신고할 CLASS_NO';
COMMENT ON COLUMN "CLAIM"."CLAIM_WRITER_NO" IS '작성자';
COMMENT ON COLUMN "CLAIM"."CLAIM_TITLE" IS '신고이유';
COMMENT ON COLUMN "CLAIM"."CLAIM_CONTENT" IS '신고내용';
COMMENT ON COLUMN "CLAIM"."CLAIM_DATE" IS '신고날짜';
COMMENT ON COLUMN "CLAIM"."CLAIM_STATUS" IS '처리유무(Y/N)';



-- 8. PAYMENT_LIST TABLE 생성 및 COMMENT 추가

CREATE TABLE PAYMENT_LIST (
 PL_NO VARCHAR2(50)/* 결제리스트 번호 */,
 PL_PS_NO VARCHAR2(50)/*유저선택 리스트 번호 */,
 PL_STATUS VARCHAR2(50) DEFAULT NULL/* 결제상태 */,
 PL_CANCEL_DATE DATE DEFAULT NULL/* 취소일자 */
);

ALTER TABLE PAYMENT_LIST ADD CONSTRAINT PAYMENT_LIST_pkey PRIMARY KEY (PL_NO);
COMMENT ON TABLE "PAYMENT_LIST" IS '결제내역';
COMMENT ON COLUMN "PAYMENT_LIST"."PL_NO" IS '결제리스트';
COMMENT ON COLUMN "PAYMENT_LIST"."PL_PS_NO" IS '유저선택 리스트 번호';
COMMENT ON COLUMN "PAYMENT_LIST"."PL_STATUS" IS '결제상태';
COMMENT ON COLUMN "PAYMENT_LIST"."PL_CANCEL_DATE" IS '취소일자';



-- 9. NOTICE TABLE 생성 및 COMMENT 추가

CREATE TABLE NOTICE (
 NOTICE_NO VARCHAR2(50)/* 번호 */,
 NO_TITLE VARCHAR2(50)/* 제목 */,
 NO_WRITER VARCHAR2(50)/* 작성자 */,
 NO_DATE DATE DEFAULT SYSDATE,/* 작성일 */
 NO_COUNT NUMBER(10) DEFAULT 0,/* 조회수 */
 NO_CONTENT VARCHAR2(1000)/* 공지 내용 */
);

ALTER TABLE NOTICE ADD CONSTRAINT NOTICE_pkey PRIMARY KEY (NOTICE_NO);
COMMENT ON TABLE "NOTICE" IS '공지사항';
COMMENT ON COLUMN "NOTICE"."NOTICE_NO" IS '번호';
COMMENT ON COLUMN "NOTICE"."NO_TITLE" IS '제목';
COMMENT ON COLUMN "NOTICE"."NO_WRITER" IS '작성자';
COMMENT ON COLUMN "NOTICE"."NO_DATE" IS '작성일';
COMMENT ON COLUMN "NOTICE"."NO_COUNT" IS '조회수';
COMMENT ON COLUMN "NOTICE"."NO_CONTENT" IS '공지 내용';

-- 10. CLASS_SCHEDULE TABLE 생성 및 COMMENT 추가

CREATE TABLE CLASS_SCHEDULE (
 CS_NO VARCHAR2(50)/* 클래스 스케쥴 번호 */,
 CS_CLASS_NO VARCHAR2(50)/* 클래스 번호 */,
 CS_CLASS_DATE VARCHAR2(100), /* 클래스 수강 날짜*/
 CS_STARTTIME VARCHAR2(100)/* 클래스 시작시간 */,
 CS_ENDTIME VARCHAR2(100)/* 클래스 종료시간 */
);

ALTER TABLE CLASS_SCHEDULE ADD CONSTRAINT CLASS_SCHEDULE_pkey PRIMARY KEY (CS_NO);
COMMENT ON TABLE "CLASS_SCHEDULE" IS '클래스 상세 날짜 시간';
COMMENT ON COLUMN "CLASS_SCHEDULE"."CS_NO" IS '클래스 스케쥴 번호';
COMMENT ON COLUMN "CLASS_SCHEDULE"."CS_CLASS_NO" IS '클래스 번호';
COMMENT ON COLUMN "CLASS_SCHEDULE"."CS_CLASS_DATE" IS '클래스 날짜';
COMMENT ON COLUMN "CLASS_SCHEDULE"."CS_STARTTIME" IS '클래스 시작시간';
COMMENT ON COLUMN "CLASS_SCHEDULE"."CS_ENDTIME" IS '클래스 종료시간';



-- 11. PAYMENT_SCHEDULE TABLE 생성 및 COMMENT 추가

CREATE TABLE PAYMENT_SCHEDULE (
PS_NO VARCHAR2(50),/*유저선택 리스트 번호(PK)*/
PS_PAY_NO VARCHAR2(50), /*결제번호(FK)*/
PS_CS_NO VARCHAR2(50), /*유저선택 CS 번호(FK)*/
REV_YN VARCHAR2(50) DEFAULT 'N' /*리뷰 작성여부*/
);

ALTER TABLE PAYMENT_SCHEDULE ADD CONSTRAINT PAYMENT_SCHEDULE_pkey PRIMARY KEY (PS_NO);
COMMENT ON TABLE "PAYMENT_SCHEDULE" IS '유저선택 리스트';
COMMENT ON COLUMN "PAYMENT_SCHEDULE"."PS_NO" IS '유저선택 리스트 번호(PK)';
COMMENT ON COLUMN "PAYMENT_SCHEDULE"."PS_PAY_NO" IS '결제번호(FK)';
COMMENT ON COLUMN "PAYMENT_SCHEDULE"."PS_CS_NO" IS '유저선택 CS 번호(FK)';
COMMENT ON COLUMN "PAYMENT_SCHEDULE"."REV_YN" IS '리뷰 작성여부';

ALTER TABLE CLASS ADD CONSTRAINT CLASS_CLASS_HOST_NO_fkey FOREIGN KEY (CLASS_HOST_NO) REFERENCES HOST(HOST_NO) ON DELETE CASCADE;
ALTER TABLE MEMBER ADD CONSTRAINT MEM_HO_fkey FOREIGN KEY (MEM_HOST_NO) REFERENCES HOST(HOST_NO) ON DELETE CASCADE;
ALTER TABLE PAYMENT ADD CONSTRAINT PAYMENT_PAY_MEM_NO_fkey FOREIGN KEY (PAY_MEM_NO) REFERENCES MEMBER(MEM_NO) ON DELETE CASCADE;
ALTER TABLE PAYMENT ADD CONSTRAINT PAYMENT_PAY_CLASS_NO_fkey FOREIGN KEY (PAY_CLASS_NO) REFERENCES CLASS(CLASS_NO) ON DELETE CASCADE;
ALTER TABLE REVIEW ADD CONSTRAINT REVIEW_REV_CLASS_NO_fkey FOREIGN KEY (REV_CLASS_NO) REFERENCES CLASS(CLASS_NO) ON DELETE CASCADE;
ALTER TABLE REVIEW ADD CONSTRAINT REVIEW_REV_WRITER_NO_fkey FOREIGN KEY (REV_WRITER_NO) REFERENCES MEMBER(MEM_NO) ON DELETE CASCADE;
ALTER TABLE CLAIM ADD CONSTRAINT CLAIM_CLAIM_CLASS_NO_fkey FOREIGN KEY (CLAIM_CLASS_NO) REFERENCES CLASS(CLASS_NO) ON DELETE CASCADE;
ALTER TABLE CLAIM ADD CONSTRAINT CLAIM_CLAIM_WRITER_NO_fkey FOREIGN KEY (CLAIM_WRITER_NO) REFERENCES MEMBER(MEM_NO) ON DELETE CASCADE;
ALTER TABLE PAYMENT_LIST ADD CONSTRAINT PAYMENT_LIST_FKEY FOREIGN KEY(PL_PS_NO) REFERENCES PAYMENT_SCHEDULE(PS_NO) ON DELETE CASCADE;
ALTER TABLE CLASS_SCHEDULE ADD CONSTRAINT CLASS_NO_fkey FOREIGN KEY (CS_CLASS_NO) REFERENCES CLASS(CLASS_NO) ON DELETE CASCADE;
ALTER TABLE PAYMENT_SCHEDULE ADD CONSTRAINT PAYMENT_SCHEDULE_fkey FOREIGN KEY (PS_PAY_NO) REFERENCES PAYMENT(PAY_NO) ON DELETE CASCADE;
ALTER TABLE PAYMENT_SCHEDULE ADD CONSTRAINT PAYMENT_SCHEDULE_fkey1 FOREIGN KEY (PS_CS_NO) REFERENCES CLASS_SCHEDULE(CS_NO) ON DELETE CASCADE;
ALTER TABLE PAYMENT ADD CONSTRAINT PAYMENT_fkey2 FOREIGN KEY (PAY_CS_NO) REFERENCES CLASS_SCHEDULE(CS_NO) ON DELETE CASCADE;
------------------------------ SEQUENCE ------------------------------
-- 시퀀스가 존재할 경우 삭제
DROP SEQUENCE SEQ_MNO;
DROP SEQUENCE SEQ_NNO;
DROP SEQUENCE SEQ_QNO;
DROP SEQUENCE SEQ_HNO;
DROP SEQUENCE SEQ_CNO;
DROP SEQUENCE SEQ_RNO;
DROP SEQUENCE SEQ_CMNO;
DROP SEQUENCE SEQ_PNO;
DROP SEQUENCE SEQ_PLNO;
DROP SEQUENCE SEQ_CSNO;
--DROP SEQUENCE SEQ_CACNO;
DROP SEQUENCE SEQ_PSNO;

-- 1. member number
CREATE SEQUENCE SEQ_MNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

-- 2. notice number
CREATE SEQUENCE SEQ_NNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

-- 3. QNA number
CREATE SEQUENCE SEQ_QNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

-- 4. host number
CREATE SEQUENCE SEQ_HNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

-- 5. class number
CREATE SEQUENCE SEQ_CNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

-- 6. review number
CREATE SEQUENCE SEQ_RNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

-- 7. claim number
CREATE SEQUENCE SEQ_CMNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

-- 8. payment number
CREATE SEQUENCE SEQ_PNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

-- 9. paymentList number 
CREATE SEQUENCE SEQ_PLNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

--10. CLASS SCHEDULE NUMBER SEQ
CREATE SEQUENCE SEQ_CSNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

--11. PAYMENT_SCHEDULE SEQ

CREATE SEQUENCE SEQ_PSNO
START WITH 1
INCREMENT BY 1
NOCYCLE
NOCACHE;

-- 수정자 : 최진영
-- 수정 일시 : 200213_20:50     
-- 1. CLASM_REASON -> CLAIM_TITLE
-- 2. CREATE TABLE CLAIM 내용 수정 

-- 수정자 : 손신혜
-- 수정 일시 : 200214_07:17     
-- 1. 외래키 ON DELETE CASCADE;
-- 2. 승인날짜 sysdate 삭제

-- 수정자 : 손신혜
-- 수정 일시 : 2020-02-15 02:15
-- 1.pl 테이블 컬럼 부분삭제
-- 2. pay 테이블 컬럼 부분 삭제


-- 수정자 : 손신혜
-- 수정 일시 : 2020-02-16 04:28
-- 1. PAYMENT_SCHEDULE 테이블 생성 
-- 2. PS_DATE VARCHAR2(100) 변경
-- 3. pl 테이블 f key 수정 PL_PS_NO VARCHAR2(50)
-- 4. CLAIM 테이블 수정 


-- 수정자 : 손신혜
-- 수정 일시 : 2020-02-19 01:38
-- 1. ps테이블 리뷰 작성여부 추가
-- 2. 리뷰 테이블 리뷰 작성여부 삭제