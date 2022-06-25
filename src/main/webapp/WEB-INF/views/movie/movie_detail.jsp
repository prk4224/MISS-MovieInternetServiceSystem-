<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<c:set var="resources" value="/resources"/>
<c:set var="CP_RES" value="${CP}${resources}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${CP_RES}/css/movie_detail.css">
<title>MISS 영화 상세 화면</title>
<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
<script src="${CP_RES}/js/jquery-1.12.4.js"></script>
<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
<!-- 사용자 정의 function, ISEmpty -->
<script src="${CP_RES}/js/eUtil.js"></script>
<!-- 사용자 정의 function, callAjax -->
<script src="${CP_RES}/js/eclass.js"></script>
<!-- jquery_bootstrap paging -->
<script type="text/javascript" src="${CP_RES}/js/jquery.bootpag.js"></script>
</head>
<body>
	<div id="header">
        헤더영역
    </div>
    <div id="contents">
        <div id="left">
            <div id="poster">
                <img src="${detailVO.imRoute}">
            </div>
            <div id="stat">
                <!-- 통계영역(별점, 예매율, 연령별예매분포) -->
                <h3>별점 : 9.3</h3>
                <h3>예매율 : 26%</h3>
                <canvas id="chart" width="" height="150"></canvas>
            </div>
        </div>
        <div id="right">
            <input type="button" value="예매하기">
            <div id="detail">
                <h1>${detailVO.mvTitle}</h1><br>
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
                <p>${detailVO.mvSummary}</p>
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
                	<input type="text" placeholder="닉네임 입력" id="mbNickname" name="mbNickname">
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
                <table>
                    <tr>
                        <th>순번</th>
                        <th>닉네임</th>
                        <th>한줄평</th>
                        <th>별점</th>
                        <th>좋아요</th>
                    </tr>
                    <c:choose>
                    	<c:when test="${rvList.size() > 0}">
                    		<c:forEach var="rv" items="${rvList}">
                    			<tr>
			                        <td>${rv.rNum}</td>
			                        <td>${rv.mbNickname}</td>
			                        <td>${rv.rReview}</td>
			                        <td>${rv.rRating}</td>
			                        <td class="like1 on"><img src="${CP_RES}/img/like.JPG"></td>
			                    </tr>
                    		</c:forEach>
                    	</c:when>
                    </c:choose>
                </table><br>
                <div style="text-align: center; word-spacing: 30px;"><< < 1 2 3 4 5 > >></div>
            </div>
        </div>
    </div>
    <div id="footer">
        푸터영역
    </div>
    <script src="${CP_RES}/js/movie_detail.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			console.log("ready!!");
			
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
// 				console.log("rReview : " + $("#rReview").val());
// 				console.log("rRating : " + $("#rRating").val());
// 				console.log("mbNickname : " + $("#mbNickname").val());
// 				console.log("mvNum : " + $("#mvNum").text());
				
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
					}else{
						alert(data.msgContents);
					}
				})
			});
		});
	</script>
</body>
</html>