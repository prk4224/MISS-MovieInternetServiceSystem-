<%--
/**
	Class Name: movie_detail.jsp
	Description: 영화상세 페이지
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
<c:set var="MISS_RESERVE" value="/miss/pay/reserve.do"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="${CP_RES}/css/movie_detail.css">
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
</head>
<body>
	<!-- 헤더영역 -->
	<%@include file="../cmn/header.jsp"%>
	<!-- //헤더영역 -->
    <div id="contents">
        <div id="left">
            <div id="poster">
                <img src="${detailVO.imRoute}">
            </div>
            <div id="stat" style="background-image : url(${detailVO.imRoute2})">
                <!-- 통계영역(별점, 리뷰개수, 상영기간, ) -->
                <h2>평균 별점</h2><br>
                <h3 id="avgRating"></h3><br>
                <h2>총 리뷰수</h2><br> 
                <h3 id="totalReview"></h3><br>
                <c:set var="mvOn" value="${detailVO.mvOn}"/>
                <c:choose>
                	<c:when test="${mvOn == 1}">
                		<input type="button" value="예매하기" onClick="location.href='${MISS_RESERVE}'">
                	</c:when>
                	<c:when test="${mvOn == 0}">
                		<input type="button" value="상영종료">
                	</c:when>
                	<c:otherwise>
                		<input type="button" value="상영예정">
                	</c:otherwise>
                </c:choose>
            </div>
        </div>
        <div id="right">
            <div id="detail">
            	<h1>${detailVO.mvTitle}</h1><br>
            	<div id="detailLeft">
	                <p>감독 : ${detailVO.mvDirector}</p><br>
	                <p>배우 : ${detailVO.mvActor}</p><br>
	                <p>장르 : ${detailVO.mvGenre}</p><br>
	                <p>
	                	<c:set var="agelimit" value="${detailVO.mvAgelimit}"/>
	                	<c:choose>
		                	<c:when test="${agelimit == 1}">
		                		전체 이용 관람가
		                	</c:when>
		                	<c:otherwise>
		                		${agelimit}세 이상 관람가
		                	</c:otherwise>
	                	</c:choose>
	                </p><br>
	                <p>러닝타임 : ${detailVO.mvTime}분</p><br>
	                <p>
	                	<c:set var="nation" value="${detailVO.mvNation}"/>
	                	<c:choose>
		                	<c:when test="${nation == 1}">
		                		국내영화
		                	</c:when>
		                	<c:otherwise>
		                		해외영화
		                	</c:otherwise>
	                	</c:choose>
	                </p><br>
            	</div>
            	<div id="detailRight">
            		<p>${detailVO.mvReleased} 개봉</p><br>
	                <p>
	                	<c:set var="on" value="${detailVO.mvOn}"/>
	                	<c:choose>
		                	<c:when test="${on == 0}">
		                		상영종료
		                	</c:when>
		                	<c:when test="${on == 1}">
		                		상영중
		                	</c:when>
		                	<c:otherwise>
		                		상영예정
		                	</c:otherwise>
	                	</c:choose>
	                </p><br>
	                <h3>줄거리</h3>
            		<p>${detailVO.mvSummary}</p>
            	</div>
            </div>
            <div id="moviecut">
                <div id="movie">
                    <div id="slideshow">
                        <ul class="slides">
                        	<c:choose>
                        		<c:when test="${scList.size() > 0}">
                        			<c:forEach var="sc" items="${scList}">
                        				<li>
			                                <img src="${sc.imRoute}">
			                            </li>
                        			</c:forEach>
                        		</c:when>
                        	</c:choose>
                        </ul>
                        <p class="controller">
                            <span class="prev" id="prev">&lang;</span>
                            <span class="next" id="next">&rang;</span>
                        </p>
                    </div>
                </div>
            </div>
            <div id="reviewDiv">
                <form action="">
                	<p style="display: none" id="mvNum" name="mvNum">${detailVO.mvNum}</p>
                	<input type="text" value="" id="mbNickname" name="mbNickname" readonly>
                    <select name="rRating" id="rRating">
                        <option selected value="5">5</option>
                        <option value="4">4</option>
                        <option value="3">3</option>
                        <option value="2">2</option>
                        <option value="1">1</option>
                    </select>
                    <input type="text" id="rReview" name="rReview" placeholder="리뷰를 입력하세요(50자 이내)">
                </form>
                	<input type="submit" value="작성완료" id="add">
                <table id="movie_table">
                	<thead>
	                    <tr>
	                        <th style="text-align : center">닉네임</th>
	                        <th style="text-align : center">한줄평</th>
	                        <th style="text-align : center">별점</th>
	                    </tr>
                    </thead>
                    <tbody>
                    <c:choose>
                    	<c:when test="${rvList.size() > 0}">
                    		<c:forEach var="rv" items="${rvList}" end="4">
                    			<tr>
			                        <td>${rv.mbNickname}</td>
			                        <td>${rv.rReview}</td>
			                        <td>${rv.rRating}</td>
			                    </tr>
                    		</c:forEach>
                    	</c:when>
                    </c:choose>
                    </tbody>
                </table><br>
            	<div class="text-center">
		            <div class="text-center col-sm-12 col-md-12 col-lg-12">
		                <div id="page-selection" class="text-center page"></div>
		            </div>
		        </div>
            </div>
        </div>
    </div>
    <!-- 푸터영역 -->
	<%@include file="../cmn/footer.jsp"%>
	<!-- //푸터영역 -->
    <script src="${CP_RES}/js/movie_detail.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			console.log("ready!!");
			console.log("닉네임 : " + sessionStorage.getItem("mbNickname"));
			$('input[name=mbNickname]').attr('value', sessionStorage.getItem("mbNickname"));
			
			reviewRetrieve(1);
			renderingPage('${pageTotal}', 1);
			
			function init(){
				const initValue = "";
				const initRating = 5;
				$("#rRating").val(initRating);
				$("#rReview").val(initValue);
			}
			
			//페이징
        	//pageTotal : 총 페이지 수
        	//page : 현재페이지
			function renderingPage(pageTotal, page){
				console.log("pageTotal : " + pageTotal);
        		console.log("page : " + page);
        		
        		//pageTotal을 int로 변환
        		pageTotal = parseInt(pageTotal);
        		
        		//이전 연결된 EventHandler 제거
        		$('#page-selection').unbind('page');
        		$('#page-selection').bootpag({
        		    total: pageTotal,
        		    page: page,
        		    maxVisible: 10,
        		    leaps: true,
        		    firstLastUse: true,
        		    first: '←',
        		    last: '→',
        		    wrapClass: 'pagination',
        		    activeClass: 'active',
        		    disabledClass: 'disabled',
        		    nextClass: 'next',
        		    prevClass: 'prev',
        		    lastClass: 'last',
        		    firstClass: 'first'
        		}).on("page", function(event, num){
        			console.log("num : " + num);
        			reviewRetrieve(num);
        		}); 
			}
			
			//리뷰 페이징조회
			function reviewRetrieve(page){
				console.log(reviewRetrieve);
				let url = "${CP}/movie/reviewRetrieve.do";
				let method = "GET";
				let async = true;
				let parameters = {
					pageSize : 5,
					pageNum : page,
					mvNum : $("#mvNum").text()
				};
				
				EClass.callAjax(url, parameters, method, async, function(data) {
					console.log("EClas.Ajax data : " + data);
					let parsedData = data;
					
					//1.
					$("#movie_table > tbody").empty();
					let htmlData = "";
					let avgRating = 0;
					
					let totalCnt = 0; //총 글수
					let pageTotal = 1; //총 페이지수
					
					//데이터가 있는 경우
					if(parsedData != null && parsedData.length > 0){
						totalCnt = parsedData[0].totalCnt;
						avgRating = parsedData[0].num;
						console.log("avgRating : " + avgRating);
						console.log("totalCnt : " + totalCnt);
						pageTotal = Math.ceil(totalCnt / 5);
						console.log("pageTotal : " + pageTotal);
						$.each(parsedData, function(i, value) {
							console.log(i + ": " + value.mbNickname);
							htmlData += "<tr>                                                           ";
                            htmlData += "   <td>" + value.mbNickname +                            "</td>";
                            htmlData += "   <td>" + value.rReview +                               "</td>";
                            htmlData += "   <td>" + value.rRating +                               "</td>";
                            htmlData += "</tr>                                                          ";
						});
					}else{
						htmlData += '<tr><td colspan="5">첫 리뷰를 작성해주세요~</td></tr>';
					}
					console.log("htmlData : " + htmlData);
					
					//리뷰개수 조회
					$("#totalReview").empty();
					$("#totalReview").append(totalCnt);
					
					//평균별점조회
					$("#avgRating").empty();
					$("#avgRating").append(avgRating);
					
					//2.
					$("#movie_table > tbody").append(htmlData);
					
					//기존 페이징 지우기
                    $("#page-selection").empty();
					
                  	//paging호출
                    renderingPage(pageTotal, page);
                  	
                  	//초기화
                  	init();
				})
			}
			
			//등록
			$("#add").on("click", function(){
				console.log("add!!");
				if(eUtil.ISEmpty($("#mbNickname").val())){
					alert("닉네임을 입력하세요!!");
					$("#mbNickname").focus();
					return;
				}
				if(eUtil.ISEmpty($("#rReview").val())){
					alert("리뷰를 입력하세요!!");
					$("#rReview").focus();
					return;
				}
				if(confirm("리뷰를 등록하시겠습니까?") == false){
					return;
				}
				
				let url = "${CP}/movie/reviewAdd.do";
				let method = "POST";
				let parameters = {
						"rRating" : $("#rRating").val(),
						"rReview" : $("#rReview").val(),
						"mbNickname" : $("#mbNickname").val(),
						"mvNum" : $("#mvNum").text()
				};
				let async = true;
				EClass.callAjax(url, parameters, method, async, function(data) {
					console.log("data.msgId : " + data.msgId);
					console.log("data.msgContents : " + data.msgContents);
					if(data.msgId == "1"){
						alert(data.msgContents);
						reviewRetrieve(1);
						init();
					}else{
						alert(data.msgContents);
					}
				})
				
			});
		});
	</script>
</body>
</html>