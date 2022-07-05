-- FAQ TABLE 데이터 INSERT
SELECT *
FROM FAQ;
DESC FAQ;
DROP SEQUENCE q_num_seq;

CREATE SEQUENCE q_num_seq
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 9999999
    NOCYCLE
;

INSERT INTO FAQ (Q_NUM,Q_KIND,Q_TITLE,Q_CONTENTS,Q_DATE)
VALUES(q_num_seq.NEXTVAL,1,'[시스템점검] 2022년 6월 시스템 점검 안내','안녕하십니까, MISS입니다.  <br>원활하고 안정된 서비스 제공을 위하여 2022년 6월 새벽 시스템 점검 작업이예정되어 있습니다. 점검 시간 중 MISS홈페이지 및 모바일의 모든 서비스가 중단될 예정이오니 이용에 불편 없으시기바랍니다. <br><br>1. 일시   - 628 (월) 02시 ~ 07시 (월요일에서 화요일 넘어가는 새벽)  <br>2. 내용   - 정기 M작업(시스템 성능 개선 작업) <br>- 작업 대상 : 극장영업시스템, 온라인 서비스(홈페이지모바일)  <br><br>더욱 안정적이고 편리한 서비스를 제공하는 MISS가 되겠습니다.   <br>감사합니다. ','20220627');
INSERT INTO FAQ (Q_NUM,Q_KIND,Q_TITLE,Q_CONTENTS,Q_DATE)
VALUES(q_num_seq.NEXTVAL,1,'[기타] 2022 MISS 신규가입  쿠폰 유효 기한 연장 안내','MISS 신규 가입하고 받으신 영화 관람 무료 쿠폰사용기한은 쿠폰의 사용기한과 상관없이 가입 후 한달까지 연장  가능합니다. <br>고객여러분들의 양해와 많은 이용 바랍니다.   <br>감사합니다.','20220627');
INSERT INTO FAQ (Q_NUM,Q_KIND,Q_TITLE,Q_CONTENTS,Q_DATE)
VALUES(q_num_seq.NEXTVAL,1,'영화 관람요금 변경 안내','안녕하세요, MISS입니다. <br>아래와 같이 영화 관람 가격이 변경되오니, 극장 이용에 참고 부탁드립니다. <br><br>1. 적용 일시 : 2022년 07월 04일(월) 상영영화부터 적용 <br><br>2. 주요사항 <br>* 전체 상영 영화 : 1천원 인상  일부 영화의 경우 관람 요금 정책과 변경 내용은 상이할 수 있습니다. <br>감사합니다. ','20220627');
INSERT INTO FAQ (Q_NUM,Q_KIND,Q_TITLE,Q_CONTENTS,Q_DATE)
VALUES(q_num_seq.NEXTVAL,1,'[시스템점검] KT 휴대폰본인확인  서비스 시스템 점검(516)',' 안녕하세요, MISS입니다.<br> KT 휴대폰본인확인 서비스 시스템 점검으로 서비스 이용이 일시적으로 중단될 예정입니다.  서비스 이용에 불편이 없도록 아래 내용을 참고 해주시기 바랍니다.    <br><br>가. 작업시간: 2022. 05. 16 (월) 23:00 ~ 05.17 (화) 05:00 (약 6시간)   <br><br>나. 작업내용: KT ASS 시스템 작업  <br><br>다. 작업영향   <br>1) 휴대폰본인확인: 작업시간 동안 KT ASS 앱을 통한 본인확인 서비스 중단   <br>- 문자(SMS,LMS) 인증은 정상  <br>- 표준창 내 ASS 앱 인증 버튼 미노출 에정  <br>2) ASS인증서: 작업시간 동안 KT ASS 인증서 서비스 중단  <br>* 본인확인(MNO), 알뜰폰(MVNO) 모두 적용됩니다.   <br>* KT를 제외한 타통신사 인증은 영향 없습니다. <br> 더욱 안정되고 원활한 서비스로 찾아 뵙겠습니다.  <br>감사합니다.','20220627');
INSERT INTO FAQ (Q_NUM,Q_KIND,Q_TITLE,Q_CONTENTS,Q_DATE)
VALUES(q_num_seq.NEXTVAL,1,'[쥬라기 월드: 도미니언] 3D 예매 현장 경품증정 이벤트 안내',' 안녕하세요  MISS입니다.    <br>6월 1일(수) 부터 진행되는 [쥬라기 월드: 도미니언] 3D 예매 현장 경품증정 이벤트의 경품이 변경되어 안내 드립니다. <br>- 기존 : 아이패드 <br>- 변경 후 : 아이폰 <br>변경 상품 확인 부탁드리며 이벤트 참여에 혼선드려 죄송합니다. <br>감사합니다.','20220627');
INSERT INTO FAQ (Q_NUM,Q_KIND,Q_TITLE,Q_CONTENTS,Q_DATE)
VALUES(q_num_seq.NEXTVAL,1,'[시스템점검] 2022년 5월 시스템 점검 안내',' 안녕하십니까, MISS입니다. <br>원활하고 안정된 서비스 제공을 위하여 2022년 5월 새벽 시스템 점검 작업이예정되어 있습니다.  점검 시간 중 MISS홈페이지의 모든 서비스가 중단될 예정이오니 이용에 불편 없으시기바랍니다.  <br><br>1. 일시   - 6/28 02시 ~ 07시 <br>2. 내용 <br>- 정기 M작업(시스템 성능 개선 작업) <br>- 작업 대상 : 극장영업시스템, 온라인 서비스(홈페이지모바일) <br>더욱 안정적이고 편리한 서비스를 제공하는 MISS가 되겠습니다.   감사합니다.','20220627');
INSERT INTO FAQ (Q_NUM,Q_KIND,Q_TITLE,Q_CONTENTS,Q_DATE)
VALUES(q_num_seq.NEXTVAL,2,'[홈페이지] 인터넷 예매 후 예매 내용 확인은 어떻게 하나요?','인터넷 예매 후 예매내역 확인을 원하시는 경우 다음과 같이 확인하세요.  <br><br>홈페이지 로그인 → [MY AGE] → [MY 예매내역]','20220627');

COMMIT;