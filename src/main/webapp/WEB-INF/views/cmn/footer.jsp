<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
footer {
        position: relative;
        transform: translateY(-100%);
}
</style>
<title>Insert title here</title>
<style type="text/css">
	@font-face {
    font-family: 'NEXON Lv1 Gothic OTF';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
	
	#wrapper{
		height: auto;
		min-height: 100%;
    	padding-bottom: 6vmax; /* footer의 높이 */
	}
  	
	#footer{
		float:left;
		margin-top: 3vmax;
	   position: relative;
	   height:6vmax;
	   bottom: 0;
	   width: 100%;
	   font-family: 'NEXON Lv1 Gothic OTF';

	}

</style>

<!-- 세션체크파일 필수!! -->
<script src="${CP_RES}/js/checkSession.js"></script>
</head>
<body>
<!-- 	<hr> -->
	<p id = "footer" align="center" style="font-size:1vmax; color:darkgray;">
	서울특별시 마포구 서강로 136 2,3층 코리아IT아카데미 신촌점(대흥동)<br>
	대표이사 : 김동호 / 사업자 등록번호 : 123-45-67890 / 통신판매업신고번호 : 2022-서울마포-1130<br>
	호스팅사업자 : MISS / 대표번호 : 02-1234-5678 / 대표이메일 : miss@gmail.com<br>
	©MISS. All Rights Reserved
    </p>
</body>
</html>