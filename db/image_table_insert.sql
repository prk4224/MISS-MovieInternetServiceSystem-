-- IMAGE TABLE 데이터 INSERT
SELECT * FROM IMAGE;
DESC IMAGE;

-- 일단 포스터만 넣어둠 10개
INSERT INTO IMAGE
VALUES(1, 1, 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84949/84949_1000.jpg');

INSERT INTO IMAGE
VALUES(1, 2, 'https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84949/84949198131_727.jpg');

INSERT INTO IMAGE
VALUES(1, 3, 'https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84949/84949198135_727.jpg');

INSERT INTO IMAGE
VALUES(1, 4, 'https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84949/84949198136_727.jpg');

INSERT INTO IMAGE
VALUES(1, 5, 'https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000084/84949/84949198138_727.jpg');

INSERT INTO IMAGE
VALUES(2, 1, 'https://movie.naver.com/movie/bi/mi/photoViewPopup.naver?movieCode=196367');

INSERT INTO IMAGE
VALUES(3, 1, 'https://movie-phinf.pstatic.net/20220511_189/1652251073330PXNoG_JPEG/movie_image.jpg?type=m203_290_2');

INSERT INTO IMAGE
VALUES(4, 1, 'https://movie-phinf.pstatic.net/20220516_144/1652665409592Chvey_JPEG/movie_image.jpg?type=m203_290_2');

INSERT INTO IMAGE
VALUES(5, 1, 'https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000085/85977/85977203683_727.jpg');

INSERT INTO IMAGE
VALUES(6, 1, 'https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000085/85689/85689202749_727.jpg');

INSERT INTO IMAGE
VALUES(7, 1, 'https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000085/85715/85715202270_727.jpg');

INSERT INTO IMAGE
VALUES(8, 1, 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84690/84690_1000.jpg');

INSERT INTO IMAGE
VALUES(9, 1, 'https://movie.naver.com/movie/bi/mi/photoViewPopup.naver?movieCode=187347');

INSERT INTO IMAGE
VALUES(10, 1, 'https://img.cgv.co.kr/Movie/Thumbnail/Poster/000085/85852/85852_1000.jpg');

COMMIT;