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
<title>Insert title here</title>
</head>
<body>
	<h1>movie_list.jsp</h1>
	<hr>
	<h1>상영종료영화</h1>
	<c:choose>
		<c:when test="${list0.size() > 0}">
			<c:forEach var="mv" items="${list0}">
				${mv}<br>
			</c:forEach>
		</c:when>
	</c:choose>
	<h1>상영중영화</h1>
	<c:choose>
		<c:when test="${list1.size() > 0}">
			<c:forEach var="mv" items="${list1}">
				${mv}<br>
			</c:forEach>
		</c:when>
	</c:choose>
	<h1>상영예정영화</h1>
	<c:choose>
		<c:when test="${list2.size() > 0}">
			<c:forEach var="mv" items="${list2}">
				${mv}<br>
			</c:forEach>
		</c:when>
	</c:choose>
</body>
</html>