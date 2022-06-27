-- QNA TABLE 데이터 INSERT
SELECT *
FROM QNA;

DESC QNA;

INSERT INTO QNA
VALUES (1, 1, '제목_공지1', '내용_공지1', '2022/06/26');

INSERT INTO QNA
VALUES (2, 1, '제목_공지2', '내용_공지2', '2022/06/29');

INSERT INTO QNA
VALUES (3, 1, '제목_공지3', '내용_공지3', '2022/06/30');

INSERT INTO QNA
VALUES (4, 2, '제목_질문1', '내용_질문1', '2022/06/27');

INSERT INTO QNA
VALUES (5, 2, '제목_질문2', '내용_질문2', '2022/06/28');

COMMIT;