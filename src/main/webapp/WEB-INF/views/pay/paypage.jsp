<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
 <script src="${path}/resources/js/jquery-1.12.4.js"></script>

	<title>Miss</title>
<link rel="stylesheet"  type="text/css" href="${path}/resources/css/paypage.css">
</head>
<body>
<header>
        <h1>MISS</h1>
    </header>
    <hr>

     <div id = "movie_sale">
        <div id = "movie_detail" >
            <div class="movie_imp">
                <div id = "c_movie">
                    <div id = "movie_title">영화제목 : </div> 
                    <div>감독 : 배우 : </div> 


                </div>
                <div id = "t_movie">
                    <div>상영시간 : </div>
                </div>
            </div>
            <div class="movie_sale">
                <div id = "p_price">결제금액 : </div>
                <div id = "coupon">
                    <div>할인쿠폰</div>
                    <div>
                        <input type="checkbox"> 1. 생일 할인 쿠폰 20%
                    </div>
                    <div>
                        <input type="checkbox"> 2. 회원가입 쿠폰 20%
                    </div>
                    <div>
                        <input type="checkbox"> 3. 쿠폰
                    </div>
                    <div>
                        <input type="checkbox"> 4. 생일 할인 쿠폰
                    </div>
                    <div>
                        <input type="checkbox"> 5. 생일 할인 쿠폰
                    </div>
                    <div>
                        <input type="checkbox"> 6. 생일 할인 쿠폰
                    </div>
                    <div>
                        <input type="checkbox"> 7. 생일 할인 쿠폰
                    </div>
                    <div>
                        <input type="checkbox"> 8. 생일 할인 쿠폰
                    </div>

                </div>
                <div id = "point">                    
                    포인트 : {가지고 있는 포인트} | 사용 포인트 : 
                    <input type = "text" style="width: 4vmax;">
                    <button>적용</button>
                </div>
                <div id = "result_pay">최종결제금액 : value 값 받아서 계산</div>
            </div>
            
        </div>
    </div>

    <div id = "payment_type">
    	<form method = "post" action="/miss/pay/kakaoPay.do">
   			 <button id="kakaoapibtn"><img src="${path}/resources/img/kakao.jpeg"></button>
		</form>
    	
        <button id = "naverapibtn"  type="button">네이버 간편 결제</button>
    </div>
    
    
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</body>
</html>
