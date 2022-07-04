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
          main {
            width:100%;
            height:615px;
    }
    
    header {
            width:100%;
            height:80px;
            background: gray;
            opacity:0.5;
    }
    
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
    
    #myInfo {
             position: relative;
             left: 200px;
             top: 140px;
             width:1000px;
             border: 1px solid black;
             text-align:center;
    }
    
    #couponInfo { 
             position: relative;
             left: 200px;
             top: 170px;
             width:1000px;
             border: 1px solid black;
             text-align:center;
    }
    
    #movieTicket {
             position: relative;
             left: 200px;
             top: 200px;
             width: 1000px;
             border: 0.5px solid black;
             border-collapse: collapse;
             text-align:center;
    }
    
    caption {
            text-align: left;
            font-size: 20px;
            font-weight: bold;
    }
    
    th  {
            height:40px;
    }
     
    .tableTh {
             background: linear-gradient( white ,lightblue);
    }
    
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
    
    
      }
    </style>
    <!-- 부트스트랩 -->
    <link href="${CP_RES}/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="${CP_RES}/js/jquery-1.12.4.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="${CP_RES}/js/bootstrap.min.js"></script>
    <!-- jquery_bootstrap paging -->
    <script type="text/javascript" src="${CP_RES}/js/jquery.bootpag.js"></script>
     <!-- 사용자 정의 function, ISEmpty -->
    <script src="${CP_RES}/js/eUtil.js"></script>
    <!-- 사용자 정의 function, callAjax -->
    <script src="${CP_RES}/js/eclass.js"></script>
    <!--자바스크립트 코드-->
    <script type="text/javascript">
    $(document).ready(function(){
        $(document).on("click","#moCancle", function(){
        	if(!confirm('영화를 취소하시겠습니까?')){
                return false;
            }
            location.href = "/miss/pay/payCancle.do?mbNum=" + sessionStorage.getItem("mbNum")+"&mvNum="+sessionStorage.getItem("mvNum");
            })
        });
    
    $(document).ready(function(){
    $(document).on("click","#moviePage", function(){
        location.href = "/miss/movie/screen.do?mvNum=" + sessionStorage.getItem("mvNum")+"&miQuality=" + sessionStorage.getItem("miQuality");
        sessionStorage.removeItem('mvNum');
        sessionStorage.removeItem('miQuality');
        })
    });
    
        
    </script>
</head>
<body>
    <!-- 헤더영역 -->
    <%@include file="../cmn/header.jsp"%>
    <!-- //헤더영역 -->
    ${list}
    ${couList}
    ${memberIn}
     <div style="width:320px;">
        <div class="achieve" style="float:left;">내 등급:  ${memberIn.mbGrade}</div>
        <div class="achieve" style="float:right;">내 포인트: ${memberIn.mbPoint}</div>
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
            <td>${memberIn.mbName}</td>
            <td>${memberIn.mbNickname}</td>
            <td>${memberIn.mbEmail}</td>
            <td>${memberIn.mbBirth}</td>
            <td>${memberIn.mbTel}</td>
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
      <c:choose>
         <c:when test="${couList.size() > 0}">
           <c:forEach var="couList" items="${couList}">
        <tr>  
            <td>${couList.cName}</td>
            <td>${couList.cRatio}</td>
            <td>${couList.cNum}</td>
            <td>${couList.cKind}</td>
        </tr>    
          </c:forEach>
        </c:when>
         <c:otherwise>
          <tr>
              <td colspan="99">결제내역이 없습니다.</td>
          </tr>
         </c:otherwise>
     </c:choose>
    </table>
    
 
   <table id="movieTicket">  
   <caption>구매 목록</caption>
     <thead>
        <tr class="tableTh">
            <th width="100px">예매상태</th> 
            <th width="300px">상영일시</th>
            <th width="500px">영화명</th>
            <th width="300px">예매번호</th>
            <th width="80px">영화보기</th>
            <th width="80px">예매취소</th>
        </tr>
     </thead>
        <c:choose>
                    <c:when test="${list.size() > 0}">
                        <c:forEach var="list" items="${list}">
                             <tr>
                              <td>${list.tStatus}</td>
                              <td>${list.miTime}</td>
                              <td>${list.mvTitle}</td>
                              <td>${list.mvNum}</td>
                              <td><button id="moviePage" onclick="sessionStorage.setItem('mvNum','${list.mvNum}') & sessionStorage.setItem('miQuality','${list.miQuality}');">영화보기</button></td>
                              <td><button id="moCancle">결제취소</button></td>
                              <td style="display:none;">${list.miQuality}</td>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <tr>
                            <td colspan="99">결제내역이 없습니다.</td>
                        </tr>
                    </c:otherwise>
                </c:choose>

</table>
    
    <!-- 푸터영역 -->
    
    <!-- //푸터영역 -->
</body>
</html>