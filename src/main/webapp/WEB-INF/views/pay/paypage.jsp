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
	<!-- 헤더영역 -->
	 <%@include file="../cmn/header.jsp"%>
	<!-- //헤더영역 -->
	<!-- <div id = "movie_img">
		
	</div> -->
	
	<!-- <div id = "triangle">
	</div> -->

     <div id = "wrapper">
        <div id = "movie_detail" >
            <div class="movie_imp">
                <div id = "c_movie">
                    <div id = "movie_title">${movie.mvTitle}</div>
                    
                    <div id = "movie_dir">감독 : ${movie.mvDirector}</div>
                    <div id = "movie_act">배우 : ${movie.mvActor}</div> 


                </div>
                <div id = "t_movie">
                    <div id ="miTime">상영시간 : ${miTime}</div>
                    <div id = "r_time">러닝타임 : ${movie.mvTime} 분</div>
                    <div id = "miQ">화질 : ${miQuality}p</div>
                </div>
            </div>
            <div class="movie_sale">
                <div id = "p_price" name = "p_price" value = "${price}">결제금액 : ${price} 원</div>
                <div id = "coupon_text">COUPON</div>
                <div id = "coupon">
                    
                   	<table>
                   		<thead>
                   			<tr>
                   				<th></th>
                   				<th>Coupon Number</th>
                   				<th>Coupon Name</th>
                   				<th>Discount Rate</th>
             
                   			</tr>
                   		</thead>
                   		
                   		<tbody id = "couponbody">
                   		
                   			<c:choose>
	                   			<c:when test="${list.size() > 0}">
	                   				<c:forEach var = "vo" items = "${list}">
	                   					<tr>
	       									<td><input class = "couponCheck"  type="radio" name = "couponList" value = "${vo.cNum}" /></td>
	                   						<td>${vo.cNum}</td>
	                   						<td>${vo.cName}</td>
	                   						<td>${vo.cRatio} %</td>
	                   					</tr>
	                   				</c:forEach>
                   				</c:when>
                   				
                   				<c:otherwise>
			                     <tr>
			                        <td >No data found</td>
			                     </tr>
			                    </c:otherwise>
			                    
                   			</c:choose>
                   			
                   		</tbody>
                   	</table>

                </div>
                <div id = "point">   
                	POINT : <input type = "text" id = "user_point" value = "${userpoint}" readonly="readonly">                 
                    사용 : 
                    <input id = "u_point" type = "number" style="width: 4vmax; height: 1.7vmax; text-align: right;  border: none; font-size: 1.2vw;" value = "0">
                    <button id = "pointbtn">적용</button>
                </div>
                <div id = "result_pay">최종결제금액
                	<div id = "r_price"></div> 
                	
                </div>
                
                 
            </div>
            <div id = "payment_type">
		   		<form name = "frmSubmit">
		 			<button id="kakaoapibtn"><img src="${path}/resources/img/kakao.jpeg"></button>
			 	</form>
			</div>
            
            
        </div>
        
    </div>
    <div id = "movie_detailInfo">
		<div id = "post">
	        <img src="${postURL}">
	    </div>
		<div id = "plot">Plot</div> 
		<div id = "movie_contents">${movie.mvSummary}</div> 
		
	</div>

    
    
    <!-- 푸터영역 -->
	<%@include file="../cmn/footer.jsp"%>
	<!-- //푸터영역--------------------------->
	
	<script type="text/javascript">
	
	
 
	
	
	$(document).ready(function(){
		 console.log("document.ready");
		 
		 $("#movie_title").mouseenter(function(e){
			 console.log("mouseover");
			 $("#movie_detailInfo").fadeIn(500);
			 $("#movie_detail").css({
				 "margin-left" : "8vmax",
				 "box-shadow" : "0px 0px 0px rgb(54, 54, 54)"
				 });
			 $("#movie_title").css({"width" : "107%"});
			
		 });
		 
		 
		 $("#movie_title").mouseleave(function(e){
			 console.log("mouseover");
			 $("#movie_detailInfo").hide();
			 $("#movie_detail").css({
				 "margin-left" : "30vmax",
				 "box-shadow" : "0px 0px 7px rgb(54, 54, 54)"
				 });
			 $("#movie_title").css({"width" : "80%"});
		 });
		 
		        
        let resultprice = ${price};
        console.log("resultpricey"); 
        let point = 0;
        
        document.getElementById("r_price").innerHTML=resultprice;
        
        $("#pointbtn").on("click", function(){
        	
        	if(  ${userpoint} <  $("#u_point").val() ) {
        		alert("보유한 포인트 보다 많습니다.");
        		$("#u_point").focus;
        		return;	
        	}
        	
        	if(  resultprice <=  $("#u_point").val() ) {
        		alert("결제 금액보다 큰 포인트는 사용하실수 없습니.");
        		$("#u_point").focus;
        		return;	
        	}
        	
        	
        	
        	console.log("pointbt"); 
        	console.log($("#u_point").val()); 
        	
        	resultprice = ${price} - $("#u_point").val();
        	point = $("#u_point").val();
        	document.getElementById("r_price").innerHTML=resultprice;
        	    	
        });
        
       
       
        
       
        
       $("#kakaoapibtn").on("click", function(e){
    	   
    	 
    	   let checkbox = document.getElementsByName('couponList');
    	   let useCoupon = -1;
    	   console.log(resultprice); 
    	   console.log(point); 
    	   console.log(useCoupon); 
           
    	  
    	   
    	   for(let i = 0; i < checkbox.length; i++){
    		   
    		   if(checkbox[i].checked){
    			   useCoupon = checkbox[i].value;
    			   break;
    		   }
    	   }
    	   
    	   console.log(useCoupon);
    	   console.log(checkbox.length);
    	   
    	   $.ajax({
    		   url : "postView.do",
    		   type : "post",
    		   data : {
    			   resultPrice : resultprice+"",
    			   uPoint : point+"",
    			   useCouponId : useCoupon+""
    			   
    		   },
    		   success : function(data) {
   				
    		    },
    			error : function() {
    				alert("error");
    			}
    	   });
    	   
    	   for(let i = 0; i < 100000000; i++){
    		   
    	   }
    	   
    	   let theForm = document.frmSubmit;
    	   theForm.method = "post";
           theForm.action = "/miss/pay/kakaoPay.do";
           
           theForm.submit();
    	   
    	   
    	   
    	   
           
        });
        
	});
	
	</script>
    
    
</body>
</html>
