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
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);

@font-face {
    font-family: 'NEXON Lv1 Gothic OTF Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
    header {
        width: 100%;
       height: 10%;
       /* background: linear-gradient(
       		to top,
       		rgba(0,0,0,0) 10%,
       		rgba(0,0,0,0.5) 30%,
       		rgba(0,0,0,0.7) 70%,
       		rgba(0,0,0,1) 100%
       ); */
       
       background-color: white;
       
    }
    /*로고 위치sdsss*/
    #logo {
        float:left;
        margin-top:1.5vh;
        margin-left:2vw;
    }
    /*menu 스타일*/
    #menu {
        height: 13vh; 
        width : 100%; 
        box-shadow: 0px 0px 7px rgb(54, 54, 54);
    }
    /*menu ul, li 스타일*/
    #menu ul li {
            margin-left:6vw; 
            margin-top: 5vh;                     
            list-style: none;           
            color: white;                
            float: left;                       
            vertical-align: middle;    
            text-align: center;        
    }
    /*menuLink 스타일*/
    #menu .menuLink {                               
            text-decoration:none;                   
            color: white;                           
            display: block;                         
            width: 10vw;                             
            font-size: 1.5vw;                          
            font-weight: bold;                        
            font-family: 'NEXON Lv1 Gothic OTF Bold'; /*추후 폰트 수정*/
    }
    #logoutText{
    	color:white;
    	margin-top:0.5%;
    	margin-left: 93%;
    }
    
    #nickName{
    	color:white;
    	float: right;
    	margin-right: 3%;
    	margin-top: 1%;
    }
    
    /*로그인 a태그 스타일*/
    #logout {
    	margin-left:17vw;
    	margin-top: 2%;
        width: 3vw;
        height: 5vh;
        border: none;
        border-radius: 1vmax; 
    }
    #logout:active {
        transform: translateY(3px);
        border-bottom:2px solid darkgray;
    }
    
    /*menuLink 마우스 오버시 표시(다크그레이)*/
    #menu .menuLink:hover {          
            color: darkgray;
            font-size: 1.7vmax;             
    }
    
    #logout:hover {          
            color: darkgray;
            width: 3.5vw;
       		height: 6vh;  
       		box-shadow: 0px 0px 10px rgb(54, 54, 54);         
    }
    
    img {
    max-width: 100%;
    max-height: 100%;
    
	}
</style>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
	    $("#headNickname").text(sessionStorage.getItem("mbNickname") + "님");
	     
	    Kakao.init('0457445dc54f89414a4818b3cca9b5c4');
	    $("#logout").on("click", function(){
	        if(confirm("로그아웃 하시겠습니까?")){
	            sessionStorage.clear();
	            Kakao.Auth.logout();
	            location.href = '/miss/login/login.do';
	        };
	    });
	    
	    $("#mbNum").on("click", function(){
	        console.log("mbNum");
	        location.href = "/miss/mypage/historyView.do?mbNum=" + sessionStorage.getItem("mbNum");
	    });
	})
</script>
</head>
<body>
    <header>
        <a id="logo" href="${MISS}/movie/main.do"><img src="${CP_RES}/img/MISSlogo.png" style="height:8vh; width:auto;"></a>
        <nav id="menu">
            <ul>
                <li><a class="menuLink" href="${MISS}/movie/movieList.do">영화 목록</a></li>
                <li><a class="menuLink" href="${MISS}/pay/reserve.do">영화 예매</a></li>
                <li><a class="menuLink" href="${MISS}/faq/faq.do">FAQ</a></li>
                <li><a class="menuLink" id="mbNum">마이페이지</a></li> <!-- 예매내역, 회원정보 -->
                    	
            </ul>
            
             
             <div><button id="logout" value="Logout"><img src="${CP_RES}/img/logout.png"></button></div>
             <div id = "logoutText">Logout</div>
             <div id = "nickName"><span id="headNickname" style="font-size: 1.2vmax"></span></div>
             
        </nav>
    </header>
</body>
</html>