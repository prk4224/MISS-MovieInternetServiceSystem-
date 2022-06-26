<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${path}/resources/css/main.css">
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