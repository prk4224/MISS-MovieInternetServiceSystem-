-- MOVIE_INFO TABLE 데이터 INSERT
SELECT *
FROM MOVIE_INFO;

DESC MOVIE_INFO;

-- 현재상영중인 10개(4, 5, 6, 7, 8, 9, 10, 16, 17, 18)
INSERT INTO MOVIE_INFO
VALUES(4, TO_DATE('2022/07/13 09:00', 'YYYY/MM/DD HH24:MI'), 720, 'https://www.youtube.com/embed/0zjDQe4LnAA');
INSERT INTO MOVIE_INFO
VALUES(4, TO_DATE('2022/07/13 15:00', 'YYYY/MM/DD HH24:MI'), 1080, 'https://www.youtube.com/embed/0zjDQe4LnAA');
INSERT INTO MOVIE_INFO
VALUES(4, TO_DATE('2022/07/13 22:00', 'YYYY/MM/DD HH24:MI'), 2160, 'https://www.youtube.com/embed/0zjDQe4LnAA');

INSERT INTO MOVIE_INFO
VALUES(5, TO_DATE('2022/07/13 09:30', 'YYYY/MM/DD HH24:MI'), 1080, 'https://www.youtube.com/embed/DpVAb7Bi5UQ');
INSERT INTO MOVIE_INFO
VALUES(5, TO_DATE('2022/07/13 14:30', 'YYYY/MM/DD HH24:MI'), 720, 'https://www.youtube.com/embed/DpVAb7Bi5UQ');
INSERT INTO MOVIE_INFO
VALUES(5, TO_DATE('2022/07/13 23:00', 'YYYY/MM/DD HH24:MI'), 2160, 'https://www.youtube.com/embed/DpVAb7Bi5UQ');

INSERT INTO MOVIE_INFO
VALUES(6, TO_DATE('2022/07/13 09:15', 'YYYY/MM/DD HH24:MI'), 1080, 'https://www.youtube.com/embed/aw9j_23nORs');
INSERT INTO MOVIE_INFO
VALUES(6, TO_DATE('2022/07/13 11:30', 'YYYY/MM/DD HH24:MI'), 1080, 'https://www.youtube.com/embed/aw9j_23nORs');
INSERT INTO MOVIE_INFO
VALUES(6, TO_DATE('2022/07/13 18:20', 'YYYY/MM/DD HH24:MI'), 720, 'https://www.youtube.com/embed/aw9j_23nORs');

INSERT INTO MOVIE_INFO
VALUES(7, TO_DATE('2022/07/13 10:50', 'YYYY/MM/DD HH24:MI'), 720, 'https://www.youtube.com/embed/Mrj9XACVJ8U');
INSERT INTO MOVIE_INFO
VALUES(7, TO_DATE('2022/07/13 19:10', 'YYYY/MM/DD HH24:MI'), 720, 'https://www.youtube.com/embed/Mrj9XACVJ8U');
INSERT INTO MOVIE_INFO
VALUES(7, TO_DATE('2022/07/13 23:50', 'YYYY/MM/DD HH24:MI'), 1080, 'https://www.youtube.com/embed/Mrj9XACVJ8U');

INSERT INTO MOVIE_INFO
VALUES(8, TO_DATE('2022/07/13 08:50', 'YYYY/MM/DD HH24:MI'), 1080, 'https://www.youtube.com/embed/7vCX_WblP3o');
INSERT INTO MOVIE_INFO
VALUES(8, TO_DATE('2022/07/13 13:40', 'YYYY/MM/DD HH24:MI'), 2160, 'https://www.youtube.com/embed/7vCX_WblP3o');
INSERT INTO MOVIE_INFO
VALUES(8, TO_DATE('2022/07/13 17:20', 'YYYY/MM/DD HH24:MI'), 1080, 'https://www.youtube.com/embed/7vCX_WblP3o');

INSERT INTO MOVIE_INFO
VALUES(9, TO_DATE('2022/07/13 10:30', 'YYYY/MM/DD HH24:MI'), 2160, 'https://www.youtube.com/embed/A33AdB4u8GQ');
INSERT INTO MOVIE_INFO
VALUES(9, TO_DATE('2022/07/13 13:20', 'YYYY/MM/DD HH24:MI'), 2160, 'https://www.youtube.com/embed/A33AdB4u8GQ');
INSERT INTO MOVIE_INFO
VALUES(9, TO_DATE('2022/07/13 18:50', 'YYYY/MM/DD HH24:MI'), 1080, 'https://www.youtube.com/embed/A33AdB4u8GQ');

INSERT INTO MOVIE_INFO
VALUES(10, TO_DATE('2022/07/13 11:50', 'YYYY/MM/DD HH24:MI'), 720, 'https://www.youtube.com/embed/HEMU5jmOuXU');
INSERT INTO MOVIE_INFO
VALUES(10, TO_DATE('2022/07/13 14:20', 'YYYY/MM/DD HH24:MI'), 720, 'https://www.youtube.com/embed/HEMU5jmOuXU');
INSERT INTO MOVIE_INFO
VALUES(10, TO_DATE('2022/07/13 18:10', 'YYYY/MM/DD HH24:MI'), 720, 'https://www.youtube.com/embed/HEMU5jmOuXU');

INSERT INTO MOVIE_INFO
VALUES(16, TO_DATE('2022/07/13 10:20', 'YYYY/MM/DD HH24:MI'), 1080, 'https://www.youtube.com/embed/xTrGcHuD_C4');
INSERT INTO MOVIE_INFO
VALUES(16, TO_DATE('2022/07/13 14:30', 'YYYY/MM/DD HH24:MI'), 720, 'https://www.youtube.com/embed/xTrGcHuD_C4');
INSERT INTO MOVIE_INFO
VALUES(16, TO_DATE('2022/07/13 19:20', 'YYYY/MM/DD HH24:MI'), 1080, 'https://www.youtube.com/embed/xTrGcHuD_C4');

INSERT INTO MOVIE_INFO
VALUES(17, TO_DATE('2022/07/13 08:30', 'YYYY/MM/DD HH24:MI'), 2160, 'https://www.youtube.com/embed/DSEfRVqjbFA');
INSERT INTO MOVIE_INFO
VALUES(17, TO_DATE('2022/07/13 11:30', 'YYYY/MM/DD HH24:MI'), 1080, 'https://www.youtube.com/embed/DSEfRVqjbFA');
INSERT INTO MOVIE_INFO
VALUES(17, TO_DATE('2022/07/13 22:20', 'YYYY/MM/DD HH24:MI'), 2160, 'https://www.youtube.com/embed/DSEfRVqjbFA');

INSERT INTO MOVIE_INFO
VALUES(18, TO_DATE('2022/07/13 07:45', 'YYYY/MM/DD HH24:MI'), 720, 'https://www.youtube.com/embed/mI9oyFMUlfg');
INSERT INTO MOVIE_INFO
VALUES(18, TO_DATE('2022/07/13 14:30', 'YYYY/MM/DD HH24:MI'), 1080, 'https://www.youtube.com/embed/mI9oyFMUlfg');
INSERT INTO MOVIE_INFO
VALUES(18, TO_DATE('2022/07/13 18:50', 'YYYY/MM/DD HH24:MI'), 2160, 'https://www.youtube.com/embed/mI9oyFMUlfg');




COMMIT;