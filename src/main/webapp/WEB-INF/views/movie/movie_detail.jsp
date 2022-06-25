<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="${path}/resources/css/movie_detail.css">
<title>MISS 영화 상세 화면</title>
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
            
            <div id="review">
                <form action="#" method="get">
                    <select>
                        <option selected>5</option>
                        <option>4</option>
                        <option>3</option>
                        <option>2</option>
                        <option>1</option>
                    </select>
                    <input type="text" placeholder="리뷰를 입력하세요(50자 이내)">
                    <input type="submit" value="작성완료">
                </form>
                <table>
                    <tr>
                        <th>순번</th>
                        <th>닉네임</th>
                        <th>한줄평</th>
                        <th>별점</th>
                        <th>좋아요</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>리뷰왕</td>
                        <td>너무재밌어요너무재밌어요너무재밌어요너무재밌어요너무재밌어요</td>
                        <td>5</td>
                        <td class="like1 on"><img src="${path}/resources/img/like.JPG"></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>리뷰왕</td>
                        <td>너무재밌어요너무재밌어요너무재밌어요너무재밌어요너무재밌어요너무재밌어요너무재밌어요너무재밌어요너무재밌어요너무재밌어요</td>
                        <td>5</td>
                        <td class="like2 on"><img src="${path}/resources/img/like.JPG"></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>리뷰왕</td>
                        <td>너무재밌어요너무재밌어요너무재밌어요너무재밌어요너무재밌어요</td>
                        <td>5</td>
                        <td id="like12" class="on"><img src="${path}/resources/img/like.JPG"></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>리뷰왕</td>
                        <td>너무재밌어요너무재밌어요너무재밌어요너무재밌어요너무재밌어요</td>
                        <td>5</td>
                        <td id="like12" class="on"><img src="${path}/resources/img/like.JPG"></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>리뷰왕</td>
                        <td>너무재밌어요너무재밌어요너무재밌어요너무재밌어요너무재밌어요너무재밌어요너무재밌어요너무재밌어요너무재밌어요너무재밌어요</td>
                        <td>5</td>
                        <td id="like21" class="on"><img src="${path}/resources/img/like.JPG"></td>
                    </tr>
                </table><br>
                <div style="text-align: center; word-spacing: 30px;"><< < 1 2 3 4 5 > >></div>
            </div>
        </div>
    </div>
    <div id="footer">
        푸터영역
    </div>
    <script src="${path}/resources/js/movie_detail.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
</body>
</html>