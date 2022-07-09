<%--
/**
	Class Name: main.jsp
	Description: 메인 페이지
	Modification information
    
    author MISS 개발팀
    since 2022.06.15
    Copyright (C) by MISS All right reserved.
*/
 --%>
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
	<link rel="stylesheet" type="text/css" href="${CP_RES}/css/main.css">
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script src="${CP_RES}/js/jquery-1.12.4.js"></script>
	<title>MISS, 최신 영화를 집에서</title>
	<link rel="shortcut icon" type="image/x-icon" href="${CP}/favicon.ico">
</head>
<body>
    <!-- 헤더영역 -->
	<%@include file="../cmn/header.jsp"%>
	<!-- //헤더영역 -->
    <div id="contents">
        <div id="status" style="margin-top: 20px;">
            <h1>현재 상영중</h1>
        </div>
        <div id="slideshow1">
            <ul class="slides1">
            	<c:choose>
            		<c:when test="${npList.size() > 0}">
            			<c:forEach var="np" items="${npList}">
            				<li>
			                    <img src="${np.imRoute}">
			                    <div class="movie1">
			                        <h3>${np.mvTitle}</h3>
			                    </div>
			                    <div class="caption1">
			                    	<p style="display: none">${np.mvNum}</p>
			                        <h1>${np.mvTitle}</h1>
			                        <h3>감독</h3>
			                        <p>${np.mvDirector}</p>
			                        <h3>출연</h3>
			                        <p>${np.mvActor}</p>
			                        <h3>런닝타임</h3>
			                        <p>${np.mvTime}분</p>
			                    </div>
			                </li>
            			</c:forEach>
            		</c:when>
            	</c:choose>
            </ul>
            <p class="controller">
                <span class="prev" id="prev1">&lang;</span>
                <span class="next" id="next1">&rang;</span>
            </p>
        </div>
        <div id="slideshow2">
            <div id="status">
                <h1>상영 임박</h1>
            </div>
            <div id="movie2">
                <div id="slideshow2">
                    <ul class="slides2">
                    	<c:choose>
                    		<c:when test="${psList.size() > 0}">
                    			<c:forEach var="ps" items="${psList}">
                    				<li>
			                            <img src="${ps.imRoute}">
			                            <div class="caption2">
			                            	<h3 style="display: none">${ps.mvNum}</h3>
			                                <h2>${ps.mvTitle}</h2>
			                                <h3>상영시간</h3>
			                                <h4>${ps.miTime}</h4>
			                                <h3>화질</h3>
			                                <h4>
			                                	<c:choose>
			                                		<c:when test="${ps.miQuality == 720}">
			                                			HD
			                                		</c:when>
			                                		<c:when test="${ps.miQuality == 1080}">
			                                			FHD
			                                		</c:when>
			                                		<c:otherwise>
			                                			QHD
			                                		</c:otherwise>
			                                	</c:choose>
			                                </h4>
			                            </div>
			                        </li>
                    			</c:forEach>
                    		</c:when>
                    	</c:choose>
                    </ul>
                    <p class="controller">
                        <span class="prev" id="prev2">&lang;</span>
                        <span class="next" id="next2">&rang;</span>
                    </p>
                </div>
            </div>
        </div>
    </div>
	<!-- 푸터영역 -->
	<%@include file="../cmn/footer.jsp"%>
	<!-- //푸터영역 -->
    <script src="${CP_RES}/js/main.js"></script>
	<script type="text/javascript">
	  $(document).ready(function(){
	    console.log("document.ready");
	    console.log(sessionStorage.getItem("accessToken"));
	    <!-- 영화포스터 클릭 시 movie_detail.jsp로 이동 -->
	    $(".slides1 li").on("click", function(){
	    	// mvNum
	    	let mvNum = $(this).children().eq(2).children().eq(0).text();
	    	console.log(mvNum);
	    	location.href = "movie_detail.do?mvNum=" + mvNum;
	    });
	    $(".slides2 li").on("click", function(){
	    	let mvNum = $(this).children().eq(1).children().eq(0).text();
	    	location.href = "movie_detail.do?mvNum=" + mvNum;
	    });
	    <!--//영화포스터 클릭 시 movie_detail.jsp로 이동 -->
	  });
	  	
	</script>
</body>
</html>