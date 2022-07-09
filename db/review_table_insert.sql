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

--1
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '굿굿 영화관에서 보면 더 재밌음 ㅎㅎ 유럽여행 가고싶어짐ㅋㅋㅋ', 'fkr9352', 1);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '치트키 흥행보장 스파이더맨', '후리후리', 1);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '이대로 스파이더맨은 마블이 만드는 걸로 가자! 소니 말고', 'kg2330', 1);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, '재밌긴 한데 스파이더맨 아직도 너무 애같네,,,', 'Anananas', 1);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '아이언맨팬들은 스파이더맨으로 갑니다ㅎㅎ 마블 내통장가져가아아...', '헬리아', 1);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '완전 꿀잼. 어벤져스가 끝나도 아쉽지 않다!', '아고밭', 1);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, '스토리 전개가 매우 엉성하다', 'jin1723', 1);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '스파이더맨~ 스파이더맨~ 시작할 때 뜨던 소니 콜롬비아 빼고는 다 좋았다는..', 'LittleTyke', 1);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, '예전 스파이더맨 1,2,3 가 훨씬 재밋고 낫습니다 ㅠㅠ', '훈이', 1);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '제이크 질렌할의 연기를 보는 것만으로도 만족', '조조영화가 좋다', 1);

commit;

--2
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '베놈 이제 안티히어로가 아니라 히어로됐네 그리고 사랑꾼 카니지', 'horup', 2);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, '1에 비해서는 못미치는 느낌이다ㅠㅠ', '박솔향', 2);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, '하아.. 괴작이로다 괴작이야~', '요르레', 2);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '너무 재밌게 잘 봤어요 심비오트', 'CHAE-MI', 2);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '전작만큼은 아니지만 그래도 재밌어요', 'fa6333', 2);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, '좋은 재료로 쓰레기를 만드는 재주가', '윤눈누', 2);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, '기대하고 봤는데 놀라기만 하고 재미는 없었음..', 'colrla12', 2);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '베놈의 매력에 빠짐...', '제훈앓이', 2);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '톰하디 사랑함 하지만 실지1편보다 쏘쏘했음 단지 신박함이 평범함으로 바껴서', '얄루얀나', 2);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '역시 베놈~ 역시 마블~ 재밌어요', '천재한나', 2);

commit;

--3

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, '너무 어거지같은 연기ㅠ 몰입도가 떨어져요', 'fa6333', 3);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '참 즐겁고 재미있게 보았습니다~~^^', 'duin70', 3);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '참 즐겁고 재미있게 보았습니다~~^^', 'duin70', 3);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '상상 이상!!! 내게 이 일이 일어나면 끔찍할듯....맘조리면서 본 영화', 'li00090', 3);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '재미난 영화 잘 봤습니다.','샤티', 3);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '광수님 나온다고 하셔서 봤어요??? 감동과 코믹까지 ㅎㅎ 너무 재밌었네요', '천태현', 3);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '시간가는줄 모르고 봤는데 결말이 아쉬워요ㅜㅜ', '응구름', 3);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, '차승원연기로 끌고 간 영화', 'jjj75780', 3);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '킬링 타임용으로 괜찮은 영화였어요.', 'jiung', 3);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '한국영화 발전을 기대합니다', '옥지웅', 3);

COMMIT;


--4
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '시즌2가 궁금할 정도로 재미있었어요!!', 'joy16', 4);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '김다미 최우식 연기력 갑...', '손을 맞잡고', 4);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '일단 여주인공의 연기는 압도적이다 . 영화에 집중할수있게 해줬다. 벌써 다음 편이 기다려진다', 'carpediem296', 4);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, '정말 박훈정 감독 영화는 이제 아닌거 같다. 내용도 너무 이상하고 영화도 이상하다', 'dptmqmldivl', 4);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, '2편 만들지 맙시다 스토리 똥망에 디테일도 안맞고 쌍둥이 설정은 정말 ㅎㅎㅎㅎ', 'KNIGHTKID', 4);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '인간적으로 주인공에게 이쁘다는 대사는 하지맙시다. 그것만빼면 독특하고 멋진 영화였어요.', 'BLUESONG81', 4);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, '과잉된 캐릭터를 감당 못한 배우들의 어설픈 연기와 그 캐릭터를 힘겹게 끌고 엉뚱한 산으로 가는 연출', 'SUK', 4);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, '국내판 엑스맨의 시작이네요.', 'dodol7', 4);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, '알바들 진짜 .. 살다가 액션영화 보다 나갈뻔한건 첨이네요', '아도겐03', 4);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, '좋았다는 평들이 왜이렇게 많지? 한번 봐보들하시길','ch651557', 4);

commit;


commit;




--5

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '모드에게 태어나줘서 고마워', '777880003', 5);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, '음?재미가 없었다. 뭐 큰 기대는 없었지만 그래도?', '이뿌니', 5);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, '와 영화 진짜 재미없다..', 'SOS88426', 5);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '배우들의 연기가.... 최고!', 'MIMIME', 5);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '감독의 개성이 우리 배우 사이에 잘 녹은듯', 'hrob52', 5);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 'Break, broke, broken.. 깨지고 망가지고 그렇게 서로에게 기대어 살아가는 법', 'Romeo', 5);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '세가지 박스로 보여주는 고레에다 감독의 따뜻한 세상', '159215', 5);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '강추작입니다. 신파없이 슬프게하네요ㅜㅜ 연기도 너무 좋았습니다', 'jiotry', 5);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, '연출이 작위적임 대사.. 상황.. 왜이러세요...', '깊을딥', 5);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, '소외된 이들로부터 묵묵히 돌아보는 생명의 탄생과 가족이란 의미를 찾아가는 여정', 'junu_', 5);

commit;

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '버스에서 벨 용도가 정차가 아니였구나...', '국가정보보안', 6);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '효정씨와 처음보는 영화여서 그런지 더재미 있고 완전 즐겁게 봤어요', 'vhxh15', 6);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '간만에 웃으면서 한국영화 봤습니다.', 'natoon66', 6);


INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '아?ㅋㅋ 1편보다 재밌는데??', 'MJ세라피나', 6);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '느낌오지? 꼭 봐야하는거.', '룡룡', 6);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '마동석은 하나의 장르다', 'nad000', 6);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '손석구 악역 연기 지리구요', '루시아샤르망', 6);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '이터널스 감독 의문의 1패!! 길가메시보다 마형사가 더 어마무시함~', '무친과학', 6);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '범죄도시 흥행할것 같아요. 재미있게 봤습니다', '테디나키티', 6);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, '뻔하긴한데 볼만해요', 'fsj12kdf', 6);

commit;

--7

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '마하 10을 돌파하는 재미', '그렘린즈', 7);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '이게 영화지!! 올 해 최고의 영화!!! 작품성, 오락성을 동시에 다 잡은 영화는 얼마나 오랜만인지ㅠㅠ', '??엾?', 7);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '눈감고 귀막고 입닫고 조용히 천만', '럭키가이', 7);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 'cg없는 모든게 리얼이다 보니 확실히 생생하다... 올해 단연코 명작', '스테파ni', 7);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '굿굿 역시 톰 크루즈! 멋짐 폭발입니다. 또 보고 싶어요. 극한의 스피드체헝 꼭 하고 싶네요', 'hahifj1856', 7);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '톰 크루즈: 여러분이 저를 완성시켜 줬습니다.', 'EMILIAJONES', 7);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '넷플릭스가 극장을 이길수 없는 이유를 증명한다.', 'HEDA', 7);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '영화가 끝나자마자 아 이건 n차각이다 싶었다', 'hohojjinbbang', 7);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '무조건 봐야하는 영화다', 'MEGAV', 7);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '마음에 걸리는 과거는 날려버리고 뜨겁게 화해하는 곡예 비행으로!', '어웨이', 7);

commit;

--8
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '찾기위해 찾아야죠, 컴온 컴온....', 'arrietty_', 8);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '배우들의 연기도, 중간중간 들을 수 있는 인터뷰도, 읽어주는 책의 구절도, 녹음하던 소리도 모두 좋았습니다.', '쥬쥬짱', 8);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '전부를 이해할 순 없어도 서로를 보여주고 들어주며 인정해간다는 것의 따스함이 느껴지는 영화', 'jieej42', 8);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '가장 아름다운 동행을 담은 흑백영화', 'EMILIAJONES', 8);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '말 많은 조카와 삼촌의 여행길이 귀엽고 사랑스럽다. 흑백이라 더 의미있었고', 'doa45', 8);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, '내용 좋고 연기 잘하는 것도 알겠는데... 너무너무 지루합니다! 이런 류의 영화도 이미 넘쳐나구요.', 'brunowalter', 8);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '주인공처럼 9살 둔 삼촌의 입장에서 공감하고 몰입하면서 관람한 영화!', '여우곰', 8);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '자막만 보는 것보다 대사 뉘앙스도 같이 보는거 추천드려요', 'ju3725', 8);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '네가 보여주는 모든 행동들이 곧 세상에 대한 인터뷰였다는 거.', 'plfy613', 8);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '인간적이고 사려 깊으며 감동적이다', 'NURIMARI', 8);

commit;

--9

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, '클라스를 보여주는 극본, 연출, 연기, 미술, 음악', 's덩h', 9);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, '관객들이 그렇게 만만합니까?', '고복수', 9);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '박찬욱은 배운 변태란 말이 진짜입니다....ㅎ^ㅎ', 'Ezra Koenig', 9);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, '대사가 잘.. 안들렸어요ㅠㅠ;', 'wjdals1146', 9);

commit;

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, '기대했던 것 보다는 지루했어요', '무비섀도우', 9);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, '내용이 난해하다 탕웨이 한국어가 많이 늘었네~ 역시 상받은 영화는 재미 없는게 국룰인가ㅡㅡ', '윤버리', 9);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '자꾸자꾸 되새김질 하게 된다.', '포터포터', 9);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, '마침내, 익숙한 반죽으로도 남다른 색다른 진미를 뽑아내는 박찬욱만의 농담 짙은 멜로', '관찰자 시점', 9);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, '무슨소리인지 이해가 잘 안가요..', '매운탕1', 9);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, '너무 잠이 왔습니다 너무 실망했습니다.', 'rkodnd9580', 9);

commit;


--30번
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'초중반까지는 스카이폴 버금가는 명작이 나오는줄 알았으나... 후반부 왜색 떡칠과 납득할 수 없는 전개 다니엘 크레이그의 007은 스펙터까지인걸로', 'liyim', 30);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'본드에 대한 예의가 전혀 없음ㅋㅋㅋ 보다가 식겁함.. 빌런의 거대한 자의식이 어마어마해서 오히려 웃겼고, 팔로마가 더 나왔으면 더 재밌었을듯. 팔로마 액션이 더 좋았음', 'sol_solla', 30);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'처음 빌런역 캐스팅이 공개됐을때 기대를 엄청 했었는데 비중이 너무 없고 허무하게 끝났네요 그냥 그동안 애쓴 다니엘 크레이그 헌정작 이상도 이하도 아닌 영화', '때오사마', 30);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'토요타를 타는 제임스본드.. 다다미에 앉아 일본식으로 정원에서 사는 라미말렉.. 감독이름부터 낯설다..', 'a.k.a JC', 30);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'이거 보여주려고 1년반을 넘게 개봉 미룬거냐? 진짜 보면서 빨리 끝났으면한 007은 이번이 처음이었다. 좋은 배우들 가지고 이렇게 만들기도 쉽지 않은데 대단하다.', '김석기', 30);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'올해 본 영화 중 최악. 지루한 가족 서사, 기발하지 못한 스토리 진행, 미션 임파서블보다 못한 액션씬, 레아세이두에 대한 스토리는 이것이 최선인가. 마지막 대사에서 최악의 최악에 기함하고 나옴', 'jw0626', 30);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'초반20분은 본드를 보았고 나머지 두시간은 중딩용 일본애니를 보는듯', '담륵', 30);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'시리즈 최악이라 단언해봅니다... 감독 이 XX....', '전장의늑대', 30);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'007시리즈 를 역대 최에악으로 마무리하다', 'toto4403', 30);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'후반부로 갈수록 늘어지고 지루...', 'soia1733', 30);

-- 29번
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'생각보다 실망감이.. 너무 잔인한 장면만 많고 90분동안 나가지도 못하고 인질이 된 듯한 기분이엇어요..', '뽀오라미잉', 29);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'황정민 연기 빼고 보면 볼게 없네요..', '몽블', 29);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'역시 황정민 잘 봤습니다', '브람스', 29);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'영화 제목은 인질인데 인질범과 인질이 없는 것 같은 영화! 뻔하게 답습하는 한국영화 패턴에 무능한 캐릭터는 돌려막기! 그나마 양보해서 황정민표 재능낭비', 'Junu', 29);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'헹… 생각보다 별로였어요..', '이쩡', 29);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'실감나는 상황과 연기 좋았습니다.자꾸 만약에 내가 인질로 잡혔다면하는 이입을 하게되어 더 리얼감과 긴장감이 더해졌다. 연기인지 실화인지 모를정도로 배우들의 연기 굿!!!', 'julmk2003', 29);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'긴장감 몰입도 최고, 배우들 연기 최고ㅜㅜ', '미니쭁', 29);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'2시간 동안 영화에 잡힌 관객이 인질', 'Sea master', 29);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'지루할틈 없이 진짜 재밌었어요 굿??', 'kyyj455123', 29);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'긴장감 넘치는 스릴러. 배우 ''황정민'' 믿고 보는 작품.', 'Elin^^*', 29);

--28
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'동물들은 어디로 갔는가', '헌터', 28);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'전반적으로 늘어지고 지루하다', 's덩h', 28);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'사라진 개연성. 허술한 줄거리. 실종된 동물들', '??엾?', 28);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'전작보단 괜찮지만, 정치적인 내용이 더 뚜렷하다. 머글들과 전쟁? 전쟁은 선포했지만... 글쎄 이번편도 할말을 잃게 만들었고, 이후 4편과 5편도 기대를 안하고싶다.', '투니무비', 28);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'전체적으로 지루하고 큰내용이 너무 없음 그냥 시리즈를 억지로 이어가려는 느낌', '동구산', 28);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'실수로 간하는걸 빼먹은 찌개같다.', 'Gorthaur', 28);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'역시나 덤블도어와의 만남...그란델왈드의 등장 등이 기대를 저버리지 않는구나', 'aghah1', 28);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'무언가 큰 제약, 갈등 같은것이 큰 긴장감이 없었으며 전작보다는 대체적으로 나으나 뉴트와 동물들의 씬이 너무 적어 아쉬웠다', '럭남', 28);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'기대가 컸는데 실망이에요. 조니뎁의 빈자리도 커보이고 휘닉스는 악세사리?', 'daooceo1', 28);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'기대와는 달리 촛점이 흐려지고 원작 그대로 옮긴게 맞는지 모르겠네요', 'lyaria', 28);

-- 27
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'자막보다는 더빙판을 선호하는데 이번 더빙 성우들의 연기는 이질감 없이 몰입감도 끝내줬다 더빙판에서 흔하게 들을 수 있었던 스타성우 출연을 배제한 것 같다 개인적으로 애정하는 성우 코쥬로역의 장민혁님에게 박수 짝짝??', '지금이야♡', 27);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'솔직히 더빙이어서 걱정 많이 했는데 꽤 괜찮았어요! 근데 ㅋㅎㅋㅎㅋㅎㅋ 아카자 목소리?Jㅎ? 스폰지밥 목소리가 섞여있었음ㅋㅎㅎㅋ 그래도 감정 이입이 잘 되서 만족스러웠습니당', '다인다인 아쫌!!', 27);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'역시 최고의 더빙! 더빙 덕분에 몰입해서 잘 봤다. 박진감 있는 구성과 스피드한 전개, 그리고 후반부의 감동이 더욱 잘 느껴졌던 영화', '팬지파스타', 27);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'꼬옥 극장에서 보세요 렌고쿠랑 탄지로 엔무 모두의 목소리가 명품이고 원어판 생각안날정도로 멋져요....', 'beoo12', 27);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'개인적으로 자막판을 더 선호할 수 밖에 없네요', '져니군', 27);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'더빙 기대 이상으로 잘됐어요!!', 'ekdpf9922', 27);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'스폰지밥 잘봤습니다 ㅋㅋ', 'ko7756', 27);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'더빙이라 안울줄 알았어요. 존나슬픈데 아카자 목소리에서 자꾸 스폰지밥이 들려요... 그것빼곤 다좋음 ㅠ 살아돌아와줘...내곁에...', 'yueyung', 27);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'렌고쿠상 못잃어 ㅠㅠ 스릉흔드', 'egopia', 27);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'더빙은 살짝 그랬네요 역시 자막을 따라올 수 없었다...', '너살려', 27);

--26
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'오랫동안 기다려온 마블, 완벽한 여성서사', 'doa45', 26);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'코로나 이후의 첫 마블영화, 여성 서사 영화! 정말 최고입니다!!', '뚜찌빠찌뽀찌', 26);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'역시 블랙위도우가 짱이야.', 'le0509', 26);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'마블 솔로 영화중 베스트 중 하나. 그녀의 비밀, 그녀의 선택, 그녀의 모든 것.', '물오리', 26);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'어벤저스 안 부러운 솔로 무비', '헌터', 26);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'나타샤 로마노프 이제 쉬소서', 'ruhl0103', 26);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'드디어 블랙위도우의 시대가 왔다.', 'tosg', 26);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'말할 필요없이 좋은 영화', 'mymanegi00', 26);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'이렇게 보내야하다니 말도안된다 쿠키를 보면 정말 아쉽다 그녀의 이야기는 아직한참 남아있는', 'тэнгэр', 26);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'마지막영화라니 섭섭하네요', 'jb406', 26);

--25
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'스토리 최악. 갑분 우주는 뭔지..', '치킨러버', 25);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'물리법칙, 수학, 과학은 거짓말 안한다면서 영화 내내 물리법칙, 수학, 과학 다 거스르는중', 'crn101', 25);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'음. 분노의자석 이거하나면 끝', 'kiing2', 25);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'남의 물건은 다 부수고 자기들은 행복하고...', '햐랴랴', 25);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'이전의 분노의 질주 중 최고 별루.. 아무리 말도 안되는 액션이지만 이번엔 좀..', '개빡친공주 아빠', 25);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'역시 분노의 질주는 큰 화면에서 봐야 제맛! 아맥으로 봤으니 4DX로 한 번 더 봐야겠음', 'hiheh16', 25);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'점점 시리즈 스토리가 뇌절하게 만드는 영화.... 그냥 7편으로 끝내지...차라리 외전인 홉스앤 쇼 후속작을 만들지...', 'timef', 25);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'지루해요. 억지로 스토리 끼워맞추기에.. 차라리 첫편처럼 레이싱만 하면 슈퍼카 질주하는 재미라도 있을텐데, 왜 자꾸 세상을 구할려고 하는건지..', 'miunkko', 25);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'존시나 영입한거 신의한수', 'payrock', 25);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'역시 분노의질주 시리즈 답게 시원시원한 액션이랑 전개였어요 ㅎㅎ 액션영화 좋아하시면 추천드려요 ㅋㅋㅋ', 'glse581ge', 25);

--24
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'마블의 첫번째 실험이자 위기', 'bookandend', 24);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'정말지루하고 잼없었다 중간에나갈까하다 참았다 샹치도 더럽게 지루했는데 상치만큼 잼없었고 결론 듄 최고', 'y520756', 24);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'마블리가 진짜 Marvel Lee가 되어버렸네 ㄷㄷ', '미스터션샤인', 24);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'마블아닌듯..너무 재미없고 지루함, 중간에 인도영화인줄..재밌다는분들 신기하다. 다들 핸드폰확인하고 하던데..3시간 가까이 너무 졸렸음.. 예고편이 다인듯.아휴, 차라리 아이맥에 듄 상영좀 해주세요!!', 'ls761', 24);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'몰입이 잘 안되고 스토리가 빈약한느낌', 'Crocy', 24);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'기대가 너무 컸던 것일까요', '귀요미', 24);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'이거 보느니 듄 한번 더보세요', 'p3utbutt3r', 24);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'공부해야할 게 더 생긴 느낌..', 's덩h', 24);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'노잼…. 오프닝부터 별로였는데.. 스토리가 계속 노잼.. 4D효과도 그닥;;', 'movie*♡', 24);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'최악이었다 시간아까움', '닌닌닌닌', 24);

--23
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'간만에 괜찮은 한국영화 한편이 나왔다...', 'copabears', 23);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'간만에 괜찮은 한국영화 본 듯. 탄탄한 스토리라인에, 믿고보는 연기력, 끝까지 긴장감을 갖게 하고, 꼭 그래야만했는지 아쉬움과 씁쓸함까지 남아서 만족스러웠음.', '취향저격 빵야빵야', 23);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'신파가 거의 없어요. 몰입감 상당했고 배우들 연기도 대박이네요. 정말 재밌게 봤습니다. 올해 한국 영화 중 최고... 개봉일에 IMAX로 재관람 예정입니다.', '망고맛주스', 23);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'과장도 억지도 없이 담백한데 생각할 거리들을 던져 주네요. 잘 봤습니다~', '코로나야가라', 23);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'신파는 90프로 없어요 배우들 연기야 최고구요 총격사운드 진짜 좋네요 수요일에 아맥으로 다시 볼려구요', '응알이', 23);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'천 만 가즈아!!! 역시 류승완~홈런쳤다!!!', '자유별지구인', 23);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'감독 류승완, 이름값 했다!!!!', '하얀완두콩', 23);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'올 여름 책임질 한국형 블록버스터 배우들의 연기가 인상적이고 재미와 감동이 있는 작품', 'david h', 23);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'첨에는 가볍게 시작했으나 점점 웬지 짠한게 밀려드는', '빛69', 23);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'엄마가 기대하셔서 보여드렸는데 연기 좋았고 재밌었다고 하네요', '현ok', 23);

-- 22
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'생각보다 한효주 연기가 너무 어색 ㅋㅋㅋ..', '비극과 희극은 손을 맞잡고', 22);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'7년 반이라는 시간이 흘렀음에도 오히려 더 낡은 퀄리티를 보여준 한국 상업 영화의 암울함.', 'Cubs3', 22);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'cg는 어마어마한데 스토리 전개에 인과성이라고는 없고 억지스러운 웃음코드. 하품이 나오는 오락영화라니. ㅠㅠ 정말 오랫만에 보는 망작이네요. 안타깝네요 ㅠㅠ', 'leady92', 22);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'시사회로 봐도 시간 아까움, 돈 주면 봐줄수는 있음 ㅋㅋㅋㅋ', 'OAASSISS', 22);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'한효주의 연기가 엥? 스러웠지만 대사톤을 그렇게 하라고 한거같으니 그런거겠지..? 그거말고는 재밌던 코믹사극', 'ehraah', 22);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'올 추석 3사 편성표에 등장할 망작;;', 'Junu_', 22);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'기대가 커서 그런지 실망이 좀 큰편이에요..뒤로 가면서 좀 루즈해져서 지겹고 시끄러운 장면 대사가 안들려서 뭐라는 지 모르겠어요', 'goeaven38', 22);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'내 원픽은 세훈이!!!ㅋㅋㅋ', '최순석', 22);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'클리셰 빵빵 CG 괜찮은데 너무많이넣었.. 연기도 이번엔 배역맞춰서 한거같은데 내취향은 아닌듯..한', 'cos919', 22);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'한효주의 연기가 저만 이상한가요? ㅋ', 'yuazuki3', 22);

-- 18
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'진짜 베니 아니면 누가 닥터 스트레인지를 이렇게 소화할 수 있겠냐ㅋㅋ 보는내내 행복ㅋ', 'birthday01', 18);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'최근에 핫한 메타버스를 오락영화에 가져와 인생의 통찰까지 담아냈다!', 'Soul', 18);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'최소 완다비전은 꼭 보고 영화관 가시기 바랍니다. 평점 낮은 사람들은 스토리 이해를 못해서 그래요 알고 보면 아는만큼 보입니다. 배우들 연기 영상, 연출, 몰입감 최고였어요! 쿠키영상 2개', '재원쓰7', 18);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'마블의 탈을 쓴 B급 호러영화…', 'goman0830', 18);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'스칼렛 위치 당신은 최강...', 's955', 18);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'진짜 어딘가에 멀티버스가 존재할 것 같은ㅋㅋㅋ CG팀 고생하셨슴돠', 'p7j7t7r', 18);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'연출이랑 멀티버스 세계관이랑 넘 잘어울림!!', '파이브', 18);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'닥스2 역대급임 믿고ㄱㄱㄱ', '22dzfu', 18);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'마블치고는 별로라는 평이있긴하지만... 이것보다 더잘만들수있을까 싶을정도로 내용이해도 잘됐고 너무너무 다 좋았다고 생각해요ㅠㅠ 두시간이 순삭...! 완다때문에 눈물흘리고... 다시봐야겠어요 꼭보세요!!!', 'cjkdustna', 18);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'완다비전을 봐서 완다의 모성애에 조금 공감이 갔다. 쿠키는 2개!! 영화는 영화로만 이어지면 좋겠다', 'ELIZABETHOLSEN', 18);

-- 17
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'옷 머리 신발 양말 신발 양말 머리부터 젖습니다 젖는 겁니다 젖습니다 젖는 겁니다 젖습니다 안 젖을 수 없는 여기는 쥬라기 월드.', '그렘린즈', 17);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'감독이 스티븐 스필버그가 아니면 살릴 수 없음. 긴장의 강약 조절도 모르고, 감정 조절도 안되고... 그냥 난장판임...그래픽도 디워를 떠오르게 함. 영화를 만든 노력에만 점수를 줌.', 'macgia', 17);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'쥬라기월드 부제:메뚜기월드', '콩파니', 17);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'공룡말고 메뚜기가 더 많이 나와요;; 메뚜기 좋아하시면 추천드립니다', '솔직한 사람', 17);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'솔직히 앞에 너무 지루하다… 너무 산만해…', '닉네임이즈닉네임', 17);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'재미 없음 정말 재미 없음', 'miapk', 17);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'쥬라기 월드 로 시작하여 쥬라기 공원으로 막을 내리다', '스윗m3', 17);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'다소 아쉬웠던 마지막.. 원년멤버 다시 봐서 너무 반가웠지만 그래도 노잼ㅠㅠ', '??엾?', 17);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'쥬라기시리즈중 가장 별로였던듯. 옆에서 얘들은 관람 방해하고 그래도 부모란것들은 꿋꿋이 3시간동안 자리 지키고. 아마 각오하시고 가야할듯.', '제천대성xo', 17);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'별로 재미없어요 보지마세요', '쭈누쭌', 17);

-- 16
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'무한한 공간, 저 너머로', '쉐도우닉', 16);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'관람평에 동성애 어쩌고 떠드는 멍청이들 보란듯이 편견을 깨부수는, 무한한 가능성을 보여준 영화.', '510324', 16);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'<토이 스토리> 4.5편, 또는 <캡틴 아메리카> 3.5편.', '그寧걍', 16);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'픽사의 무한한 상상 저 너머로. ‘토이 스토리’의 앤디가 어떠한 마음으로 버즈를 사랑했을지 헤아리게 된다.', '관찰자 시점', 16);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'삭스 입양하고 싶어요.', 'EMILAJONES', 16);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'토이스토리를 좋아한다면 보지마세요', 'zㅔ인', 16);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'픽사 영화의 특징인 방심하다 울컥하는 장면은 없지만 작화와 스토리가 뛰어남. 특히 아이맥스로 보는 역동적인 우주 비행의 모습은 그야말로 압권!!', 'brunowalter', 16);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'토이스토리를 좋아했던 사람들과 우주에 꿈이 있던 사람들 모두를 실망시킬 것이다.', 'DJAKE', 16);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'그랬다. 이 영화가 토이 스토리 그 꼬마가 그토록 좋아했던 그 영화였다.', 'JeRemy', 16);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'무한한 공간 저너머로!! 광활한 우주를 따뜻한 색채와 부드러운 질감으로 잘 표현한듯 합니다.', 'NURIMARI', 16);

-- 15
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'흑화된 엠마 둘이 아주 혼을 쏙 빼놓는다', 'zㅔ인', 15);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'올해 영화중에 제일 재밌음ㅠㅠ 엠마스톤 분수앞 독백부분 연기가 미쳤다', '김뽕구', 15);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'엠마와 엠마가 주연인 것엔 다 이유가 있었다', '_김우주', 15);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'패션쇼를 보는 듯 눈이 놀라고 신나는 음악에 귀가 호강하고 배우들의 연기에 마음의 박수를 보냅니다', '행복하루', 15);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'크루엘라는 찌릿찌릿한 스크래치로 스크린을 할퀴는 빌런이다. 불맛 물씬 나는 빌런이 우리의 마음을 훔치러 성큼 다가오고 있다.', '관찰자 시점', 15);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'디즈니 라이브액션 가운데 최상위급에 넣어야 할 완성도와 재미.', '그寧걍', 15);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'시사회로 어제 봤는데~ 엠바고로 후기는 패스~ㅜㅜ 쿠키 영상 있으니 퇴장 하실꺼면 일찍 뛰어 가시길~!!', 'LALA LAND2016', 15);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'아 제발…. 캐릭터도 중구난방, 스토리 개연성 진심 뭐야', '최도령령령', 15);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'지루하고 재미없고 졸리다', '깜장해적', 15);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'와우 최근 본 영화 중에 최고!!', '조조영화가 좋다', 15);

--14
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'역시 디즈니! 말이 필요 없다! 올 겨울 당신을 녹여줄 따뜻한 마법 한 줌!', 'Soul', 14);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'후반부에 갑자기 후다닥 끝나버려서 감동도 없고 미적지근... 뭐지? 싶었음...', '일산곰', 14);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'이 작품은 아동용인걸 간과했다...', '데인이', 14);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'기대했는데 좀 싱거운 아쉽네요 색감은 화사한데 스토리가 약한듯 음악도', '에젤리가', 14);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'영화가 너무 주제도 그렇고 급하게 만든 듯해 성의가 없어 보입니다', '가영맘', 14);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'일단 재미는 있어요. 근데 끝나고 기억에 남는게 별로 없어요... 특히 노래가 임팩트가 없고 그냥 흥겨움. 시각적 화려함은 최고!!', 'diypiyo', 14);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'제 취향은 아니에요 시끌벅적 하다 끝난 느낌', 'e', 14);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'개연성없이 공감 안되는 스토리..', 'be', 14);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'노래도.. 전개도... 너무 마감일 맞춰 허둥지둥 만든 느낌이 없잖아 있네요. 묘하게 감동적인데 또 묘하게 .. 이상...', 'ya-ong', 14);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'뻔한 가족 뮤지컬 애니매이션...색채와 색감은 굿!', 'sky3', 14);

-- 13
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'갈수록 재미없어지네.. 보다가 졸았음.. 1편에서 끝냈어야지..ㅜㅜ 이거 재밌다는 사람이랑 같이 영화보지 마시길.. 알바아니면 그냥 다 재밌는 사람임', '팔심어', 13);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'●킹스맨 같지않음. 그냥전쟁영화. 보지마세요 실망100%', 'hobogus', 13);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'연말에 애인이랑 보려고 존버했습니다. 캬.. 이런 역사적 사실을 이렇게도 풀어낼 수 있구나.. 싶고 너무 재밌게 봤어요 ㅎㅎ', '쥬라기', 13);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'초중반이 상당히 지루해서 졸았음 전쟁영화같고 재미가없음 기존 킹스맨과 연관성도 없고.. 굳이 영화관까지 가서 볼정도는아닌듯 기대에 많이 못미침', 'reection73', 13);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'어디 가서 킹스맨 좋아한다고 말할 거면 일단 킹스맨 퍼스트 에이전트 보고 얘기해야 한다고 생각합니다 ㅋㅋㅋ 덕후 마음 뻐렁친다~!!', '바로가기', 13);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'최근에 본 영화중 가장 지루하고 졸린영화', '짐승고라', 13);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'전개가 너무 별로에요 진짜로…', '맴맴맴맴밍', 13);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'신선한 배우 조합인데 케미가 미쳤다 와… 이 조합을 알아 본 감독도 대단해 ㅎㅎ', '흐미', 13);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'댄싱 액션이라니.. 병맛 전작은 볼만했는데 이건 재미가 없었습니다', 'jy06', 13);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'킹스맨 영화가 아님 느리고 지루하고 액션이 부족', '비행선장', 13);

-- 11
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'토르 시리즈 중 제일 밋밋... 쿠키 마저도 밋밋...', 'ABCDEFGHIJKLMNOPQRSTUVWXY', 11);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'아카데미 주연상급 배우들도 이런 내용에선 답이 없다.', '그렘린즈', 11);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 1, 
'차라리 로키를 살려내라. 디즈니놈들아! 소문난 잔치에 쿠키 쿠키 말고 먹을게 없다,', 'Romeo', 11);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'이건 아니잖아 이건 아니잖아 ㅠㅠㅠ', 'dril75', 11);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'토르 시리즈는 이제 놓아줘야 되나 ㅠ', 'jash244', 11);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'솔로무비는 라그나로크에서 멈췄어야 했다. 닥스2가 큰실망이였다면 이 영화는 순수노잼. 굳이 안만들어도 됐을 아무도 궁금하지 않은 영화', '무적의 기사 라만차의 돈키호테', 11);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 2, 
'마블시네마의 종말을 알리는 영화네요. 이터널스,닥터2 심지어 토르2편보다 더 최악입니다. 그리고 아이맥스 화면,사운드믹싱,CG도 역대급으로 형편없습니다. 마블 좋아해도 그냥 디플로 보세요. 크리스찬베일 연기만 최고였습니다', '0tt', 11);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'햄식이형 여기까지가 끝인가보오 ㅠ', 'sasik45', 11);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'너무 뻔한 마블영화 스타일이 나왔습니다 ㅠ', 'kibin00', 11);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'다들 왜 탑건이랑 비교하지 토르는 토르 나름대로 마블의 재미요소를 다 기대충족시킴 개 꿀잼인데', 'pi8765', 11);

-- 10
INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 3, 
'유치함으로 중무장한 진정성', '지누씨네', 10);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'현실과 영화속 세계를 자유롭게 넘나들다', 'EMILIAJONES', 10);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'니콜라스 커이지가 그냥 반가웠다.', 'tosg', 10);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'니콜라스 케이지가 니콜라스 케이지 역할인 것 부터 웃기다고 ㅋㅋㅋ', 'wnjdvde', 10);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'니콜라스의 웃기고 똘똘한 자아비판', '마이클', 10);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 4, 
'초반부분만 지나면 큰 웃음을 선사해준 영화 그렇다고해서 초반부분이 재미없다는 것은 아님? 자극적인 것들을 쫓는 관객선호도 등을 풍자하기도 했고 크게 웃으면서 보기 좋은 영화였음', '하니루08', 10);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'잘 관람하고 왔습니다.', '73o2', 10);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'미친능력 The Unbearable Weight of Massive Talent', '고흐동생고갱', 10);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'케서방이 이번에 제대로 터졌습니다!', '여우곰', 10);

INSERT INTO REVIEW
VALUES(review_num_seq.NEXTVAL, 5, 
'망가짐을 초월한 닉 케이지', '헌터', 10);



COMMIT;