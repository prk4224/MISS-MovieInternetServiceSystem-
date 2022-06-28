-- FAQ TABLE 데이터 INSERT
SELECT *
FROM FAQ;

DESC FAQ;

INSERT INTO FAQ
VALUES (1, 1, '제목_공지1', '내용_공지1', '2022/06/26');

INSERT INTO FAQ
VALUES (2, 1, '제목_공지2', '내용_공지2', '2022/06/29');

INSERT INTO FAQ
VALUES (3, 1, '제목_공지3', '내용_공지3', '2022/06/30');

INSERT INTO FAQ
VALUES (4, 2, '제목_질문1', '내용_질문1', '2022/06/27');

INSERT INTO FAQ
VALUES (5, 2, '제목_질문2', '내용_질문2', '2022/06/28');

INSERT INTO FAQ
VALUES (6, 1, 'test01', '동해물과<br>백두산이<br>마르고 닳도록', '2022/07/12'); 

COMMIT;