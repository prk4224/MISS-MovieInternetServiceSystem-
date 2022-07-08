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
<title>MISS, 최신 영화를 집에서</title>
<link rel="shortcut icon" type="image/x-icon" href="${CP}/favicon.ico">
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="${CP_RES}/js/jquery-1.12.4.js"></script>
<style class="FAQ">


@font-face {
    font-family: 'NEXON Lv1 Gothic OTF';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
    
       body {
           background-color: #e9e9e9;
           font-family: 'NEXON Lv1 Gothic OTF';
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
           background-color: #13338B;
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
               font-size: 20px;
               font-weight: 1000;
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
               background: #13338B !important;
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
           color: #13338B;
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
        <li><a class="selected" href="#notice">공지사항 (${list01[0].totalCnt})</a></li>
        <li><a href="#questions">자주하는 질문 (${list02[0].totalCnt})</a></li>
    </ul>
    <div class="cd-faq-items">
        <ul class="cd-faq-group" id="notice">
            <li class="cd-faq-title">
                <h2>공지사항</h2>
            </li>
            <c:choose>
             <c:when test="${list01.size() > 0}">
              <c:forEach var="list01" items="${list01}">
               <li><a class="cd-faq-trigger" href="#0">${list01.qTitle}</a>
                   <div class="cd-faq-content">
                       <p>
                        작성일 : ${list01.qDate}<br>
                        ${list01.qContents}
                       </p>
                      </div>
                     </li>
              </c:forEach>
             </c:when>
            </c:choose>
        </ul>

        <ul class="cd-faq-group" id="questions">
            <li class="cd-faq-title">
                <h2>자주하는 질문</h2>
            </li>
            <c:choose>
             <c:when test="${list02.size() > 0}">
              <c:forEach var="list02" items="${list02}">
               <li><a class="cd-faq-trigger" href="#0">${list02.qTitle}</a>
                   <div class="cd-faq-content">
                       <p>
                        작성일 : ${list02.qDate}<br>
                        ${list02.qDate}
                       </p>
                   </div>
               </li>
              </c:forEach>
             </c:when>
            </c:choose>
        </ul>
    </div>
    <a class="cd-close-panel" href="#0">Close</a>
</section>
<!-- 푸터영역 -->
<%@include file="../cmn/footer.jsp"%>
<!-- //푸터영역 -->
<script src='https://cdn.jsdelivr.net/g/modernizr@2.8.3,jquery@2.1.4,jquery.lazyloadxt@1.0.4(jquery.lazyloadxt.min.js+jquery.lazyloadxt.video.js),jquery.owlcarousel@1.31,trianglify@0.3.1'></script>
<script id="rendered-js">
    jQuery(document).ready(function ($) {
        //update these values if you change these breakpoints in the style.css file (or _layout.scss if you use SASS)
        $(".cd-faq-title h2").on("click", function(){
         console.log(sessionStorage.getItem("mbEmail"));
         console.log(sessionStorage.getItem("accessToken"));
        });
        
        
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