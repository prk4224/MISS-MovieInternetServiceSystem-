<%--
/**
	Class Name: login.jsp
	Description: 로그인 페이지
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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>MISS, 최신 영화를 집에서</title>
    <link rel="shortcut icon" type="image/x-icon" href="${CP}/favicon.ico">
    <!-------------------------- css ---------------------------->
    <link rel="stylesheet" href="${CP_RES}/css/style.css">
    <link rel="shortcut icon" href="${CP_RES}/img/favicon.ico">
    <style type="text/css">
		@font-face {
		font-family: 'NEXON Lv1 Gothic OTF';
		src:
			url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff')
			format('woff');
		font-weight: normal;
		font-style: normal;
	}

	* {
		box-sizing: border-box;
		font-family: 'Noto Sans KR', sans-serif;
		border-radius: 3px;
	}

	/*배경화면*/
	body {
		background: url('${CP_RES}/img/login_background.jpg') no-repeat center
			center fixed;
		-webkit-background-size: cover;
		-moz-background-size: cover;
		-o-background-size: cover;
		background-size: cover;
	}
	
	.logo {
		float: left;
		font-family: 'NEXON Lv1 Gothic OTF';
	}
	
	.miss-logo {
		position: absolute;
		left: 2vmax;
		top: 1vmax;
		width: 20vw;
		height: 40vh;
		
	}
	
	.login-form {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		width: 300px;
		background-color: rgba(0, 0, 128, 0.1);
		padding: 20px;
		text-align: center;
		border: none;
		background-color: rgba(255, 255, 255, 0.1); /*반투명 효과*/
		box-shadow: 2px 7px 15px 8px rgba(0, 0, 0, 1); /*그림자 효과*/
	}
	
	.text-field {
		background-color: white;
		font-size: 14px;
		padding: 10px;
		border: none;
		width: 260px;
		margin-bottom: 10px;
	}
	
	.submit-btn {
		font-size: 14px;
		border: none;
		padding: 10px;
		width: 260px;
		background-color: black;
		margin-bottom: 30px;
		color: white;
	}
	
	footer {
		position: fixed;
		bottom: 0;
		left: 0;
		height: 60px;
		width: 100%;
		background-color: rgba(255, 255, 255, 0.1);
	}
	
	#logoimg {
		max-width: 100%;
		max-height: 100%;
		height: 10vmin; 
		width:auto; 
		
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
    <!-- 사용자 정의 function, ISEmpty -->
    <script src="${CP_RES}/js/eUtil.js"></script>
    <!-- 사용자 정의 function, callAjax -->
    <script src="${CP_RES}/js/eclass.js"></script>
</head>
<body>
	<!-- 초기에 MISS 내려오는 화면 -->
    <div class = "intro">
        <h1 class = "logo-header">
            <span class = "logo">M </span>
            <span class = "logo">I </span>
            <span class = "logo">S </span>
            <span class = "logo">S </span>
            <span ><img id = "movie_img" src="${CP_RES}/img/movie_img.png"></span>
        </h1>
    </div>
    <!-- //초기에 MISS 내려오는 화면 -->
    
    <a class="miss-logo" id="miss-logo"><img id = "logoimg" src="${CP_RES}/img/MISSlogowi.png" ></a>    
    
    <!-- 네이버, 카카오 로그인 노출 영역 -->
    <div class="login-form">
        <h4 align="center" style="color:white"><strong>SNS 계정 간편 로그인</strong></h4>
        <a onclick="kakaoLogin();"><img src="${CP_RES}/img/kakao_login_medium_narrow.png" style="height:auto; width:185px;"></a>
        <div id="naver_id_login"></div>
    </div>
    <!-- //네이버, 카카오 로그인 노출 영역 -->
    
	<footer>
	    <p align="center" style="font-size:10px; color:darkgray;">
	                서울특별시 마포구 서강로 136 2,3층 코리아IT아카데미 신촌점(대흥동)<br>
			대표이사 : 김동호 / 사업자 등록번호 : 123-45-67890 / 통신판매업신고번호 : 2022-서울마포-1130<br>
			호스팅사업자 : MISS / 대표번호 : 02-1234-5678 / 대표이메일 : miss@gmail.com<br>
			©MISS. All Rights Reserved
	    </p>            
	</footer> 
    <!----------------------- java script ------------------------->
    <script src="${CP_RES}/js/app.js"></script>
    <!-- 카카오로그인 API -->
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <!-- 네이버로그인 API -->
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <script>
    console.log("accessToken세션값 : " + sessionStorage.getItem("accessToken"));
    console.log("mbNum세션값 : " + sessionStorage.getItem("mbNum"));
    console.log("mbNickname세션값 : " + sessionStorage.getItem("mbNickname"));
    $(document).ready(function(){
        if(sessionStorage.getItem("accessToken") != null){
            alert("이미 로그인되어있습니다! 로그아웃해 주세요!");
            location.href = "/miss/movie/main.do";
        }
    });
    
    //카카오 로그인
    function kakaoLogin() {
        Kakao.init('0457445dc54f89414a4818b3cca9b5c4');
        console.log(Kakao.isInitialized());
        console.log(Kakao.Auth.getAccessToken());
        Kakao.Auth.login({
          success: function (response) {
            Kakao.API.request({
              url: '/v2/user/me',
              success: function (response) {
                  console.log(response)
                  console.log(response.kakao_account.email);
                  let accessToken = Kakao.Auth.getAccessToken();
                  Kakao.Auth.setAccessToken(accessToken);
                  console.log("accessToken : " + accessToken);
                  let mbEmail = response.kakao_account.email;
                  existingMember(mbEmail, accessToken);
              },
              fail: function (error) {
                console.log(error)
              },
            })
          },
          fail: function (error) {
            console.log(error)
          },
        })
       }; 
    //----------------카카오 로그인
    
    //기존회원인지 여부 확인(신규 -> REGISTER, 기존 -> MAIN)
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
    //기존회원인지 여부 확인(신규 -> REGISTER, 기존 -> MAIN)
    
    //각 로그인 API별로 받아온 EMAIL값을 mbNum으로 바꿈
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
    //각 로그인 API별로 받아온 EMAIL값을 mbNum으로 바꿈
    
    //네이버 로그인
    var naver_id_login = new naver_id_login("LUYKmCBhews_CxE5rSdS", "http://localhost:8081/miss/login/callback.do");
    var state = naver_id_login.getUniqState();
    naver_id_login.setButton("green", 3, 40);
    naver_id_login.setDomain(".service.com");
    naver_id_login.setState(state);
    naver_id_login.init_naver_id_login();
    //네이버 로그인
	</script>  
</body>
</html>