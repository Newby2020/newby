
------------ User(Member) -----------------------------
-- userListCount
SELECT COUNT(*) FROM MEMBER;

-- selectUserList 
SELECT MEM.* 
FROM (SELECT ROWNUM RNUM, M.* 
        FROM (SELECT MEM_NO, MEM_ID, MEM_NAME, PHONE, TO_CHAR(ENROLLDATE,'YYYY-MM-DD') ENROLLDATE, MILEAGE, NVL(MEM_HOST_NO, '-') MEM_HOST_NO 
                FROM MEMBER 
                ORDER BY TO_NUMBER(SUBSTR(MEM_NO, 2))DESC) M 
        WHERE ROWNUM <= 10) MEM 
WHERE RNUM >= 1 ;

SELECT LENGTH(PHONE) -4
FROM MEMBER;

-- selectUserList  -1
SELECT MEM.* 
FROM (SELECT ROWNUM RNUM, M.* 
        FROM (SELECT MEM_NO, MEM_ID, MEM_NAME, 
                    (SUBSTR(PHONE, 0, 3) || '-' || SUBSTR(PHONE,4, LENGTH(PHONE)-4 -3) || '-' || SUBSTR(PHONE, LENGTH(PHONE)-3, 4)) PHONE, 
                    TO_CHAR(ENROLLDATE,'YYYY-MM-DD') ENROLLDATE, 
                    MILEAGE, 
                    NVL(MEM_HOST_NO, '-') MEM_HOST_NO 
                FROM MEMBER 
                ORDER BY TO_NUMBER(SUBSTR(MEM_NO, 2))DESC) M 
        WHERE ROWNUM <= 10) MEM 
WHERE RNUM >= 1 ;


-- serchedUserListCount
SELECT COUNT(*)
FROM MEMBER
WHERE MEM_NO LIKE CONCAT(CONCAT('%','최진'),'%') 
   OR MEM_ID LIKE CONCAT(CONCAT('%','최진'),'%') 
   OR MEM_NAME LIKE CONCAT(CONCAT('%','최진'),'%') 
   OR PHONE LIKE CONCAT(CONCAT('%','최진'),'%') 
   OR ENROLLDATE LIKE CONCAT(CONCAT('%','최진'),'%') 
   OR MILEAGE LIKE CONCAT(CONCAT('%','최진'),'%') 
   OR MEM_HOST_NO LIKE CONCAT(CONCAT('%','최진'),'%');

-- userSearch
SELECT MEM.* 
FROM (SELECT ROWNUM RNUM, M.* 
        FROM (SELECT MEM_NO, MEM_ID, MEM_NAME, PHONE, TO_CHAR(ENROLLDATE,'YYYY-MM-DD') ENROLLDATE, MILEAGE, NVL(MEM_HOST_NO, '-') MEM_HOST_NO 
                FROM MEMBER
                WHERE MEM_NO LIKE CONCAT(CONCAT('%',''),'%') 
                   OR MEM_ID LIKE CONCAT(CONCAT('%',''),'%') 
                   OR MEM_NAME LIKE CONCAT(CONCAT('%',''),'%') 
                   OR PHONE LIKE CONCAT(CONCAT('%',''),'%') 
                   OR ENROLLDATE LIKE CONCAT(CONCAT('%',''),'%') 
                   OR MILEAGE LIKE CONCAT(CONCAT('%',''),'%') 
                   OR MEM_HOST_NO LIKE CONCAT(CONCAT('%',''),'%')
                ORDER BY TO_NUMBER(SUBSTR(MEM_NO, 2))DESC) M 
        WHERE ROWNUM <= 12) MEM 
WHERE RNUM >= 1 ;
                



SELECT * FROM MEMBER;

------------ ClassApply -----------------------------
SELECT * FROM CLASS;
SELECT * FROM CLASS WHERE CLASS_NO = 'C10';

-- classApplyListCount
SELECT COUNT(*) FROM CLASS WHERE CLASS_STATUS IN ('미결','반려');


-- selectClassApplyList
SELECT * 
FROM (SELECT ROWNUM RNUM, C.*
        FROM (SELECT TO_CHAR(CLASS_ENROLLDATE,'YYYY-MM-DD') CLASS_ENROLLDATE, CLASS_NO, CLASS_HOST_NO, CLASS_STATUS 
                FROM CLASS 
                WHERE CLASS_STATUS IN ('미결','반려') 
                ORDER BY TO_NUMBER(SUBSTR(CLASS_NO, 2)) DESC) C
        WHERE ROWNUM <= 7) CL
WHERE RNUM >= 2;

-- Approve 
UPDATE CLASS 
SET CLASS_STATUS = '승인'
WHERE CLASS_NO = 'C14';

ROLLBACK;

SELECT * FROM CLASS WHERE CLASS_STATUS = '미결';

-- Reject 
UPDATE CLASS 
SET CLASS_STATUS = '반려',
    REJECT_REASON = '가나다'
WHERE CLASS_NO = 'C12';

ROLLBACK;

SELECT * FROM CLASS WHERE CLASS_STATUS IN('미결','반려');

-- 추가로 필요에 따라 사용한 쿼리문 
UPDATE CLASS 
SET CLASS_STATUS = '미결',
    REJECT_REASON = null
WHERE CLASS_NO = 'C6';

COMMIT;

-- serchedApplyListCount   
SELECT COUNT(*) FROM CLASS
WHERE (CLASS_ENROLLDATE LIKE CONCAT(CONCAT('%',''),'%') 
   OR CLASS_NO LIKE CONCAT(CONCAT('%',''),'%') 
   OR CLASS_HOST_NO LIKE CONCAT(CONCAT('%',''),'%') 
   OR CLASS_STATUS LIKE CONCAT(CONCAT('%',''),'%'))
   AND CLASS_STATUS IN ('미결','반려');
-- serchAppliedClass
SELECT * 
FROM (SELECT ROWNUM RNUM, C.*
FROM ( SELECT TO_CHAR(CLASS_ENROLLDATE,'YYYY-MM-DD') CLASS_ENROLLDATE, CLASS_NO, CLASS_HOST_NO,CLASS_STATUS
        FROM CLASS
        WHERE (CLASS_ENROLLDATE LIKE CONCAT(CONCAT('%',''),'%') 
           OR CLASS_NO LIKE CONCAT(CONCAT('%',''),'%') 
           OR CLASS_HOST_NO LIKE CONCAT(CONCAT('%',''),'%') 
           OR CLASS_STATUS LIKE CONCAT(CONCAT('%',''),'%'))
           AND CLASS_STATUS IN ('미결','반려')
           ORDER BY TO_NUMBER(SUBSTR(CLASS_NO, 2)) DESC) C
        WHERE ROWNUM <= 12) CL
WHERE RNUM >= 1;



------------ Class -----------------------------
-- classListCount
SELECT COUNT(*) FROM CLASS WHERE CLASS_STATUS = '승인';

-- selectClassList
SELECT * FROM CLASS WHERE CLASS_STATUS = '승인';

SELECT CL.*
FROM (SELECT ROWNUM RNUM, C.*
        FROM (SELECT CLASS_NO, CLASS_HOST_NO, CLASS_TYPE, FIRST_CATEGORY, SECOND_CATEGORY, THIRD_CATEGORY, CLASS_TARGET
                FROM CLASS
                WHERE CLASS_STATUS = '승인'
                ORDER BY TO_NUMBER(SUBSTR(CLASS_NO, 2)) DESC) C
        WHERE ROWNUM <= 3) CL
WHERE RNUM >=1;   

-- serchedClassListCount
SELECT COUNT(*) FROM CLASS
WHERE (CLASS_NO LIKE CONCAT(CONCAT('%',''),'%') 
   OR CLASS_HOST_NO LIKE CONCAT(CONCAT('%',''),'%') 
   OR CLASS_TYPE LIKE CONCAT(CONCAT('%',''),'%') 
   OR FIRST_CATEGORY LIKE CONCAT(CONCAT('%',''),'%')
   OR SECOND_CATEGORY LIKE CONCAT(CONCAT('%',''),'%')
   OR THIRD_CATEGORY LIKE CONCAT(CONCAT('%',''),'%')
   OR CLASS_TARGET LIKE CONCAT(CONCAT('%',''),'%'))
   AND CLASS_STATUS = '승인'
   ;

-- classSearch
SELECT CLASS_NO, CLASS_HOST_NO, CLASS_TYPE, FIRST_CATEGORY, SECOND_CATEGORY, THIRD_CATEGORY FROM CLASS
WHERE (CLASS_NO LIKE CONCAT(CONCAT('%',''),'%') 
   OR CLASS_HOST_NO LIKE CONCAT(CONCAT('%',''),'%') 
   OR CLASS_TYPE LIKE CONCAT(CONCAT('%',''),'%') 
   OR FIRST_CATEGORY LIKE CONCAT(CONCAT('%',''),'%')
   OR SECOND_CATEGORY LIKE CONCAT(CONCAT('%',''),'%')
   OR THIRD_CATEGORY LIKE CONCAT(CONCAT('%',''),'%')
   OR CLASS_TARGET LIKE CONCAT(CONCAT('%',''),'%'))
   AND CLASS_STATUS = '승인'
   ORDER BY TO_NUMBER(SUBSTR(CLASS_NO, 2)) DESC
    ;
------------ Claim -----------------------------
-- claimListCount
SELECT COUNT(*) FROM CLAIM;

-- selectClaimList
SELECT CM.*
FROM (SELECT ROWNUM RNUM, C.*
        FROM (SELECT TO_CHAR(CLAIM_DATE, 'YYYY-MM-DD') CLAIM_DATE, 
                        CLAIM_NO, 
                        CLAIM_WRITER_NO, 
                        CLAIM_TITLE, 
                        CLAIM_STATUS, 
                        CASE WHEN
                            TO_CHAR(SUSPENSION_PERIOD) = '100000' THEN '무기한'
                        ELSE NVL(TO_CHAR(SUSPENSION_PERIOD),' ')
                        END SUSPENSION_PERIOD,
                        NVL(TO_CHAR(HANDLED_DATE, 'YYYY-MM-DD'), ' ') HANDLED_DATE, 
                        NVL(TO_CHAR(SUSPENSION_START_DATE, 'YYYY-MM-DD'), ' ') SUSPENSION_START_DATE, 
                        NVL(TO_CHAR(SUSPENSION_END_DATE, 'YYYY-MM-DD'), ' ') SUSPENSION_END_DATE
                FROM CLAIM
                ORDER BY 1 DESC) C
        WHERE ROWNUM <= 7) CM
WHERE RNUM >= 2;

-- serchedClaimListCount
SELECT COUNT(*) 
FROM CLAIM
WHERE CLAIM_DATE LIKE CONCAT(CONCAT('%','실'),'%') 
   OR CLAIM_NO LIKE CONCAT(CONCAT('%','실'),'%') 
   OR CLAIM_WRITER_NO LIKE CONCAT(CONCAT('%','실'),'%') 
   OR CLAIM_TITLE LIKE CONCAT(CONCAT('%','실'),'%') 
   OR CLAIM_STATUS LIKE CONCAT(CONCAT('%','실'),'%')
   OR SUSPENSION_PERIOD LIKE CONCAT(CONCAT('%','실'),'%') 
   OR HANDLED_DATE LIKE CONCAT(CONCAT('%','실'),'%')
   OR SUSPENSION_START_DATE LIKE CONCAT(CONCAT('%','실'),'%')
   OR SUSPENSION_END_DATE LIKE CONCAT(CONCAT('%','실'),'%');

-- claim search
SELECT TO_CHAR(CLAIM_DATE, 'YYYY-MM-DD') CLAIM_DATE, 
        CLAIM_NO, 
        CLAIM_WRITER_NO, 
        CLAIM_TITLE, 
        CLAIM_STATUS, 
        CASE WHEN
            TO_CHAR(SUSPENSION_PERIOD) = '100000' THEN '무기한'
        ELSE NVL(TO_CHAR(SUSPENSION_PERIOD),' ')
        END SUSPENSION_PERIOD,
        NVL(TO_CHAR(HANDLED_DATE, 'YYYY-MM-DD'), ' ') HANDLED_DATE, 
        NVL(TO_CHAR(SUSPENSION_START_DATE, 'YYYY-MM-DD'), ' ') SUSPENSION_START_DATE, 
        NVL(TO_CHAR(SUSPENSION_END_DATE, 'YYYY-MM-DD'), ' ') SUSPENSION_END_DATE
FROM CLAIM
WHERE CLAIM_DATE LIKE CONCAT(CONCAT('%',''),'%') 
   OR CLAIM_NO LIKE CONCAT(CONCAT('%',''),'%') 
   OR CLAIM_WRITER_NO LIKE CONCAT(CONCAT('%',''),'%') 
   OR CLAIM_TITLE LIKE CONCAT(CONCAT('%',''),'%') 
   OR CLAIM_STATUS LIKE CONCAT(CONCAT('%',''),'%')
   OR SUSPENSION_PERIOD LIKE CONCAT(CONCAT('%',''),'%') 
   OR HANDLED_DATE LIKE CONCAT(CONCAT('%',''),'%')
   OR SUSPENSION_START_DATE LIKE CONCAT(CONCAT('%',''),'%')
   OR SUSPENSION_END_DATE LIKE CONCAT(CONCAT('%',''),'%')
ORDER BY 1 DESC;
 
-- TEST
SELECT TO_CHAR(SUSPENSION_PERIOD)
FROM CLAIM
WHERE TO_CHAR(SUSPENSION_PERIOD) = '100000





SELECT * FROM CLAIM;

     



SELECT * FROM MEMBER;


 
   
   
   
