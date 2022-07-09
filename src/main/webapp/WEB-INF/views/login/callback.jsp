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
<title>MISS, 최신 영화를 집에서</title>
<link rel="shortcut icon" type="image/x-icon" href="${CP}/favicon.ico">
<!-- 부트스트랩 -->
<link href="${CP_RES}/css/bootstrap.min.css" rel="stylesheet">
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="${CP_RES}/js/jquery-1.12.4.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<script src="${CP_RES}/js/bootstrap.min.js"></script>
<!-- jquery_bootstrap paging -->
<script type="text/javascript" src="${CP_RES}/js/jquery.bootpag.js"></script>
<!-- 사용자 정의 function, ISEmpty -->
<script src="${CP_RES}/js/eUtil.js"></script>
<!-- 사용자 정의 function, callAjax -->
<script src="${CP_RES}/js/eclass.js"></script>
<!-- naver login -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
</head>
<body>
<script type="text/javascript">
	//네이버 사용자 프로필 조회
	var naver_id_login = new naver_id_login("LUYKmCBhews_CxE5rSdS", "http://localhost:8081/miss/login/login.do");
	naver_id_login.get_naver_userprofile("naverSignInCallback()");
	function naverSignInCallback() {
		// naver_id_login.getProfileData('프로파일항목명');
		// 프로필 항목은 개발가이드를 참고하시기 바랍니다.
		let mbEmail = naver_id_login.getProfileData('email');
		let accessToken = naver_id_login.getAccessToken();
		existingMember(mbEmail, accessToken);
	}
	function existingMember(mbEmail, accessToken){
		let url = "${CP}/login/existingMember.do";
		let method = "GET";
		let async = true;
		let parameters = {
				"mbEmail" : mbEmail
		};
		EClass.callAjax(url, parameters, method, async, function(data) {
			if(data.msgId == "0"){
				alert(data.msgContents);
				location.href = "/miss/login/register.do?email=" + mbEmail;
			}else{
				alert(data.msgContents);
				emailToNum(mbEmail);
				location.href = "/miss/movie/main.do";
			}
			sessionStorage.setItem("accessToken", accessToken);
			console.log(sessionStorage.getItem("accessToken"));
		});
	}
	
	function emailToNum(mbEmail){
		let url = "${CP}/login/emailToNum.do"
		let method = "GET";
		let async = true;
		let parameters = {
				"mbEmail" : mbEmail
		};
		EClass.callAjax(url, parameters, method, async, function(data) {
			sessionStorage.setItem("mbNum", data.mbNum);
			sessionStorage.setItem("mbNickname", data.mbNickname);
		});
	}
</script>
</body>
</html>