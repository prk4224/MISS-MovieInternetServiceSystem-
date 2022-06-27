<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<c:set var="resources" value="/resources"/>
<c:set var="CP_RES" value="${CP}${resources}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<meta name="robots" content="noindex">
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Lato:400,700,900italic,300italic,300,100italic,100,700italic,400italic,900'>
<link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.3/animate.min.css'>
<style class="FAQ">
	 header {
	  position: relative;
	  height: 180px;
	  line-height: 180px;
	  text-align: center;
	  background-color: gray;
	}
	header h1 {
	  color: #ffffff;
	  font-size: 40px;
	  font-size: 2rem;
	}
    
       body {
           background-color: black; /*배경색 검정*/
           }

       a {
           color: black;
           text-decoration: none;
       }
 
       .cd-faq {
           max-width: 1024px;
           margin: 4em auto;
       }
       @media only screen {
           .cd-faq {
               position: relative;
               margin: 4em auto;
           }
       }

       .cd-faq-categories a {
           position: relative;
           display: block;
           overflow: hidden;
           height: 50px;
           line-height: 50px;
           padding: 0 28px 0 16px;
           background-color: #260a33;
           color: #ffffff;
           white-space: nowrap;
           border-bottom: 1px solid #555b61;
       }
 
       .cd-faq-categories li:last-child a {
           border-bottom: none;
       }
       @media only screen and (min-width: 768px) {
           .cd-faq-categories {
               width: 20%;
               float: left;
               box-shadow: 0 1px 2px rgba(0, 0, 0, 0.08);
           }
           .cd-faq-categories a {
               font-size: 13px;
               font-size: 0.8125rem;
               font-weight: 600;
               padding-left: 24px;
               padding: 0 24px;
               -moz-transition: background 0.2s, padding 0.2s;
               -o-transition: background 0.2s, padding 0.2s;
               -webkit-transition: background 0.2s, padding 0.2s;
               transition: background 0.2s, padding 0.2s;
           }
           .cd-faq-categories a::before, .cd-faq-categories a::after {
               display: none;
           }
           .no-touch .cd-faq-categories a:hover {
               background: #555b61;
           }
           .no-js .cd-faq-categories {
               width: 100%;
               margin-bottom: 2em;
           }
       }
       @media only screen and (min-width: 1024px) {
           .cd-faq-categories {
               position: absolute;
               top: 0;
               left: 0;
               width: 200px;
               z-index: 2;
           }
 
           .cd-faq-categories .selected {
               background: #260a33 !important;
           }
           
           .cd-faq-categories.is-fixed {
               /* top and left value assigned in jQuery */
               position: fixed;
           }
           .no-js .cd-faq-categories {
               position: relative;
           }
       }

       .cd-faq-items {
           position: fixed;
           height: 100%;
           width: 90%;
           top: 0;
           right: 0;
           background: #ffffff;
           padding: 0 5% 1em;
           overflow: auto;
           -webkit-overflow-scrolling: touch;
           z-index: 1;
           -webkit-backface-visibility: hidden;
           backface-visibility: hidden;
       }
       .no-js .cd-faq-items {
           position: static;
           height: auto;
           width: 100%;
           -moz-transform: translateX(0);
           -ms-transform: translateX(0);
           -webkit-transform: translateX(0);
           transform: translateX(0);
       }
       @media only screen and (min-width: 768px) {
           .cd-faq-items {
               position: static;
               height: auto;
               width: 78%;
               float: right;
               overflow: visible;
               -moz-transform: translateZ(0) translateX(0);
               -ms-transform: translateZ(0) translateX(0);
               -webkit-transform: translateZ(0) translateX(0);
               transform: translateZ(0) translateX(0);
               padding: 0;
               background: transparent;
           }
       }

       }

       @media only screen and (min-width: 768px) {
           .cd-close-panel {
               display: none;
           }
       }

       .cd-faq-group.selected {
           display: block;
       }
       .cd-faq-group .cd-faq-title {
           background: transparent;
           box-shadow: none;
           margin: 1em 0;
       }

       .cd-faq-group .cd-faq-title h2 {
           text-transform: uppercase;
           font-size: 2.5rem;
           font-weight: 700;
           color: #bbbbc7;
       }
       .no-js .cd-faq-group {
           display: block;
       }
       @media only screen and (min-width: 768px) {
           .cd-faq-group {
               /* all groups visible */
               display: block;
           }
           .cd-faq-group > li {
               background: #ffffff;
               margin-bottom: 6px;
               box-shadow: 0 1px 2px rgba(0, 0, 0, 0.08);
               -moz-transition: box-shadow 0.2s;
               -o-transition: box-shadow 0.2s;
               -webkit-transition: box-shadow 0.2s;
               transition: box-shadow 0.2s;
           }
           .no-touch .cd-faq-group > li:hover {
               box-shadow: 0 1px 10px rgba(108, 125, 142, 0.3);
           }
           .cd-faq-group .cd-faq-title {
               margin: 2em 0 1em;
           }
           .cd-faq-group:first-child .cd-faq-title {
               margin-top: 0;
           }
       }

       .cd-faq-trigger {
           position: relative;
           display: block;
           margin: 1.6em 0 .4em;
           line-height: 1.2;
       }
       @media only screen and (min-width: 768px) {
           .cd-faq-trigger {
               font-size: 24px;
               font-size: 1.5rem;
               font-weight: 300;
               margin: 0;
               padding: 24px 72px 24px 24px;
           }
           .cd-faq-trigger::before, .cd-faq-trigger::after {
               /* arrow icon on the right */
               position: absolute;
               right: 24px;
               top: 50%;
               height: 2px;
               width: 13px;
               background: #cfdca0;
               -webkit-backface-visibility: hidden;
               backface-visibility: hidden;
               -moz-transition-property: -moz-transform;
               -o-transition-property: -o-transform;
               -webkit-transition-property: -webkit-transform;
               transition-property: transform;
               -moz-transition-duration: 0.2s;
               -o-transition-duration: 0.2s;
               -webkit-transition-duration: 0.2s;
               transition-duration: 0.2s;
           }
       
       }

       @media only screen and (min-width: 768px) {
           .cd-faq-content {
               display: none;
               padding: 0 24px 30px;
           }
           .cd-faq-content p {
               line-height: 1.6;
           }
           .no-js .cd-faq-content {
               display: block;
           }
       }
   </style>
</head>
<body>
<!-- 헤더영역 -->
  <%@include file="../cmn/header.jsp"%>
<!-- //헤더영역 -->
<section class="cd-faq">
    <ul class="cd-faq-categories">
        <li><a class="selected" href="#notice">공지사항</a></li>
        <li><a href="#questions">자주하는 질문</a></li>

    </ul>

    <div class="cd-faq-items">
        <ul class="cd-faq-group" id="notice">
            <li class="cd-faq-title">
                <h2>공지사항</h2>
            </li>
    
            <li><a class="cd-faq-trigger" href="#0">[시스템점검] 2022년 6월 시스템 점검 안내</a>
                <div class="cd-faq-content">
                    <p>
                            안녕하십니까, MISS입니다. <br />
                            <br /> 원활하고 안정된 서비스 제공을 위하여 2022년 6월 새벽 시스템 점검 작업이예정되어 있습니다.<br />
                            점검 시간 중 CGV홈페이지 및 모바일의 모든 서비스가 중단될 예정이오니 이용에 불편 없으시기바랍니다.<br />
                            <br /> 1. 일시 <br /> - 6/28 (월) 02시 ~ 07시 (월요일에서 화요일 넘어가는 새벽) <br />
                            <br /> 2. 내용 <br /> - 정기 PM작업(시스템 성능 개선 작업) <br /> 
                            - 작업 대상 : 극장영업시스템, 온라인 서비스(홈페이지/모바일) <br />
                            <br /> 더욱 안정적이고 편리한 서비스를 제공하는 CGV가 되겠습니다. <br /> 감사합니다.
                        </p>
                    </div></li>
              <li><a class="cd-faq-trigger" href="#0">[기타] 2022 MISS 신규가입  쿠폰 유효 기한 연장 안내</a>
                <div class="cd-faq-content">
                    <p>
                           MISS 신규 가입하고 받으신 "영화 관람 무료 쿠폰"사용기한은 쿠폰의 사용기한과 상관없이 가입 후 한달까지 연장  가능합니다. <br />
                            <br /> 고객여러분들의 양해와 많은 이용 바랍니다. <br /> 감사합니다.
                        </p>
                    </div></li>
                      <li><a class="cd-faq-trigger" href="#0">영화 관람요금 변경 안내</a>
                <div class="cd-faq-content">
            안녕하세요, MISS입니다.<br /> 아래와 같이 영화 관람 가격이 변경되오니, 극장 이용에 참고 부탁드립니다.<br />
                            <br /> 1. 적용 일시 : 2022년 07월 04일(월) 상영영화부터 적용<br /> <br /> 2.
                            주요사항<br /> * 전체 상영 영화 : 1천원 인상<br /> 일부 영화의 경우 관람 요금 정책과 변경 내용은
                            상이할 수 있습니다.<br /> <br /> 감사합니다.

                    </div></li>
                      <li><a class="cd-faq-trigger" href="#0">[시스템점검] KT 휴대폰본인확인  서비스 시스템 점검(5/16)</a>
                <div class="cd-faq-content">
                    <p>
                            안녕하세요, MISS입니다.</p>
                        KT 휴대폰본인확인 서비스 시스템 점검으로 서비스 이용이 일시적으로 중단될 예정입니다.<br /> 서비스 이용에
                        불편이 없도록 아래 내용을 참고 해주시기 바랍니다.<br /> <br /> 가. 작업시간: 2022. 05. 16
                        (월) 23:00 ~ 05.17 (화) 05:00 (약 6시간) <br /> 나. 작업내용: KT PASS 시스템
                        작업<br /> 다. 작업영향 <br /> 1) 휴대폰본인확인: 작업시간 동안 KT PASS 앱을 통한 본인확인
                        서비스 중단 <br /> - 문자(SMS,LMS) 인증은 정상<br /> - 표준창 내 PASS 앱 인증 버튼
                        미노출 에정<br /> 2) PASS인증서: 작업시간 동안 KT PASS 인증서 서비스 중단<br /> *
                        본인확인(MNO), 알뜰폰(MVNO) 모두 적용됩니다. <br /> * KT를 제외한 타통신사 인증은 영향 없습니다.<br />
                        <br /> 더욱 안정되고 원활한 서비스로 찾아 뵙겠습니다.<br /> 감사합니다.

                    </div></li>
                      <li><a class="cd-faq-trigger" href="#0">[쥬라기 월드: 도미니언] 3D 예매 현장 경품증정 이벤트 안내</a>
                <div class="cd-faq-content">
                    <p>
                           안녕하세요<br /> MISS입니다.<br /> <br /> 6월 1일(수) 부터 진행되는
                            [쥬라기 월드: 도미니언] 3D 예매 현장 경품증정 이벤트의 경품이 변경되어 안내 드립니다.<br />
                            <br />
                            - 기존 : 아이패드<br />
                            - 변경 후 : 아이폰<br />
                            <br />
                            변경 상품 확인 부탁드리며<br />
                            이벤트 참여에 혼선드려 죄송합니다.<br />
                            <br />
                            감사합니다.
                        </p>
                    </div></li>
                      <li><a class="cd-faq-trigger" href="#0">[시스템점검] 2022년 6월 시스템 점검 안내</a>
                <div class="cd-faq-content">
                    <p>
                            안녕하십니까, MISS입니다. <br />
                            <br /> 원활하고 안정된 서비스 제공을 위하여 2022년 6월 새벽 시스템 점검 작업이예정되어 있습니다.<br />
                            점검 시간 중 CGV홈페이지 및 모바일의 모든 서비스가 중단될 예정이오니 이용에 불편 없으시기바랍니다.<br />
                            <br /> 1. 일시 <br /> - 6/28 (월) 02시 ~ 07시 (월요일에서 화요일 넘어가는 새벽) <br />
                            <br /> 2. 내용 <br /> - 정기 PM작업(시스템 성능 개선 작업) <br /> 
                            - 작업 대상 : 극장영업시스템, 온라인 서비스(홈페이지/모바일) <br />
                            <br /> 더욱 안정적이고 편리한 서비스를 제공하는 CGV가 되겠습니다. <br /> 감사합니다.
                        </p>
                    </div></li>
                      <li><a class="cd-faq-trigger" href="#0">[시스템점검] 2022년 6월 시스템 점검 안내</a>
                <div class="cd-faq-content">
                    <p>
                            안녕하십니까, MISS입니다. <br />
                            <br /> 원활하고 안정된 서비스 제공을 위하여 2022년 6월 새벽 시스템 점검 작업이예정되어 있습니다.<br />
                            점검 시간 중 CGV홈페이지 및 모바일의 모든 서비스가 중단될 예정이오니 이용에 불편 없으시기바랍니다.<br />
                            <br /> 1. 일시 <br /> - 6/28 (월) 02시 ~ 07시 (월요일에서 화요일 넘어가는 새벽) <br />
                            <br /> 2. 내용 <br /> - 정기 PM작업(시스템 성능 개선 작업) <br /> 
                            - 작업 대상 : 극장영업시스템, 온라인 서비스(홈페이지/모바일) <br />
                            <br /> 더욱 안정적이고 편리한 서비스를 제공하는 CGV가 되겠습니다. <br /> 감사합니다.
                        </p>
                    </div></li>
                      <li><a class="cd-faq-trigger" href="#0">[시스템점검] 2022년 6월 시스템 점검 안내</a>
                <div class="cd-faq-content">
                    <p>
                            안녕하십니까, MISS입니다. <br />
                            <br /> 원활하고 안정된 서비스 제공을 위하여 2022년 6월 새벽 시스템 점검 작업이예정되어 있습니다.<br />
                            점검 시간 중 CGV홈페이지 및 모바일의 모든 서비스가 중단될 예정이오니 이용에 불편 없으시기바랍니다.<br />
                            <br /> 1. 일시 <br /> - 6/28 (월) 02시 ~ 07시 (월요일에서 화요일 넘어가는 새벽) <br />
                            <br /> 2. 내용 <br /> - 정기 PM작업(시스템 성능 개선 작업) <br /> 
                            - 작업 대상 : 극장영업시스템, 온라인 서비스(홈페이지/모바일) <br />
                            <br /> 더욱 안정적이고 편리한 서비스를 제공하는 CGV가 되겠습니다. <br /> 감사합니다.
                        </p>
                    </div></li>
                      <li><a class="cd-faq-trigger" href="#0">[시스템점검] 2022년 6월 시스템 점검 안내</a>
                <div class="cd-faq-content">
                    <p>
                            안녕하십니까, MISS입니다. <br />
                            <br /> 원활하고 안정된 서비스 제공을 위하여 2022년 6월 새벽 시스템 점검 작업이예정되어 있습니다.<br />
                            점검 시간 중 CGV홈페이지 및 모바일의 모든 서비스가 중단될 예정이오니 이용에 불편 없으시기바랍니다.<br />
                            <br /> 1. 일시 <br /> - 6/28 (월) 02시 ~ 07시 (월요일에서 화요일 넘어가는 새벽) <br />
                            <br /> 2. 내용 <br /> - 정기 PM작업(시스템 성능 개선 작업) <br /> 
                            - 작업 대상 : 극장영업시스템, 온라인 서비스(홈페이지/모바일) <br />
                            <br /> 더욱 안정적이고 편리한 서비스를 제공하는 CGV가 되겠습니다. <br /> 감사합니다.
                        </p>
                    </div></li>
                      <li><a class="cd-faq-trigger" href="#0">[시스템점검] 2022년 6월 시스템 점검 안내</a>
                <div class="cd-faq-content">
                    <p>
                            안녕하십니까, MISS입니다. <br />
                            <br /> 원활하고 안정된 서비스 제공을 위하여 2022년 6월 새벽 시스템 점검 작업이예정되어 있습니다.<br />
                            점검 시간 중 CGV홈페이지 및 모바일의 모든 서비스가 중단될 예정이오니 이용에 불편 없으시기바랍니다.<br />
                            <br /> 1. 일시 <br /> - 6/28 (월) 02시 ~ 07시 (월요일에서 화요일 넘어가는 새벽) <br />
                            <br /> 2. 내용 <br /> - 정기 PM작업(시스템 성능 개선 작업) <br /> 
                            - 작업 대상 : 극장영업시스템, 온라인 서비스(홈페이지/모바일) <br />
                            <br /> 더욱 안정적이고 편리한 서비스를 제공하는 CGV가 되겠습니다. <br /> 감사합니다.
                        </p>
                    </div></li>
                    
        </ul>

        <ul class="cd-faq-group" id="questions">
            <li class="cd-faq-title">
                <h2>자주하는 질문</h2>
            </li>
            <li><a class="cd-faq-trigger" href="#0">[홈페이지] 인터넷 예매 후 예매 내용 확인은 어떻게 하나요?</a>
                <div class="cd-faq-content">
                    <p>인터넷 예매 후 예매내역 확인을 원하시는 경우 다음과 같이 확인하세요.<br /> 홈페이지 로그인 → [MY PAGE] → [MY 예매내역]</p>
                </div>

            </li>
            <li><a class="cd-faq-trigger" href="#0">[홈페이지] 인터넷 예매 후 예매 내용 확인은 어떻게 하나요?</a>
                <div class="cd-faq-content">
                    <p>인터넷 예매 후 예매내역 확인을 원하시는 경우 다음과 같이 확인하세요.<br /> 홈페이지 로그인 → [MY PAGE] → [MY 예매내역]</p>
                </div>

            </li>
           <li><a class="cd-faq-trigger" href="#0">[홈페이지] 인터넷 예매 후 예매 내용 확인은 어떻게 하나요?</a>
                <div class="cd-faq-content">
                    <p>인터넷 예매 후 예매내역 확인을 원하시는 경우 다음과 같이 확인하세요.<br /> 홈페이지 로그인 → [MY PAGE] → [MY 예매내역]</p>
                </div>

            </li>
        </ul>
   
    </div>
    <a class="cd-close-panel" href="#0">Close</a>
    <div style="background-color: black; height: 1500px;">
        1234567890-
    </div>
</section>
<!-- 푸터영역 -->
<%@include file="../cmn/footer.jsp"%>
<!-- //푸터영역 -->
<script src='https://cdn.jsdelivr.net/g/modernizr@2.8.3,jquery@2.1.4,jquery.lazyloadxt@1.0.4(jquery.lazyloadxt.min.js+jquery.lazyloadxt.video.js),jquery.owlcarousel@1.31,trianglify@0.3.1'></script>
<script id="rendered-js">
    jQuery(document).ready(function ($) {
        //update these values if you change these breakpoints in the style.css file (or _layout.scss if you use SASS)
        var MqM = 768,
            MqL = 1024;

        var faqsSections = $('.cd-faq-group'),
            faqTrigger = $('.cd-faq-trigger'),
            faqsContainer = $('.cd-faq-items'),
            faqsCategoriesContainer = $('.cd-faq-categories'),
            faqsCategories = faqsCategoriesContainer.find('a'),
            closeFaqsContainer = $('.cd-close-panel');

        //select a faq section
        faqsCategories.on('click', function (event) {
            event.preventDefault();
            var selectedHref = $(this).attr('href'),
                target = $(selectedHref);
            if ($(window).width() < MqM) {
                faqsContainer.scrollTop(0).addClass('slide-in').children('ul').removeClass('selected').end().children(selectedHref).addClass('selected');
                closeFaqsContainer.addClass('move-left');
                $('body').addClass('cd-overlay');
            } else {
                $('body,html').animate({ 'scrollTop': target.offset().top - 19 }, 200);
            }
        });  

        //show faq content clicking on faqTrigger
        faqTrigger.on('click', function (event) {
            event.preventDefault();
            $(this).next('.cd-faq-content').slideToggle(200).end().parent('li').toggleClass('content-visible');
        });

        function closePanel(e) {
            e.preventDefault();
            faqsContainer.removeClass('slide-in').find('li').show();
            closeFaqsContainer.removeClass('move-left');
            $('body').removeClass('cd-overlay');
        }


        function updateCategoryPosition() {
            var top = $('.cd-faq').offset().top,
                height = jQuery('.cd-faq').height() - jQuery('.cd-faq-categories').height(),
                margin = 20;
            if (top - margin <= $(window).scrollTop() && top - margin + height > $(window).scrollTop()) {
                var leftValue = faqsCategoriesContainer.offset().left,
                    widthValue = faqsCategoriesContainer.width();
                faqsCategoriesContainer.addClass('is-fixed').css({
                    'left': leftValue,
                    'top': margin,
                    '-moz-transform': 'translateZ(0)',
                    '-webkit-transform': 'translateZ(0)',
                    '-ms-transform': 'translateZ(0)',
                    '-o-transform': 'translateZ(0)',
                    'transform': 'translateZ(0)' });

            } else if (top - margin + height <= $(window).scrollTop()) {
                var delta = top - margin + height - $(window).scrollTop();
                faqsCategoriesContainer.css({
                    '-moz-transform': 'translateZ(0) translateY(' + delta + 'px)',
                    '-webkit-transform': 'translateZ(0) translateY(' + delta + 'px)',
                    '-ms-transform': 'translateZ(0) translateY(' + delta + 'px)',
                    '-o-transform': 'translateZ(0) translateY(' + delta + 'px)',
                    'transform': 'translateZ(0) translateY(' + delta + 'px)' });

            } else {
                faqsCategoriesContainer.removeClass('is-fixed').css({
                    'left': 0,
                    'top': 0 });
            }
        }
        function updateSelectedCategory() {
            faqsSections.each(function () {
                var actual = $(this),
                    margin = parseInt($('.cd-faq-title').eq(1).css('marginTop').replace('px', '')),
                    activeCategory = $('.cd-faq-categories a[href="#' + actual.attr('id') + '"]'),
                    topSection = activeCategory.parent('li').is(':first-child') ? 0 : Math.round(actual.offset().top);

                if (topSection - 20 <= $(window).scrollTop() && Math.round(actual.offset().top) + actual.height() + margin - 20 > $(window).scrollTop()) {
                    activeCategory.addClass('selected');
                } else {
                    activeCategory.removeClass('selected');
                }
            });
        }
    });
</script>
</body>
</html>