<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CP" value="${pageContext.request.contextPath}"/>
<c:set var="resources" value="/resources"/>
<c:set var="CP_RES" value="${CP}${resources}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
    rel="stylesheet" id="bootstrap-css">
<link
    href="https://fonts.googleapis.com/css?family=Poppins:400,400i,500,500i,600&display=swap"
    rel="stylesheet">
<link rel='stylesheet' href='style.css'>
<style class="MOVIE LIST">
header {
    position: relative;
    height: 180px;
    line-height: 180px;
    text-align: center;
    background-color: gray;
}
header h1 {
    color: #ffffff;
    font-size: 40px;
    font-size: 2rem;
}
body {
    height: 100%;
    width: 100%;
    background: #e9e9e9;
    font-family: 'Poppins', sans-serif;
    font-weight: 400;
    font-size: 14px;
    color: #010b26;
}

* {
    -webkit-transition: 300ms;
    transition: 300ms;
}

.intro {
    text-align: center;
}

ul {
    list-style-type: none;
}

h2, p {
    font-weight: 400;
}

h3 {
    font-size: 14px;
}

a {
    text-decoration: none;
    color: inherit;
}

a:hover {
    color: #6ABCEA;
}

.container {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    max-width: 100%;
    margin-left: auto;
    margin-right: auto;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
}

.movie_list {
    margin-top: 5rem;
    padding-left: 4rem !important;
}

.card-view {
    background: #ffffff;
    box-shadow: 0px 6px 18px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 300px;
    margin: 2em;
    border-radius: 10px;
    display: inline-block;
}

.card-header {
    padding: 0;
    margin: 0;
    height: 400px;
    width: 100%;
    display: block;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
}

.spiderman {
/*     background-image: */
/*         url("https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84949/84949_1000.jpg"); */
    background-size: cover;
}

.sinkHole {
/*     background: */
/*         url("https://img.cgv.co.kr/Movie/Thumbnail/Poster/000084/84787/84787_1000.jpg"); */
    background-size: cover;
}

.lightYear {
/*     background: */
/*         url("https://img.cgv.co.kr/Movie/Thumbnail/StillCut/000085/85977/85977203683_727.jpg"); */
    background-size: cover;
}

.topGun {
/*     background: */
/*         url("https://img.cgv.co.kr/Movie/Thumbnail/Poster/000082/82120/82120_1000.jpg"); */
    background-size: cover;
}

.header-icon {
    width: 100%;
    height: 367px;
    line-height: 367px;
    text-align: center;
    vertical-align: middle;
    margin: 0 auto;
    color: #ffffff;
    font-size: 54px;
    text-shadow: 0px 0px 20px #6abcea, 0px 5px 20px #6ABCEA;
    opacity: .85;
}

.header-icon:hover {
    background: rgba(0, 0, 0, 0.15);
    font-size: 74px;
    text-shadow: 0px 0px 20px #6abcea, 0px 5px 30px #6ABCEA;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    opacity: 1;
}

.card-view:hover {
    -webkit-transform: scale(1.03);
    transform: scale(1.03);
    box-shadow: 0px 10px 25px rgba(0, 0, 0, 0.08);
}

.card-movie-content {
    padding: 18px 18px 24px 18px;
    margin: 0;
}

.card-movie-content-head, .card-movie-info {
    display: table;
    width: 100%;
}

.card-movie-title {
    font-size: 18px;
    margin: 0;
    display: table-cell;
}

.ratings {
    width: 50px;
    height: 15px;
    background-size: contain;
    display: table-cell;
    text-align: right;
    position: relative;
    margin-top: 5px;
    font-weight: 600;
}

.ratings span {
    color: #2196F3;
}

.card-movie-info {
    margin-top: 1em;
}

.movie-running-time {
    display: table-cell;
    text-transform: uppercase;
    text-align: center;
}

.movie-running-time:first-of-type {
    text-align: left;
}

.movie-running-time:last-of-type {
    text-align: right;
}

.movie-running-time label {
    display: block;
    color: rgba(0, 0, 0, 0.5);
    margin-bottom: .5em;
    font-size: 9px;
}

.movie-running-time span {
    font-weight: 700;
    font-size: 11px;
}

@media 장르 and (max-width: 500px) {
    .card-view {
        width: 95%;
        max-width: 95%;
        margin: 1em;
        display: block;
    }
    .container {
        padding: 0;
        margin: 0;
    }
}
</style>
</head>

<body>
    <!-- 헤더영역 -->
    <%@include file="../cmn/header.jsp"%>
    <!-- //헤더영역 -->
    <div class="container p-0">
        <div class="container-fluid">
            <div class="row">
                <main role="main"
                    class="col-md-9 ml-sm-auto col-lg-10 px-4 movie_list">
                    <div class="pt-8 pb-2 mb-3 border-bottom">
                        <div class="row">
                            <h2>상영예정</h2>
                        </div>
                        <div class="row">
                            <c:choose>
                                <c:when test="${list2.size() > 0}">
                                    <c:forEach var="list2" items = "${list2}">
                                        <div class="card-view">
			                                <div class="card-header spiderman" style="background-image:url(${list2.imRoute});"></div>
			                                <div class="card-movie-content">
			                                    <div class="card-movie-content-head">
			                                        <a href="#">
			                                            <h3 class="card-movie-title">${list2.mvTitle}</h3>
			                                        </a>
			                                        <div class="ratings">
			                                            <span>${list2.num}</span>/5
			                                        </div>
			                                    </div>
			                                    <div class="card-movie-info">
			                                        <div class="movie-running-time">
			                                            <label>감독</label> <span>${list2.mvDirector}</span>
			                                        </div>
			                                        <div class="movie-running-time">
			                                            <label>장르</label> <span>${list2.mvReleased}</span>
			                                        </div>
			                                    </div>
			                                </div>
			                            </div>
                                    </c:forEach>
                                </c:when>
                            </c:choose>
                            </div>
                    </div>

                </main>
            </div>
        </div>
<div class="container-fluid">
            <div class="row">
                <main role="main"
                    class="col-md-9 ml-sm-auto col-lg-10 px-4 movie_list">
                    <div class="pt-8 pb-2 mb-3 border-bottom">
                        <div class="row">
                            <h2>상영종료</h2>
                        </div>
                      <div class="row">
                            <c:choose>
                                <c:when test="${list0.size() > 0}">
                                    <c:forEach var="list0" items = "${list0}">
                                        <div class="card-view">
                                            <div class="card-header spiderman" style="background-image:url(${list0.imRoute});"></div>
                                            <div class="card-movie-content">
                                                <div class="card-movie-content-head">
                                                    <a href="#">
                                                        <h3 class="card-movie-title">${list0.mvTitle}</h3>
                                                    </a>
                                                    <div class="ratings">
                                                        <span>${list0.num}</span>/5
                                                    </div>
                                                </div>
                                                <div class="card-movie-info">
                                                    <div class="movie-running-time">
                                                        <label>감독</label> <span>${list0.mvDirector}</span>
                                                    </div>
                                                    <div class="movie-running-time">
                                                        <label>장르</label> <span>${list0.mvReleased}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:when>
                            </c:choose>
                            </div>
                          </div>
                            <!-- Movie Card End -->
                </main>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <main role="main"
                    class="col-md-9 ml-sm-auto col-lg-10 px-4 movie_list">
                    <div class="pt-8 pb-2 mb-3 border-bottom">
                        <div class="row">
                            <h2>상영중</h2>
                        </div>
                        <div class="row">
                            <c:choose>
                                <c:when test="${list1.size() > 0}">
                                    <c:forEach var="list1" items = "${list1}">
                                        <div class="card-view">
                                            <div class="card-header spiderman" style="background-image:url(${list1.imRoute});"></div>
                                            <div class="card-movie-content">
                                                <div class="card-movie-content-head">
                                                    <a href="#">
                                                        <h3 class="card-movie-title">${list1.mvTitle}</h3>
                                                    </a>
                                                    <div class="ratings">
                                                        <span>${list1.num}</span>/5
                                                    </div>
                                                </div>
                                                <div class="card-movie-info">
                                                    <div class="movie-running-time">
                                                        <label>감독</label> <span>${list1.mvDirector}</span>
                                                    </div>
                                                    <div class="movie-running-time">
                                                        <label>장르</label> <span>${list1.mvReleased}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:when>
                            </c:choose>
                            </div>
                    </div>

                </main>
            </div>
        </div>
    </div>
    <!-- 푸터영역 -->
    <%@include file="../cmn/footer.jsp"%>
    <!-- //푸터영역 -->

</body>
</html>