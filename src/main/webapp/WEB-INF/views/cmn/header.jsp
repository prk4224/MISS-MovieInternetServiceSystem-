<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<c:set var="resources" value="/resources"/>
<c:set var="CP_RES" value="${CP}${resources}"/>  
<c:set var="MISS" value="/miss"/>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 스타일 시트 -->
<style type="text/css">
    header {
        width: 100%;
        background-color: black;
    }
    /*로고 위치*/
    #logo {
        float:left;
        margin-top:20px;
        margin-left:20px;
    }
    /*menu 스타일*/
    #menu {
            height: 100px; 
            width : 100%; 
    }
    /*menu ul, li 스타일*/
    #menu ul li {
            margin-left:100px;                      
            list-style: none;           
            color: white;                
            float: left;               
            line-height: 90px;         
            vertical-align: middle;    
            text-align: center;         
    }
    /*menuLink 스타일*/
    #menu .menuLink {                               
            text-decoration:none;                   
            color: white;                           
            display: block;                         
            width: 150px;                             
            font-size: 20px;                          
            font-weight: bold;                        
            font-family: "Trebuchet MS", Dotum, Arial; /*추후 폰트 수정*/
    }
    /*로그인 a태그 스타일*/
    .login {
        margin-left:100px;
        text-decoration:none;
        font-size:15px;
        color:white;
        background-color: red;
        display:inline-block;
        border-radius: 4px;
        border-bottom:5px solid darkred;
        text-shadow:0px -2px rgba(0,0,0,0.44);
        width: 80px;
        height: 80px;
        line-height: 80px;
    }
    .login:active {
        transform: translateY(3px);
        border-bottom:2px solid darkred;
    }
    /*menuLink 마우스 오버시 표시(다크그레이)*/
    #menu .menuLink:hover {          
            color: darkgray;                
    }
</style>
</head>
<body>
    <header>
        <a id="logo" href="${MISS}/movie/main.do"><img src="${CP_RES}/img/miss_logo.png" style="height:55px; width:auto;"></a>
        <nav id="menu">
            <ul>
                <li><a class="menuLink" href="${MISS}/movie/movieList.do">영화 목록</a></li>
                <li><a class="menuLink" href="${MISS}/pay/reserve.do">영화 예매</a></li>
                <li><a class="menuLink" href="${MISS}/faq/faq.do">FAQ</a></li>
                <li><a class="menuLink" href="${MISS}/mypage/history.do">마이페이지</a></li> <!-- 예매내역, 회원정보 -->
                <li><a class="login" href="${MISS}/login/login.do">로그아웃</a></li> <!-- 아이콘 이미지로 변경 -->
            </ul>
        </nav>
    </header>
</body>
</html>