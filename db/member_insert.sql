-- MEMBER TABLE 데이터 INSERT
SELECT *
FROM MEMBER;

DESC MEMBER;

DROP SEQUENCE mb_num_seq;
CREATE SEQUENCE mb_num_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 9999999
    NOCYCLE
;

INSERT INTO MEMBER
VALUES(mb_num_seq.NEXTVAL, 'test01', 'test1', '010-1234-5678', '1994/11/30', 'nickname1', 1, 1000);
INSERT INTO MEMBER
VALUES(mb_num_seq.NEXTVAL, 'test02', 'test2', '010-1234-5678', '1994/11/30', 'nickname2', 2, 2000);
INSERT INTO MEMBER
VALUES(mb_num_seq.NEXTVAL, 'test03', 'test3', '010-1234-5678', '1994/11/30', 'nickname3', 3, 3000);
INSERT INTO MEMBER
VALUES(mb_num_seq.NEXTVAL, 'test04', 'test4', '010-1234-5678', '1994/11/30', 'nickname4', 4, 4000);
INSERT INTO MEMBER
VALUES(mb_num_seq.NEXTVAL, 'test05', 'test5', '010-1234-5678', '1994/11/30', 'nickname5', 1, 5000);
INSERT INTO MEMBER
VALUES(mb_num_seq.NEXTVAL, 'test06', 'test6', '010-1234-5678', '1994/11/30', 'nickname6', 2, 6000);
INSERT INTO MEMBER
VALUES(mb_num_seq.NEXTVAL, 'chaewon1130@naver.com', '김동호', '010-1234-5678', '1994/11/30', '미스', 1, 0);

COMMIT;