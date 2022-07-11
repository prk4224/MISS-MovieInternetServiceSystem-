<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<c:set var="resources" value="/resources"/>
<c:set var="CP_RES" value="${CP}${resources}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"  type="text/css" href="${CP}/resources/css/paycom.css">
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
 <script src="${CP}/resources/js/jquery-1.12.4.js"></script>

<title>MISS, 최신 영화를 집에서</title>
<link rel="shortcut icon" type="image/x-icon" href="${CP}/favicon.ico">
</head>
<body>
	<header>MISS</header>
    <hr/>
    
    <h2>결제가 완료되었습니다.</h2>

    <div id = "post">
        <img src="${postURL}">
    </div>

     <div id = "movie_comimp">
     	<div id = "movie_ticket">MOVIE TICKET</div>

        <div id = "qua_age">
            <div id = "quality">화질 : ${miQuality}p</div>
            <div id = "age_limit">${m_agelim} 관람가</div>
        </div>

        <div >
            <div>
                 <div id = "movie_title" style="font-size: 2vmax;">${m_title} </div>
                <div id = "movie_dir">감독 : ${m_director}</div>
                <div id = "movie_act">배우 :${m_actor} </div>
            </div>
            <div id = "w_time" style="font-size: 1.5vmax; color:rgb(167, 0, 0)">관람 시간 : ${m_time} 분</div>
            <div id = "pay_num" style="font-size: 1.2vmax;" >
            	<div>결제번호 : ${info.tid}  </div>
            	<div>결제금액 : ${m_price} 원</div> 
            </div>
            <div id = "precaution">
            	<div>주의 사항 !</div>
                <div class = "precaution_contents">- 본 관람권은 MISS에서 상영하는 영화의 전용 티켓입니다. </div>
                <div class = "precaution_contents">- 본 영화는 상영시간 10분전 부터 상영 가능합니다.</div>
                <div class = "precaution_contents">- 상영시작 10분 후부터는 입장 하실 수 없습니다.</div>
                <div class = "precaution_contents">- 예매취소는 마이페이지에서 하실 수 있습니다</div>
                <div class = "precaution_contents">- 본 서비스는 스트리밍 서비스이므로 네크워크가 원할한 환경에서 시청 바랍니다.</div>
                <div class = "precaution_contents">- 영상이 끊기거나 문제가 있을 경우 <span style="color:indianred">02-1234-5678</span> 번으로 연락 주시기 바랍니다. </div>
                <div class = "precaution_contents">- 영화 상영 시작 후 에는 환불이 불가합니다.</div>
                

            </div>

        </div>
        
        
    </div>

    <div>
        <button type="button" id = "mypagebutton"> 
            예매내역 확인
        </button>
    </div>
    
    <script type="text/javascript">
    
    
    </script>
    
    <script type="text/javascript">
	  $(document).ready(function(){
	    console.log("document.ready");
	    let mbNum = sessionStorage.getItem("mbNum");
	   
	    $("#mypagebutton").on("click", function(){
	    	window.location.href = "http://localhost:8081/miss/mypage/historyView.do?mbNum=" + mbNum;
		  });
	    
	  });
	</script>
</body>
</html>