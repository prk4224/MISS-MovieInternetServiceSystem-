<%--
/**
	Class Name: register.jsp
	Description: 회원가입 페이지
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
	<title>MISS, 최신 영화를 집에서</title>
	<link rel="shortcut icon" type="image/x-icon" href="${CP}/favicon.ico">
	<!-- 부트스트랩 -->
	<link href="${CP_RES}/css/bootstrap.min.css" rel="stylesheet">
	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script src="${CP_RES}/js/jquery-1.12.4.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<!-- 사용자 정의 function, ISEmpty -->
	<script src="${CP_RES}/js/eUtil.js"></script>
	<!-- 사용자 정의 function, callAjax -->
	<script src="${CP_RES}/js/eclass.js"></script>
	<script src="${CP_RES}/js/bootstrap.min.js"></script>
	<!-- jquery_bootstrap paging -->
	<script type="text/javascript" src="${CP_RES}/js/jquery.bootpag.js"></script>
	<!--스타일 시트 -->
	<style type="text/css">
	@font-face {
	    font-family: 'NEXON Lv1 Gothic OTF';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	@font-face {
	    font-family: 'NEXON Lv1 Gothic OTF Bold';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF Bold.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	body {
		margin:0;
		font-family: 'NEXON Lv1 Gothic OTF';
		font-size:12px;
		font-weight:normal;
		direction:ltr;
	  	background: #E9E9E9;
	}
	
	div {
		margin:0 auto;
		padding:30px;
		width:400px;
		height:auto;
		overflow:hidden;
		background:#E9E9E9;
		border-radius:10px;
	}
	
	div label {
		font-size:14px;
		color:darkgray;
		cursor:pointer;
	}
	
	div label,
	div input {
		float:left;
		clear:both;
	}
	
	div input {
		margin:15px 0;
		padding:15px 10px;
		width:100%;
		outline:none;
		border:1px solid #bbb;
		border-radius:20px;
		display:inline-block;
		-webkit-box-sizing:border-box;
		   -moz-box-sizing:border-box;
		        box-sizing:border-box;
	    -webkit-transition:0.2s ease all;
		   -moz-transition:0.2s ease all;
		    -ms-transition:0.2s ease all;
		     -o-transition:0.2s ease all;
		        transition:0.2s ease all;
	}

	div input[type=text]:focus,
	div input[type="password"]:focus {
		border-color:cornflowerblue;
	}
	
	input[type=submit] {
		padding:15px 50px;
		width:auto;
		background:#13338B;
		border:none;
		color:white;
		cursor:pointer;
		display:inline-block;
		float:right;
		clear:right;
		-webkit-transition:0.2s ease all;
		   -moz-transition:0.2s ease all;
		    -ms-transition:0.2s ease all;
		     -o-transition:0.2s ease all;
		        transition:0.2s ease all;
	}
	
	input[type=submit]:hover {
		opacity:0.8;
	}
	
	input[type="submit"]:active {
		opacity:0.4;
	}
	
	label:hover {
		color: #13338B;
	}
	</style>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#doInsert').on("click", function(){
				console.log("join");
				if(eUtil.ISEmpty($("#mbName").val())){
					alert("이름을 입력하세요.");
					$("#mbName").focus();
					return;
				};
				if(eUtil.ISEmpty($("#mbNickname").val())){
					alert("닉네임을 입력하세요.");
					$("#mbNickname").focus();
					return;
				};
				if(eUtil.ISEmpty($("#mbBirth").val())){
					alert("생년월일을 입력하세요.");
					$("#mbBirth").focus();
					return;
				};
				if(eUtil.ISEmpty($("#mbTel").val())){
					alert("전화번호를 입력하세요.");
					$("#mbTel").focus();
					return;
				};
				console.log($("#mbBirth").val());
				let newbirth = $("#mbBirth").val().replace(/-/g, '');
				console.log(newbirth);
				
				<!-- Member테이블에 데이터 INSERT -->
				let url = "${CP}/login/doInsert.do";
				let method = "POST";
				let parameters = {
						"mbEmail" : "${param.email}",
						"mbName" : $("#mbName").val(),
						"mbNickname" : $("#mbNickname").val(),
						"mbBirth" : $("#mbBirth").val().replace(/-/g, ''),
						"mbTel" : $("#mbTel").val()
				};
				let async = true;
				EClass.callAjax(url, parameters, method, async, function(data){
					console.log(parameters);
					console.log("data.msgId : " + data.msgId);
	                console.log("data.msgContents : " + data.msgContents);
	                if(data.msgId == "1"){ //회원가입 성공
	                	emailToNum("${param.email}");
	                	alert(data.msgContents);
	                    location.href = "/miss/movie/main.do";
	                }else{
	                    alert(data.msgContents);
	                }
				});
				<!--// Member테이블에 데이터 INSERT -->
			});
			<!-- API에서 받아온 EMAIL값으로 NUM값 가져오기 -->
			function emailToNum(mbEmail){
				let url = "${CP}/login/emailToNum.do";
				let method = "GET";
				let async = true;
				let parameters = {
						"mbEmail" : mbEmail
				};
				EClass.callAjax(url, parameters, method, async, function(data) {
					sessionStorage.setItem("mbNum", data.mbNum);
					sessionStorage.setItem("mbNickname", data.mbNickname);
					registerCoupon(data.mbNum);
				});
			}
			
			<!--// API에서 받아온 EMAIL값으로 NUM값 가져오기 -->
			
			<!-- 신규회원의 경우 신규회원가입쿠폰 지급 -->
			function registerCoupon(mbNum){
				let url = "${CP}/login/registerCoupon.do";
				let method = "GET";
				let async = true;
				let parameters = {
						"mbNum" : mbNum
				};
				EClass.callAjax(url, parameters, method, async, function(data) {
					if(data.msgId == "1"){
						alert(data.msgContents);
					}else{
						alert(data.msgContents);
					}
				})
			}
			<!--// 신규회원의 경우 신규회원가입쿠폰 지급 -->
		});
	</script>
</head>
<body>
	<div class="contents">
		<img src="${CP_RES}/img/MISSlogo.png" style="width: 100%">

        <label for="mbEmail">이메일</label>
        <input type="email" id="mbEmail" placeholder="${param.email}" autocomplete="off" readonly/>
      
        <label for="mbName">이름</label>
        <input type="text" id="mbName" placeholder="본명(3자)" autocomplete="off" required maxlength="3"/>
      
        <label for="mbNickname">닉네임</label>
        <input type="text" id="mbNickname" placeholder="리뷰닉네임(10자 이내)" autocomplete="off" required />
        
        <label for="mbBirth">생년월일</label>
        <input type="date" id="mbBirth"  autocomplete="off" required/>

        <label for="mbTel">휴대전화</label>
        <input type="tel" id="mbTel" placeholder="전화번호 입력(Ex. 01012345678)" maxlength="11" autocomplete="off" required />
      
        <input type="submit" name="submit" value="가입하기" id="doInsert" />
    </div>


</body>
</html>