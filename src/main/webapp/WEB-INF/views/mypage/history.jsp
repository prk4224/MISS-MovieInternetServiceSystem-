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
	<link rel="shortcut icon" type="image/x-icon" href="${CP}/favicon.ico">
	<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>부트스트랩 - boot_list</title>
	<!--스타일 시트 -->
	<style type="text/css">
	​
	main {
	        width:100%;
	        height:615px;
	}
	​
	header {
	        width:100%;
	        height:80px;
	        background: gray;
	        opacity:0.5;
	}
	​
	.achieve {
	        position: relative;
	        left:200px;
	        top:130px;
	        width:150px; 
	        height:40px; 
	        background: linear-gradient( white ,lightblue);
	        border:1px solid ;
	        text-align:center;
	        border-radius:10px;
	}
	​
	#myInfo {
	         position: relative;
	         left: 200px;
	         top: 140px;
	         width:1000px;
	         border: 1px solid black;
	         text-align:center;
	}
	​
	#couponInfo { 
	         position: relative;
	         left: 200px;
	         top: 170px;
	         width:1000px;
	         border: 1px solid black;
	         text-align:center;
	}
	​
	#movieTicket {
	         position: relative;
	         left: 200px;
	         top: 200px;
	         width: 1000px;
	         border: 0.5px solid black;
	         border-collapse: collapse;
	         text-align:center;
	}
	​
	caption {
	        text-align: left;
	        font-size: 20px;
	        font-weight: bold;
	}
	​
	th  {
	        height:40px;
	}
	 
	.tableTh {
	         background: linear-gradient( white ,lightblue);
	}
	​
	.cancle{
	          width: 70px;  
	          text-align: center;
	          height: 30px;
	          border: 1px solid grey;  
	          cursor:pointer; 
	          background-color: light grey;  
	          border-radius: 12px;
	          text-align: center;
	          float: left;
	}
	​
	​
	​
	</style>
    <!-- 부트스트랩 -->
    <link href="${CP_RES}/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="${CP_RES}/js/jquery-1.12.4.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="${CP_RES}/js/bootstrap.min.js"></script>
    <!-- jquery_bootstrap paging -->
    <script type="text/javascript" src="${CP_RES}/js/jquery.bootpag.js"></script>
    <!--자바스크립트 코드 -->
	<script type="text/javascript">
	function moCancle()  {
	    if(!confirm('영화를 취소하시겠습니까?')){
	        return false;
	    }
	  }
	  
	function moviePage()  {
	      window.location.href = 'https://www.youtube.com/watch?v=LmlE3v65e9A'
	    }
	</script>
</head>
<body>
   	<!-- 헤더영역 -->
	<%@include file="../cmn/header.jsp"%>
	<!-- //헤더영역 -->
    <div style="width:320px;">
        <div class="achieve" style="float:left;">회원등급  VIP</div>
        <div class="achieve" style="float:right;">포인트 1520P</div>
    </div>
    <table id="myInfo">
    <caption>내정보</caption>
    <thead>
        <tr class="tableTh">
            <th width="200px">이름</th>
            <th width="100px">닉네임</th>
            <th width="300px">이메일</th>
            <th width="100px">생년월일</th>
            <th width="100px">전화번호</th>
        </tr>
     </thead>
        <tr>  
            <td>홍길동</td>
            <td>MISS</td>
            <td>MISS@naver.com</td>
            <td>1999.12.30</td>
            <td>010-0000-0000</td>
        </tr>    
    </table>  
    
    <table id="couponInfo">
    <caption>쿠폰</caption>
     <thead>
        <tr class="tableTh">
            <th width="200px">쿠폰명</th>
            <th width="100px">할인율</th>
            <th width="300px">쿠폰번호</th>
            <th width="100px">사용구분</th>
        </tr>
     </thead>
        <tr>  
            <td>생일쿠폰</td>
            <td>30%</td>
            <td>123456-123456</td>
            <td>사용완료</td>
        </tr>    
        <tr>  
            <td>고기먹고싶다</td>
            <td>10%</td>
            <td>123456-123456</td>
            <td>사용완료</td>
        </tr>
        <tr>  
            <td>크리스마스쿠폰</td>
            <td>20%</td>
            <td>123456-123456</td>
            <td>미사용</td>
        </tr>
        <tr>  
            <td>오늘만재고정리쿠폰</td>
            <td>70%</td>
            <td>123456-123456</td>
            <td>미사용</td>
        </tr>
        <tr>  
            <td>사장님이쏜다쿠폰</td>
            <td>100%</td>
            <td>123456-123456</td>
            <td>미사용</td>
        </tr>
    </table>
    
   <main>
   <table id="movieTicket">
   <caption>예매 내역</caption>
     <thead>
        <tr class="tableTh">
            <th width="100px">예매상태</th> 
            <th width="200px">상영일시</th>
            <th width="250px">영화명</th>
            <th width="200px">예매번호</th>
            <th width="80px">영화보기</th>
            <th width="80px">예매취소</th>
        </tr> 
     </thead>        
            <tr>  
                <td>상영중</td>
                <td>2022/06/18 14:30</td>
                <td onclick="moviePage()">다만 악에서 구원하소서</td>
                <td>142451-121356</td>
                <td><button  type="button" style="display:block">영화보기</button></td>
                <td><button class="cancle" type="button" onclick="moCancle()" style="display:block">취소</button></td>
            </tr>        
             <tr>  
                <td>상영중</td>
                <td>2022/06/18 14:30</td>
                <td onclick="moviePage()">다만 악에서 구원하소서</td>
                <td>142451-121356</td>
                <td><button  type="button" style="display:block">영화보기</button></td>
                <td align="right"><button class="cancle" type="button" onclick="moCancle()">취소</button></td>
            </tr>        
             <tr>  
                <td>상영중</td>
                <td>2022/06/18 14:30</td>
                <td onclick="moviePage()">다만 악에서 구원하소서</td>
                <td>142451-121356</td>
                <td><button  type="button" style="display:block">영화보기</button></td>
                <td><button class="cancle" type="button" onclick="moCancle()">취소</button></td>
            </tr>        
             <tr>  
                <td>상영중</td>
                <td>2022/06/18 14:30</td>
                <td onclick="moviePage()">다만 악에서 구원하소서</td>
                <td>142451-121356</td>
                <td><button  type="button" style="display:block">영화보기</button></td>
                <td><button class="cancle" type="button" onclick="moCancle()">취소</button></td>
            </tr>        
             <tr>  
                <td>상영중</td>
                <td>2022/06/18 14:30</td>
                <td onclick="moviePage()">다만 악에서 구원하소서</td>
                <td>142451-121356</td>
                <td><button  type="button" style="display:block">영화보기</button></td>
                <td><button class="cancle" type="button" onclick="moCancle()">취소</button></td>
            </tr>        
             <tr>  
                <td>상영중</td>
                <td>2022/06/18 14:30</td>
                <td onclick="moviePage()">다만 악에서 구원하소서</td>
                <td>142451-121356</td>
                <td><button  type="button" style="display:block">영화보기</button></td>
                <td><button class="cancle" type="button" onclick="moCancle()">취소</button></td>
            </tr>        
     </table>
     </main>
	<!-- 푸터영역 -->
	<%@include file="../cmn/footer.jsp"%>
	<!-- //푸터영역 -->
</body>
</html>