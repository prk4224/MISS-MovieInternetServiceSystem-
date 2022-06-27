<%--
/**
	Class Name:
	Description:
	Modification information
	
	수정일     수정자      수정내용
    -----   -----  -------------------------------------------
    2022. 6. 24.        최초작성 
    
    author eclass 개발팀
    since 2020.11.23
    Copyright (C) by KandJang All right reserved.
*/
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- /ehr -->
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<c:set var="resources" value="/resources"/>
<c:set var="CP_RES" value="${CP}${resources}"/>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="${CP}/favicon.ico">
	<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>부트스트랩 - boot_list</title>
    <!--스타일 시트-->
	<style type="text/css">
	header {
	    width: 100%;
	    height: 80px;
	}
	nav {
	    width: 100%;
	    height: 80px;
	}
	main {
	    width: 100%;
	    height: 1000px;
	}
	footer {
	    height: 80px;
	}
	.name {
	    text-align: center;
	    background: #ffffff;
	    border: solid 1px #dadce0;
	    font-family: 'MICEGothic Bold';
	    src:
	        url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2')
	        format('woff2');
	    font-weight: 700;
	    font-style: normal;
	    font-size: 20px;
	    color:white;
	    background-color : grey;
	}
	.List {
	    text-align: center;
	    height: 50px;
	    font-family: 'MICEGothic Bold';
	    src:
	        url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2')
	        format('woff2');
	    font-weight: 700;
	    font-style: normal;
	    font-size: 20px;
	}
	.timeBt {
	    width: 110px;
	    text-align: center;
	    position: relative;
	    color: #616265;
	    border: solid 1px #dadce0;
	    display: inline-block;
	    padding: 6px 10px 6px 10px;
	    cursor: pointer; /*  커서 모양 변경 */
	}
	.clicked_Bt {
	    border-color: #763f04;
	    color: #ffffff;
	    background: #c56b0b;
	}
	.movieBt {
	    width: 300px;
	    position: relative;
	    color: #616265;
	    border: solid 1px #dadce0;
	    display: inline-block;
	    padding: 6px 8px 6px 8px;
	    cursor: pointer; /*  커서 모양 변경 */
	}
	
	.clicked_MBt {
	    border-color: #763f04;
	    color: #ffffff;
	    background: #c56b0b;
	}
	/*스크롤바 */
	   .scrollB {
	     overflow:auto; 
	        width: 300px;
	        height: 500px; 
	        position: absolute; 
	        top: 450px; 
	        left: 700px;
	        overflow-x: hidden
	  }
	  .scrollB::-webkit-scrollbar {
	    width: 10px;
	  }
	  .scrollB::-webkit-scrollbar-thumb {
	    background-color: #2f3542;
	  }
	  .scrollB::-webkit-scrollbar-track {
	    background-color: grey;
	  }
	  .rBt{
	  width: 180px; 
	  height: 50px; 
	  border: 1px solid grey;  
	  cursor:pointer; 
	  cursor:hand; 
	  background-color: light grey;  
	  color: white; 
	  padding: 5px; 
	  border-radius: 12px;
	  position: absolute; 
	  top:960px; 
	  left:1820px;
	  text-align: center;
	    height: 50px;
	    font-family: 'MICEGothic Bold';
	    src:
	        url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2206-01@1.0/MICEGothic Bold.woff2')
	        format('woff2');
	    font-weight: 700;
	    font-style: normal;
	    font-size: 20px;
	  }
	select{
	  position:absolute; 
	  top:370px; 
	  left:1800px; 
	  width: 200px; 
	  padding: .8em .5em; 
	  font-family: inherit;  
	  background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; 
	  border: 1px solid #999; 
	  border-radius: 0px;
	  appearance: none;
	    
	}
	</style>
    
    <!-- 부트스트랩 -->
    <link href="${CP_RES}/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="${CP_RES}/js/jquery-1.12.4.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="${CP_RES}/js/bootstrap.min.js"></script>
    <!-- jquery_bootstrap paging -->
    <script type="text/javascript" src="${CP_RES}/js/jquery.bootpag.js"></script>
 
    <!--자바스크립트 코드-->
	<script type="text/javascript">
	    function ShowFunction(index) {
	        $('[id^=showTIme').hide();
	        $('#showTIme' + index).show();
	        //var ST = document.getElementById("showTIme"+index);
	        /*
	         if (ST.style.display === "none") {
	         ST.style.display = "block";
	         } else {
	         ST.style.display = "none";
	         }
	         */
	    }
	    /* 버튼 클릭*/
	    $(document).ready(function() {
	        $('.timeBt').each(function(index) {//index-객체의 인덱스값 받음
	            $(this).attr('timeInsert', index);//index삽입
	        }).click(function() {//
	            var index = $(this).attr('timeInsert');
	            $('.timeBt[timeInsert=' + index + ']').addClass('clicked_Bt');
	            $('.timeBt[timeInsert!=' + index + ']').removeClass('clicked_Bt');
	        });
	    });
	
	    /* 버튼 클릭 마무리*/
	    /* 버튼 클릭*/
	    $(document).ready(
	            function() {
	                $('.movieBt').each(function(index) {//index-객체의 인덱스값 받음
	                    $(this).attr('movieInsert', index);//index삽입
	                }).click(
	                        function() {//
	                            var index = $(this).attr('movieInsert');
	                            $('.movieBt[movieInsert=' + index + ']').addClass(
	                                    'clicked_MBt');
	                            $('.movieBt[movieInsert!=' + index + ']')
	                                    .removeClass('clicked_MBt');
	                        });
	            });
	
	    /* 버튼 클릭 마무리*/
	    function goBuy()  {
	  window.location.href = 'https://www.naver.com'
	}
	</script>
</head>
<body>
    <!-- 헤더영역 -->
    <%@include file="../cmn/header.jsp"%>
    <!-- //헤더영역 -->
    <nav>예매</nav>
    <main>
        <div>
            <div class="name" style="width: 298px; height: 30px; position: absolute; top: 420px; left: 700px;">영화 제목</div>
            <div class="name" style="width: 998px; height: 30px; position: absolute; top: 420px; left: 1000px;">시간</div>
            <div style="width:992px; height: 492px; position:absolute; top:450px; left:1000px; border: solid 4px #dadce0;"></div>
            
             <div class="scrollB">
                <div class="List">
                	<c:choose>
                		<c:when test="${list.size() > 0}">
                			<c:forEach var="list" items="${list}">
                				<div class="movieBt" id="movieBt1">${list.mvTitle}</div>
                				<span style="display: none">${list.mvNum}</span>
                			</c:forEach>
                		</c:when>
                	</c:choose>
                
<!--                     <div class="movieBt" id="movieBt1" onclick="ShowFunction('1')">다만   악에서 구원하소서</div> -->
                </div>
            </div>
        </div>
        <div id="showTIme1"
            style="position: absolute; top:500px; left:1050px; display: none; ">
        <c:choose>
        	<c:when test="${timeList.size() > 0}">
        		<c:forEach var="timeList" items="${timeList}">
        			<div id="line1">
        				<div class="timeBt">
        					${timeList.miTime}
        				</div>
        			</div>
        		</c:forEach>
        	</c:when>
        </c:choose>
        </div>
<!--         <div id="showTIme1" -->
<!--             style="position: absolute; top:500px; left:1050px; display: none; "> -->
<!--             <div id="line1"> -->
<!--                 <div class="timeBt">11:00</div> -->
<!--                 <div class="timeBt">12:00</div> -->
<!--                 <div class="timeBt">13:00</div> -->
<!--                 <div class="timeBt">14:00</div> -->
<!--                 <div class="timeBt">15:00</div> -->
<!--                 <div class="timeBt">16:00</div> -->
<!--             </div> -->
<!--               <div id="line2" > -->
<!--                 <div class="timeBt">17:00</div> -->
<!--                 <div class="timeBt">19:00</div> -->
<!--                 <div class="timeBt">19:00</div> -->
<!--                 <div class="timeBt">20:00</div> -->
<!--                 <div class="timeBt">21:00</div> -->
<!--                 <div class="timeBt">22:00</div> -->
<!--             </div> -->
<!--         </div> -->

<!--         <div id="showTIme2" -->
<!--             style="position: absolute; top:500px; left:1050px; display: none; "> -->
<!--             <div id="line1"> -->
<!--                 <div class="timeBt">01:00</div> -->
<!--                 <div class="timeBt">02:00</div> -->
<!--                 <div class="timeBt">03:00</div> -->
<!--                 <div class="timeBt">04:00</div> -->
<!--                 <div class="timeBt">05:00</div> -->
<!--                 <div class="timeBt">06:00</div> -->
<!--             </div> -->
<!--               <div id="line2" > -->
<!--                 <div class="timeBt">07:00</div> -->
<!--                 <div class="timeBt">08:00</div> -->
<!--                 <div class="timeBt">09:00</div> -->
<!--                 <div class="timeBt">10:00</div> -->
<!--                 <div class="timeBt">11:00</div> -->
<!--                 <div class="timeBt">12:00</div> -->
<!--             </div> -->
<!--               <div id="line3" > -->
<!--                 <div class="timeBt">13:00</div> -->
<!--                 <div class="timeBt">14:00</div> -->
<!--                 <div class="timeBt">15:00</div> -->
<!--                 <div class="timeBt">16:00</div> -->
<!--                 <div class="timeBt">17:00</div> -->
<!--                 <div class="timeBt">18:00</div> -->
<!--             </div> -->
<!--               <div id="line2" > -->
<!--                 <div class="timeBt">19:00</div> -->
<!--                 <div class="timeBt">20:00</div> -->
<!--                 <div class="timeBt">21:00</div> -->
<!--                 <div class="timeBt">22:00</div> -->
<!--                 <div class="timeBt">23:00</div> -->
<!--                 <div class="timeBt">24:00</div> -->
<!--             </div> -->
<!--         </div> -->
    
    <select name="quality">
         <option value="">화질</option>
         <option value="HD">HD</option>
         <option value="FHD" >FHD</option>
         <option value="QHD">QHD</option>
    </select>
        
    <button type="button" class="rBt" onclick='goBuy()'>
       예약하기</button>

    </main>
    <!-- 푸터영역 -->
    <%@include file="../cmn/footer.jsp"%>
    <!-- //푸터영역 -->
</body>
</html>