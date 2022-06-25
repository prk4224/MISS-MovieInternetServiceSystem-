-- REVIEW TABLE 데이터 INSERT
SELECT *
FROM REVIEW;

DESC REVIEW;

DROP SEQUENCE review_num_seq;
CREATE SEQUENCE review_num_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 99999999
    NOCYCLE
;

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '역시 스파이더맨이 스파이더맨했다 역시 믿고보는 스파이더맨, 마블', 'nickname1', 1);
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, '그냥 그랬어요~~~~', 'nickname2', 1);
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '몸이 움찔움찔하면서 ㅋㅋ 재미있게 잘봤네요!!', 'nickname3', 1);
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '?? 역시 액션은 스크린 큰 관에서..!!!!', 'nickname4', 1);
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 'What a concept! Multiverse is real!!!', 'nickname5', 1);
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '스파이더맨 3명 나와서 진짜 갬동쓰ㅠ', 'nickname6', 1);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '재밌었고 또 보고 싶어요', 'nickname1', 2);

COMMIT;