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
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="${CP_RES}/js/jquery-1.12.4.js"></script>
<title>영화 상영 페이지</title>
</head>
<body>
    <div id="contents" style="height: 100%">
        <iframe width="100%" height="1000px" src="${movie.miVideo}?rel=0&modestbranding=1&color=white" allowfullscreen></iframe>
    </div>
</body>
	<!-- 푸터영역 -->
	<%@include file="../cmn/footer.jsp"%>
	<!-- //푸터영역 -->
</html>