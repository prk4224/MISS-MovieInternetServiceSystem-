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
    <title>MISS, 최신 영화를 집에서</title>
    <link rel="shortcut icon" type="image/x-icon" href="${CP}/favicon.ico">
    <!--스타일 시트 -->
    <style type="text/css">
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
    .main_box {
            width: 900px;
            height: 300px;
            margin-right: auto;
            margin-left: auto;
            margin-top: 100px;
            padding: 20px;
            border:none;
            border-radius:8px;
            font-family: 'NEXON Lv1 Gothic OTF';
    }
    

    .main_top {
           display:flex;
     }
    
    .main_top_left {
            width:50%;
            height:50%;        
            padding-left:1%;
            padding-top:2%;
            float:left;
    }
    
    .main_top_right {
           width:50%;
           height:50%;
           margin-left:20%;
    }
    
    .main_bottom_left {
            width:50%;
            height:60%;
            padding-top:2%;
            float:left;
    }
    
    
    .main_bottom_right {
            width:50%;
            height:60%;
            padding-left:1%;
            padding-top:2%;
            float:right;
    }
      
    #couponInfo { 
             margin-right: auto;
             margin-left: auto;
             margin-top: 60px;
             width:900px;
             text-align:center;
             border-collapse:collapse;
             font-family: 'NEXON Lv1 Gothic OTF';
    }
    
    #movieTicket {
             margin-right: auto;
             margin-left: auto;
             margin-top: 50px;
             margin-bottom: 100px;
             width: 900px;
             border-collapse: collapse;
             text-align:center;
             font-family: 'NEXON Lv1 Gothic OTF';
    }
    
    .subtitle {
            text-align: left;
            font-size: 20px;
            font-weight: bold;
            color:#13338B;
    }
    thead{
    height:40px;
            background:  lightgray;
              font-weight: 900; 
    font-size: 17px;
    }
    td  {
         text-align : center;
            
    }
     
    
    
    .cancle{
              width: 70px;  
              text-align: center;
              height: 30px;
              border: 1px solid grey;  
              cursor:pointer; 
              background-color: light grey;  
              border-radius: 12px;
              float: left;
    }
    
    
    #moviePage{
    
        text-align: center;
        border: solid 1px lightgray;
        font-family: 'NEXON Lv1 Gothic OTF';
        color:white;
        background-color : #13338B;
        font-weight: 700; 
    }  
     #moviePage:hover{
        background-color : #1e50d9;
         
    }  
       #moCancle{
    
        text-align: center;
        border: solid 1px lightgray;
        font-family: 'NEXON Lv1 Gothic OTF';
        color:white;
        background-color : #13338B;
        font-weight: 700; 
    }  
     #moCancle:hover{
        background-color : #1e50d9;
         
    } 
    #CancleComp{
        font-weight: 700;   
        font-family: 'NEXON Lv1 Gothic OTF';
        color:#13338B;
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
//          let tNum = $(this).parent().parent().children(2).eq(3).text()
//          console.log("tNum : " + tNum);
            if(!confirm('결제를 취소하시겠습니까?')){
                return;
            }
                let tNum = $(this).parent().parent().children(2).eq(3).text();
                 let url = "${CP}/pay/kakaoPayCancle.do";
                 let method = "POST";
                 let async = true;
                 let parameters ={
                         tNum : tNum,
                         tPrice : $(this).parent().parent().children(2).eq(8).text()
                 }
                 console.log("tNum : " + $(this).parent().parent().children(2).eq(3).text());
                 console.log("tPrice : " + $(this).parent().parent().children(2).eq(8).text());
                 EClass.callAjax(url, parameters, method, async, function(data) {
                     console.log("================1=============");
                 })
                 console.log("================2=============");
                 tcUpdate(tNum);
                 location.href = "/miss/mypage/historyView.do?mbNum=" + sessionStorage.getItem("mbNum")
                 })
        
        });
    function tcUpdate(tNum){
        let url = "${CP}/mypage/updateTicket.do";
        let method = "POST";
        let async = true;
        let parameters = {
            tNum : tNum                   
        }
        console.log("tNum : " + tNum);      
        
        EClass.callAjax(url, parameters, method, async, function(data) {
             console.log("data : " + data);                              
        });    
   }
    
    
    //현재시간
    var Now = new Date(); 
    var nowYear = Now.getFullYear(); 
    var nowMonth = Now.getMonth() +1; 
    var nowDay = Now.getDate(); 
    var nowHour = Now.getHours();
    var nowMins = Now.getMinutes();
    
    nowMonth = pluszero(nowMonth);
    nowDay = pluszero(nowDay);
    nowHour = pluszero(nowHour);
    nowMins = pluszero(nowMins);
    
    var nowDate= nowYear + nowMonth + nowDay;
    console.log(nowDate);
    var whatTime = nowHour+nowMins+'00';
    console.log(nowHour);
    console.log(nowMins);
    console.log(whatTime);
    var bfNowTime = nowDate + whatTime;
    var nowTime = parseInt(bfNowTime);
    console.log("==================");
    console.log("nowTime====="+ nowTime);
  
    
    console.log(typeof nowTime);
  
    function pluszero(time){
    var time = time.toString(); // 시간을 숫자에서 문자로 바꿈
    if(time.length < 2){ //2자리 보다 작다면
        time = '0' + time; //숫자앞 0을 붙여줌
        return time; //값을 내보냄
}else{
        return time; //2자리라면 값을 내보냄
 }
}
    //-현재 시간
    
    
    //영화보기 버튼
    
    $(document).ready(function(){
    $(document).on("click","#moviePage", function(){
        //시간
        miTimeF=sessionStorage.getItem('miTime');
        console.log(miTimeF);
        miTimeS=miTimeF.replace("-","").replace("-","").replace(" ","").replace(":","").replace(":","");
        console.log(miTimeS);
        var movieTime = parseInt(miTimeS);

        console.log(typeof movieTime);
      
        if(nowTime < (movieTime-10000) || nowTime>(movieTime+10000)){
            alert('관람 시간이 아닙니다.');
            sessionStorage.removeItem('miTime');    
          } else{
//         location.href = "/miss/movie/screen.do?mvNum=" + sessionStorage.getItem("mvNum")+"&miQuality=" + sessionStorage.getItem("miQuality");
        location.href = "/miss/movie/movieLoading.do?mvNum=" + sessionStorage.getItem("mvNum")+"&miQuality=" + sessionStorage.getItem("miQuality");
        sessionStorage.removeItem('mvNum');
        sessionStorage.removeItem('miQuality');
        sessionStorage.removeItem('miTime');
          }
          
        //이동
        })
    });
    
    
    
        
    </script>
</head>
<body style="background:#E9E9E9;">
    <!-- 헤더영역 -->
    <%@include file="../cmn/header.jsp"%>
    <!-- //헤더영역 -->

    <div class="main_box" style="background:linear-gradient(#fafafa 50%, lightgray 50%);">
        <div class="main_top">
        <div class="main_top_Left">
            <p style="font-size:30px;">
                <span style="color:#13338B;">${memberIn.mbName}</span>&nbsp;님은<br>
                <span style="color:#13338B;">
                  <c:choose>
                     <c:when test="${memberIn.mbGrade == 1}">
                                                    실버                     
                     </c:when>
                     <c:when test="${memberIn.mbGrade == 2}">
                                                    골드
                     </c:when>
                     <c:when test="${memberIn.mbGrade == 3}">
                                                    플래티넘
                     </c:when>
                     <c:otherwise>
                                                    다이아
                   </c:otherwise>
                  </c:choose>
                </span>
                등급입니다.
            </p>
            </div>
            <div class="main_top_right">
           <c:choose>
                     <c:when test="${memberIn.mbGrade == 1}">
                                                    
                       <p><img src="${CP_RES}/img/실버.png" style="width:27%"></p>                             
                     </c:when>
                     <c:when test="${memberIn.mbGrade == 2}">
                                                   
                      <p><img src="${CP_RES}/img/골드.png" style="width:27%"></p>
                     </c:when>
                     <c:when test="${memberIn.mbGrade == 3}">
                                                 
                       <p><img src="${CP_RES}/img/플레.png" style="width:27%"></p>   
                     </c:when>
                     <c:otherwise>
                                                 
                      <p><img src="${CP_RES}/img/다이아.png" style="width:27%"></p>
                   </c:otherwise>
                  </c:choose>
                  </div>
        </div>
       <div class="main_bottom">
            <div class="main_bottom_left">
                <br>
                <P style="font-size:20px;">닉네임&emsp;: ${memberIn.mbName}<br>
                                      이메일&emsp;: ${memberIn.mbEmail}<br>
                                      생년월일: ${memberIn.mbBirth}<br>
                                      전화번호: ${memberIn.mbTel}
                </P>
            </div>
            <div class="main_bottom_right">
            <br>
                <p style="font-size:27px;"><br>총 보유 포인트&emsp;  <span style="color:#13338B;">${memberIn.mbPoint}  P</span></p>
                
            </div>
        </div>
    </div>
    
    <table id="couponInfo">
    <caption class="subtitle">나의 쿠폰 정보</caption>
     <thead>
        <tr class="tableTh">
            <td width="200px">쿠폰명</td>
            <td width="100px">할인율</td>
            <td width="300px">쿠폰번호</td>
            <td width="100px">사용여부</td>
        </tr>
     </thead>
      <c:choose>
         <c:when test="${couList.size() > 0}">
           <c:forEach var="couList" items="${couList}">
        <tr>  
            <td>${couList.cName}</td>
            <td>${couList.cRatio}%</td>
            <td>${couList.cNum}</td>
<%--             <td>${couList.cKind} </td> --%>
<%--             <td>${couList.cTarge} </td> --%>
            <td>
                <c:choose>
                 <c:when test="${couList.cKind == 1}">
                                                               사용가능   
               </c:when>
                <c:otherwise>
                                           사용완료
             </c:otherwise>
         </c:choose></td>
        </tr>    
          </c:forEach>
        </c:when>
         <c:otherwise>
          <tr>
              <td colspan="99">쿠폰내역이 없습니다.</td>
          </tr>
         </c:otherwise>
     </c:choose>
    </table>
    
 
   <table id="movieTicket">  
   <caption class="subtitle">나의 무비티켓</caption>
     <thead>
        <tr class="tableTh">
            <td>예매상태</td> 
            <td>상영일시</td>
            <td>영화명</td>
            <td>예매번호</td>
            <td>영화보기</td>
            <td>예매취소</td>
        </tr>
     </thead>
                    <c:choose>
                        <c:when test="${list.size() > 0}">
                            <c:forEach var="list" items="${list}">
                            <tr>
                                    <td>
                               <c:set var="tStatus" value="${list.tStatus}"/>
                              <c:choose>
                                        <c:when test="${tStatus == 1}">
                                                                                             예매 완료       
                                        </c:when>
                                        <c:otherwise>
                                                                                                  예매 취소
                                      </c:otherwise>
                                     </c:choose>
                                  </td>
                               <td>${list.miTime}</td>
                               <td>${list.mvTitle}</td>
                               <td id="tNum">${list.tNum}</td>
                               <td>
                                <c:choose>
                                        <c:when test="${tStatus == 1}">
                               <button id="moviePage" onclick="sessionStorage.setItem('mvNum','${list.mvNum}') & sessionStorage.setItem('miQuality','${list.miQuality}')& sessionStorage.setItem('miTime','${list.miTime}');">
                                                                       영화보기</button>                                               
                                        </c:when>
                                       <c:otherwise>
                                          <div id="CancleComp">예매 취소</div>
                                      </c:otherwise>
                                   </c:choose>
                                               
                               </td>
                               <td>
                                  <c:choose>
                                        <c:when test="${tStatus == 1}">
                                           <button id="moCancle">결제 취소</button>       
                                        </c:when>
                                       <c:otherwise>
                                          <div id="CancleComp">취소 완료</div>
                                      </c:otherwise>
                                   </c:choose>
                               </td>
                               <td style="display:none;">${list.miQuality}</td>
                               <td style="display:none;">${list.tStatus}</td>
                               <td style="display:none;" id="tPrice">${list.tPrice}</td>
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
		<%@include file="../cmn/footer.jsp"%>
		<!-- //푸터영역 -->
</body>
</html>