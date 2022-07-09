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
<%-- 	<link rel="stylesheet" type="text/css" href="${CP_RES}/css/movie_detail.css"> --%>
<style type="text/css">
    @import url("https://fonts.googleapis.com/css?family=Montserrat:300,400,700,800");
    * {
    box-sizing: border-box;
    margin: 0;
    }
    @font-face {
    font-family: 'NEXON Lv1 Gothic OTF';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff') format('woff');
    font-weight: normal;
    font-style: normal;
    }
    @font-face {
    font-family: 'NEXON Lv1 Gothic OTF Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

    html,
    body {
    margin: 0;
    background: #E9E9E9;
    font-family: "Montserrat", helvetica, arial, sans-serif;
    font-size: 16px;
    font-weight: 400;
    }
    #contents{
    	background: #E9E9E9;
    }

    .movie_card {
    position: relative;
    display: block;
    width: 1500px;
    height: 800px;
    margin: 10px auto;
    overflow: hidden;
    border-radius: 10px;
    transition: all 0.4s;
    
    }
    .movie_card:hover {
    transform: scale(1.02);
    transition: all 0.4s;
    }
    .movie_card .info_section {
    position: relative;
    width: 80%;
    height: 100%;
    background-blend-mode: multiply;
    z-index: 2;
    border-radius: 10px;
    }
    .movie_card .info_section .movie_header {
    position: relative;
    padding: 25px;
    height: 40%;
    }
    .movie_card .info_section .movie_header h1 {
    color: #fff;
    font-weight: 400;
    }
    .movie_card .info_section .movie_header h4 {
    color: #9ac7fa;
    font-weight: 400;
    }
    .movie_card .info_section .movie_header .minutes {
    display: inline-block;
    margin-top: 10px;
    color: #fff;
    padding: 5px;
    border-radius: 5px;
    border: 1px solid rgba(255, 255, 255, 0.13);
    }
    .movie_card .info_section .movie_header .type {
    display: inline-block;
    color: #cee4fd;
    margin-left: 10px;
    }
    .movie_card .info_section .movie_header .locandina {
    position: relative;
    float: left;
    margin-right: 20px;
    height: 120px;
    box-shadow: 0 0 20px -10px rgba(0, 0, 0, 0.5);
    }
    .movie_card .info_section .movie_desc {
    padding: 25px;
    height: 50%;
    }
    .movie_card .info_section .movie_desc .text {
    font-size: 20px;
    color: #cfd6e1;
    font-family: 'NEXON Lv1 Gothic OTF';
    }
    .movie_card .info_section .movie_social {
    height: 10%;
    padding-left: 15px;
    padding-bottom: 20px;
    }
    .movie_card .info_section .movie_social ul {
    list-style: none;
    padding: 0;
    }
    .movie_card .info_section .movie_social ul li {
    display: inline-block;
    color: rgba(255, 255, 255, 0.4);
    transition: color 0.3s;
    transition-delay: 0.15s;
    margin: 0 10px;
    }
    .movie_card .info_section .movie_social ul li:hover {
    transition: color 0.3s;
    color: rgba(255, 255, 255, 0.8);
    }
    .movie_card .info_section .movie_social ul li i {
    font-size: 19px;
    cursor: pointer;
    }
    .movie_card .blur_back {
    position: absolute;
    top: 0;
    z-index: 1;
    height: 100%;
    right: 0;
    background-size: cover;
    border-radius: 11px;
    }
    .movie_header {
        width: 60%;
    }

    .movie_desc {
        width: 50%;
    }

    .info_section {
        background: linear-gradient(to right, #0d0d0c 30%, transparent 100%);
    }

    .blur_back {
        width: 100%;
        background-position: -100% 25% !important;
    }
    #bright {
    box-shadow: 0px 0px 150px -45px rgba(19, 51, 139, 0.5);
    }
    #bright:hover {
    box-shadow: 0px 0px 120px -55px rgba(19, 51, 139, 0.5);
    }
    
    @import url(https://fonts.googleapis.com/css?family=Patua+One|Open+Sans);
    table {
    -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  border-collapse: separate;
  background: #fff;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  border-radius: 5px;
  margin: 50px auto;
  -moz-box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
  -webkit-box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
  box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
	}
	
	thead {
	  -moz-border-radius: 5px;
	  -webkit-border-radius: 5px;
	  border-radius: 5px;
	}
	
	thead th {
	  font-family: 'NEXON Lv1 Gothic OTF';
	  font-size: 20px;
	  font-weight: 400;
	  color: #fff;
	  text-shadow: 1px 1px 0px rgba(0, 0, 0, 0.5);
	  text-align: left;
	  padding: 20px;
	  background-image: url('data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4gPHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGRlZnM+PGxpbmVhckdyYWRpZW50IGlkPSJncmFkIiBncmFkaWVudFVuaXRzPSJvYmplY3RCb3VuZGluZ0JveCIgeDE9IjAuNSIgeTE9IjAuMCIgeDI9IjAuNSIgeTI9IjEuMCI+PHN0b3Agb2Zmc2V0PSIwJSIgc3RvcC1jb2xvcj0iIzY0NmY3ZiIvPjxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iIzRhNTU2NCIvPjwvbGluZWFyR3JhZGllbnQ+PC9kZWZzPjxyZWN0IHg9IjAiIHk9IjAiIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIGZpbGw9InVybCgjZ3JhZCkiIC8+PC9zdmc+IA==');
	  background-size: 100%;
	  background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #646f7f), color-stop(100%, #4a5564));
	  background-image: -moz-linear-gradient(#646f7f, #4a5564);
	  background-image: -webkit-linear-gradient(#646f7f, #4a5564);
	  background-image: linear-gradient(#13338B, #13338B);
	  border-top: 1px solid #858d99;
	}
	thead th:first-child {
	  -moz-border-radius-topleft: 5px;
	  -webkit-border-top-left-radius: 5px;
	  border-top-left-radius: 5px;
	}
	thead th:last-child {
	  -moz-border-radius-topright: 5px;
	  -webkit-border-top-right-radius: 5px;
	  border-top-right-radius: 5px;
	}
	
	tbody tr td {
	  font-family: 'NEXON Lv1 Gothic OTF';
	  font-weight: 400;
	  color: #5f6062;
	  font-size: 13px;
	  padding: 20px 20px 20px 20px;
	  border-bottom: 1px solid #e0e0e0;
	}
	
	tbody tr:nth-child(2n) {
	  background: #f0f3f5;
	}
	
	tbody tr:last-child td {
	  border-bottom: none;
	}
	tbody tr:last-child td:first-child {
	  -moz-border-radius-bottomleft: 5px;
	  -webkit-border-bottom-left-radius: 5px;
	  border-bottom-left-radius: 5px;
	}
	tbody tr:last-child td:last-child {
	  -moz-border-radius-bottomright: 5px;
	  -webkit-border-bottom-right-radius: 5px;
	  border-bottom-right-radius: 5px;
	}
	
	tbody:hover > tr td {
	  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=50);
	  opacity: 0.5;
	  /* uncomment for blur effect */
	  /* color:transparent;
	  @include text-shadow(0px 0px 2px rgba(0,0,0,0.8));*/
	}
	
	tbody:hover > tr:hover td {
	  text-shadow: none;
	  color: #2d2d2d;
	  filter: progid:DXImageTransform.Microsoft.Alpha(enabled=false);
	  opacity: 1;
	}
	    
	    
	#stillCutH1{
		font-family: 'NEXON Lv1 Gothic OTF Bold';
		text-align: center;
	}
	
	.slides{
    position: absolute;
    left: 0;
    top: 0;
    width: 4000px;
    transition: left 0.7s ease-out;
    padding: 0;
	}
	.slides li{
	    position: relative;
	    float: left;
	}
	.controller span{
	    position: absolute;
	    background-color: #13338B;
	    color: #E9E9E9;
	    text-align: center;
	    border-radius: 50%;
	    padding: 10px 20px;
	    top: 45%;
	    font-size: 1.3em;
	    cursor: pointer;
	    border: 1px solid;
	    opacity: 0.5;
	}
	.controller span:hover{
	    background-color: #E9E9E9;
	    color: #13338B;
	}
	.prev{
	    left: 0px;
	    display: none;
	}
	.next{
	    right: 0px;
	}
	.slides img{
	    width: 660px;
	    height: 370px;
	}
	#slideshow{
	    width: 1350px;
	    height: 370px;
	    position: relative;
	    margin: 0 auto;
	    overflow: hidden;
	}
	.slides li:first-child{
	    margin-left: 0px;
	}
	.slides li:not(:last-child){
	    float: left;
	    margin-right: 30px;
	}
	
    select {
	    background:url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='50px' height='50px'><polyline points='46.139,15.518 25.166,36.49 4.193,15.519'/></svg>");
	    background-color:#3498DB;
	    background-repeat:no-repeat;
	    background-position: right 10px top 15px;
	    background-size: 16px 16px;
	    color:white;
	    padding:12px;
	    width:auto;
	    font-family:arial,tahoma;
	    font-size:20px;
	    font-weight:bold;
	    color:#fff;
	    text-align:center;
	    text-shadow:0 -1px 0 rgba(0, 0, 0, 0.25);
	    border-radius:3px;
	    -webkit-border-radius:3px;
	    -webkit-appearance: none;
	    border:0;
	    outline:0;
	    -webkit-transition:0.3s ease all;
	        -moz-transition:0.3s ease all;
	            -ms-transition:0.3s ease all;
	            -o-transition:0.3s ease all;
	                transition:0.3s ease all;
	    }
	#reviewH1{
		font-family: 'NEXON Lv1 Gothic OTF Bold';
		text-align: center;
	}
	#rRating {
	  background-color:#13338B;
	  color: #E9E9E9;
	  border: 1px solid black;
	}
	
	#rRating:hover {
	  background-color:#E9E9E9;
	  color: #13338B;
	}
	#stat{
		text-align: center;
		font-size: 24px;
		margin-top: 10px;
		font-family: 'NEXON Lv1 Gothic OTF Bold';
		color: #13338B;
	}
	#stat > span:nth-child(even){
		background-color: #13338B;
		border: 3px solid #13338B;
		border-radius: 10px;
		color: white;
	}
	form{
		width: 80%;
		text-align: right;
		display: inline-block;
		padding-right: 20px;
	}
	#mbNickname{
		width: 150px;
		height: 46px;
		border: none;
		background-color:#E9E9E9;
		border-bottom: 1px solid black;
	}
	#rReview{
		width: 800px;
		height: 46px;
		border: none;
		background-color:#E9E9E9;
		border-bottom: 1px solid black;
	}
	#add{
		width: 100px;
		height: 46px;
		background-color: #13338B;
		color: white;
		border: none;
		border-radius: 10px;
	}
	
</style>
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
      <div class="movie_card" id="bright">
        <div class="info_section">
          <div class="movie_header">
            <img class="locandina" src="${detailVO.imRoute}"/>
            <h1>${detailVO.mvTitle}</h1>
            <h4>${detailVO.mvReleased }, ${detailVO.mvDirector}</h4>
            <span class="minutes">${detailVO.mvTime}분</span>
            <span class="minutes">
               <c:set var="agelimit" value="${detailVO.mvAgelimit}"/>
               <c:choose>
                   <c:when test="${agelimit == 1}">
                                                전체 이용 관람가
                   </c:when>
                   <c:otherwise>
                       ${agelimit}세 이상 관람가
                   </c:otherwise>
               </c:choose>
            </span>          
            <span class="minutes">
            <c:set var="nation" value="${detailVO.mvNation}"/>
            <c:choose>
                  <c:when test="${nation == 1}">
                                          국내영화
                  </c:when>
                  <c:otherwise>
                                          해외영화
                  </c:otherwise>
              </c:choose>
            </span>
            <span class="minutes">${detailVO.mvGenre}</span>
            <c:set var="nation" value="${detailVO.mvNation}"/>
            <span class="minutes">
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
            </span><br>
            <h4>출연 : ${detailVO.mvActor}</h4>
          </div>
          <div class="movie_desc">
            <p class="text">
              ${detailVO.mvSummary}
            </p>
          </div>
        </div>
        <div class="blur_back bright_back" style="background-image: url(${detailVO.imRoute2})"></div>
      </div>
            <div id="moviecut">
            <h1 id="stillCutH1">영화 스틸컷</h1>
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
            	<h1 id="reviewH1">리뷰</h1>
            	<div id="stat">
            		<span>평균 별점</span>
	                <span id="avgRating"></span>
	                <span>총 리뷰수</span>
	                <span id="totalReview"></span>
            	</div>
                <form>
	                <p style="display: none" id="mvNum" name="mvNum">${detailVO.mvNum}</p><br>
	                <select id="rRating" name="rRating">
				      <optgroup label="별점">
				        <option selected="selected" value="5">5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
				        <option value="4">4&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
				        <option value="3">3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
				        <option value="2">2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
				        <option value="1">1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
				      </optgroup>
				    </select>
				    <input type="text" value="" id="mbNickname" name="mbNickname" readonly>
				    <input type="text" id="rReview" name="rReview" placeholder="리뷰를 입력하세요(50자 이내)">
                </form>
                <input type="submit" value="리뷰등록" id="add">

                	<table id="movie_table">
                	   <thead>
                	       <tr>
                	           <th style="width: 300px">닉네임</th>
                	           <th style="width: 1000px">한줄평</th>
                	           <th style="width: 100px">별점</th>
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
                	</table>
            	<div class="text-center">
		            <div class="text-center col-sm-12 col-md-12 col-lg-12">
		                <div id="page-selection" class="text-center page"></div>
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
        		    first: 'FIRST',
        		    last: 'LAST',
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