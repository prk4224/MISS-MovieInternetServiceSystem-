<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	
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
	   

	}

</style>

<!-- 세션체크파일 필수!! -->
<script src="${CP_RES}/js/checkSession.js"></script>
</head>
<body>
	<p id = "footer" align="center" style="font-size:1vmax; color:darkgray;">
        대표 메일: miss@miss.com(유료) / 제휴및 대외 협력 https://miss.com/contact<br>
        주식회사 미스 / 대표 김동호 / 서울특별시 마포구 서강로 136 2,3층 / 사업자 등록번호 123-45-67890 / 대표번호 02-345-6789 <br>
    MISS.All Rights Reserved
    </p>
</body>
</html>