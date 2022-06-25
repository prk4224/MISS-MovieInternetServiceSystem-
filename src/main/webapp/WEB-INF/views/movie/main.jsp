<%--
/**
	Class Name: main.jsp
	Description: 메인화면
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
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<c:set var="resources" value="/resources"/>
<c:set var="CP_RES" value="${CP}${resources}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${CP_RES}/css/main.css">
<title>MISS 메인화면</title>
</head>
<body>
    <div id="header">
        헤더영역
    </div>
    <div id="contents">
        <div id="status">
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
			                        <h1>${np.mvTitle}</h1><br><br>
			                        <h2>감독</h2><br>
			                        <p>${np.mvDirector}</p><br>
			                        <h2>출연</h2><br>
			                        <p>${np.mvActor}</p><br>
			                        <h2>런닝타임</h2>
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
			                                <h1>${ps.mvTitle}</h1><br>
			                                <h2>상영시간</h2>
			                                <h3>${ps.miTime}</h3><br>
			                                <h2>화질</h2>
			                                <h3>${ps.miQuality}P</h3>
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
    <div id="footer">
<%--     ${movieList[0].mvTitle}  --%>
        푸터영역
    </div>
    <script src="${CP_RES}/js/main.js"></script>
</body>
</html>