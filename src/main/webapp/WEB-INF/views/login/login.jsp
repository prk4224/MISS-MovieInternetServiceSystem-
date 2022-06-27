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
	<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>부트스트랩 - boot_list</title>
    <!-------------------------- css ---------------------------->
	<style type="text/css">
	* {
	    box-sizing: border-box;
	    font-family: 'Noto Sans KR', sans-serif;
	    border-radius: 3px; 
	}
	
	/*배경화면*/
	body {
	    background:url('${CP_RES}/img/comet-halley-web-wallpapers-88845.jpg') no-repeat center center fixed;
	    -webkit-background-size:cover;
	    -moz-background-size:cover;
	    -o-background-size:cover;
	    background-size:cover;
	}
	
	.logo {
	    float:left;
	
	}
	
	.login-form {
	    width: 300px;
	    background-color: rgba(0,0,128,0.1);
	    margin-right: auto;
	    margin-left: auto;
	    margin-top: 30px;
	    padding: 20px;
	    text-align: center;
	    border: none;
	    background-color: rgba(255,255,255, 0.1);      /*반투명 효과*/
	    box-shadow: 2px 7px 15px 8px rgba( 0,0,0,1);   /*그림자 효과*/
	    
	}
	 
	.text-field {
	      background-color:white;
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
	 
	.idPwForget {
	    text-align: center;
	}
	 
	.idPwForget a {
	  font-size: 12px;
	  color: lightgray;
	}
	
	footer {
	position:fixed;
	  bottom: 0; left: 0;
	  height: 60px;
	  width: 100%;
	  background-color: rgba(255,255,255, 0.1); 
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
 
    <script type="text/javascript">
        $(document).ready(function(){
        	console.log("document.ready");
        });
    </script>
    <!----------------------- java script ------------------------->
	<!-- kakaologin -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
	Kakao.init('c10617a5fe3f894745a7a9b5899937da');
	console.log(Kakao.isInitialized());
	//카카오로그인
	function kakaoLogin() {
	    Kakao.Auth.login({
	      success: function (response) {
	        Kakao.API.request({
	          url: '/v2/user/me',
	          success: function (response) {
	              console.log(response)
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
	<!--뒤로가기 막아야함 -->

</script>
</head>
<body>

    <a id="logo" href="#"><img src="${CP_RES}/img/miss_logo.png" style="height:55px; width:auto;"></a>    

    <h1 align="center" style="color:white">최신 영화를 집에서.</h1>
    <h2 align="center" style="color:white">어디서든 최신영화를 즐겨보세요.</h2>
    <div class="login-form">
        <form>
           <input type="text" name="email" class="text-field" placeholder="아이디">
           <input type="password" name="password" class="text-field" placeholder="비밀번호">
           <input type="submit" value="로그인" class="submit-btn">
           <a onclick="kakaoLogin();" href="#"><img src="${CP_RES}/img/kakao_login_medium_narrow.png" style="height:40px; width:125px;"></a>
           <a id="naverLogin" href="#"><img src="${CP_RES}/img/btnG_완성형.png" style="height:40px; width:125px;"></a>
        </form>
          
        <div class="idPwForget"> 
           <a href="#">비밀번호를 잊어버리셨나요?</a> 
        </div>
    </div>
    
<footer>
    <p align="center" style="font-size:10px; color:darkgray;">
                고객센터(이용및 결제 문의)miss@miss.co.kr(유료) / 제휴및 대외 협력 00000000<br>
                주식회사 미스 / 대표 OOO / 서울특별시 마포구 서강로 136 2,3층 / 사업자 등록번호 000-00-00000 / 대표번호 02-000-0000 / 개인정보 처리 방침 / 청소년 보호정책<br>
                MISS.All Rights Reserved
    </p>            
</footer>    
</body>
</html>