<%--
/**
	Class Name: register.jsp
	Description: 회원가입 페이지
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
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
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
	<!--스타일 시트 -->
	<style type="text/css">
	@font-face {
	    font-family: 'NEXON Lv1 Gothic OTF';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	html {
	    height: 100%;
	}
	
	body {
	    font-family: 'NEXON Lv1 Gothic OTF';
	    margin: 0;
	    height: 100%;
	    background: #E9E9E9;
	}
	
	#wrapper {
	    position: relative;
	    height: 100%;
	}
	
	#content {
	    position: absolute;
	    left: 50%;
	    transform: translate(-50%);
	    width: 460px;
	}
	
	h3 {
	    margin: 19px 0 8px;
	    font-size: 14px;
	    font-weight: 700;
	}
	
	
	.box {
	    display: block;
	    width: 100%;
	    height: 51px;
	    border: solid 1px #dadada;
	    padding: 10px 14px 10px 14px;
	    box-sizing: border-box;
	    background: #fff;
	    position: relative;
	}
	
	.int {
	    display: block;
	    position: relative;
	    width: 100%;
	    height: 29px;
	    border: none;
	    background: #fff;
	    font-size: 15px;
	}
	
	.box.int_id {
	    padding-right: 110px;
	}
	
	.box.int_pass {
	    padding-right: 40px;
	}
	
	.box.int_pass_check {
	    padding-right: 40px;
	}
	
	.step_url {
	    /*@naver.com*/
	    position: absolute;
	    top: 16px;
	    right: 13px;
	    font-size: 15px;
	    color: #8e8e8e;
	}
	
	#bir_wrap {
	    display: table;
	    width: 100%;
	}
	
	#bir_yy {
	    display: table-cell;
	    width: 147px;
	    
	}
	
	#bir_mm {
	    display: table-cell;
	    width: 147px;
	    vertical-align: middle;
	}
	
	#bir_dd {
	    display: table-cell;
	    width: 147px;
	}
	
	#bir_mm, #bir_dd {
	    padding-left: 10px;
	}
	
	select {
	    width: 100%;
	    height: 29px;
	    font-size: 15px;
	    background: #fff url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100% 50% no-repeat;
	    background-size: 20px 8px;
	    -webkit-appearance: none;
	    display: inline-block;
	    text-align: start;
	    border: none;
	    cursor: default;
	    
	}
	
	/* 버튼 */
	
	.btn_area {
	    margin: 30px 0 91px;
	}
	
	#doInsert {
	    width: 100%;
	    padding: 21px 0 17px;
	    border: 0;
	    cursor: pointer;
	    color: #fff;
	    background-color: #13338B;
	    font-size: 20px;
	    font-weight: 400;
	    
	}
	</style>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#doInsert').on("click", function(){
				console.log("join");
				if(eUtil.ISEmpty($("#mbName").val())){
					alert("이름을 입력하세요.");
					$("#mbName").focus();
					return;
				};
				if(eUtil.ISEmpty($("#mbNickname").val())){
					alert("닉네임을 입력하세요.");
					$("#mbNickname").focus();
					return;
				};
				if(eUtil.ISEmpty($("#mbBirthYear").val())){
					alert("생년월일을 입력하세요.");
					$("#mbBirthYear").focus();
					return;
				};
				if($("#mbBirthYear").val() == "년(4자)"){
					alert("생년월일을 입력하세요.");
					$("#mbBirthYear").focus();
					return;
				};
				<!-- Member테이블에 데이터 INSERT -->
				let url = "${CP}/login/doInsert.do";
				let method = "POST";
				let parameters = {
						"mbEmail" : "${param.email}",
						"mbName" : $("#mbName").val(),
						"mbNickname" : $("#mbNickname").val(),
						"mbBirth" : $("#mbBirthYear").val() + "/" + $("#mbBirthMonth").val() + "/" + $("#mbBirthDay").val(),
						"mbTel" : $("#mbTel").val()
				};
				let async = true;
				EClass.callAjax(url, parameters, method, async, function(data){
					console.log(parameters);
					console.log("data.msgId : " + data.msgId);
	                console.log("data.msgContents : " + data.msgContents);
	                if(data.msgId == "1"){ //회원가입 성공
	                	alert("테스트 - 회원가입성공");
	                	emailToNum("${param.email}");
	                	alert(data.msgContents);
	                    location.href = "/miss/movie/main.do";
	                }else{
	                    alert(data.msgContents);
	                }
				});
				<!--// Member테이블에 데이터 INSERT -->
			});
			<!-- API에서 받아온 EMAIL값으로 NUM값 가져오기 -->
			function emailToNum(mbEmail){
				alert("emailToNum");
				let url = "${CP}/login/emailToNum.do";
				let method = "GET";
				let async = true;
				let parameters = {
						"mbEmail" : mbEmail
				};
				EClass.callAjax(url, parameters, method, async, function(data) {
					sessionStorage.setItem("mbNum", data.mbNum);
					sessionStorage.setItem("mbNickname", data.mbNickname);
					alert("테스트 - emailToNum");
					alert(data.mbNum);
					registerCoupon(data.mbNum);
				});
			}
			<!--// API에서 받아온 EMAIL값으로 NUM값 가져오기 -->
			
			<!-- 신규회원의 경우 신규회원가입쿠폰 지급 -->
			function registerCoupon(mbNum){
				alert("registerCoupon");
				let url = "${CP}/login/registerCoupon.do";
				let method = "GET";
				let async = true;
				let parameters = {
						"mbNum" : mbNum
				};
				EClass.callAjax(url, parameters, method, async, function(data) {
					if(data.msgId == "1"){
						alert(data.msgContents);
						alert("테스트 - registerCoupon");
					}else{
						alert(data.msgContents);
					}
				})
			}
			<!--// 신규회원의 경우 신규회원가입쿠폰 지급 -->
		});
	</script>
</head>
<body>
    <!-- wrapper -->
    <div id="wrapper">
        <!-- content-->
        <div id="content">
            <!-- EMAIL -->
            <div>
                <h3 class="join_title"><label for="mbEmail">이메일</label></h3>
                <span class="box int_email">
                    <input type="text" name="mbEmail" id="mbEmail" class="int" maxlength="100" readonly placeholder="${param.email}">
                </span>    
            </div>
            <!-- NAME -->
            <div>
                <h3 class="join_title"><label for="mbName">이름</label></h3>
                <span class="box int_name">
                    <input type="text" id="mbName" name="mbName" class="int" maxlength="3">
                </span>
            </div>
            <!-- NICKNAME -->
            <div>
                <h3 class="join_title"><label for="mbNickname">닉네임</label></h3>
                <span class="box int_name">
                    <input type="text" id="mbNickname" name="mbNickname" class="int" maxlength="10" placeholder="10자 이내">
                </span>
            </div>
            <!-- BIRTH -->
            <div>
                <h3 class="join_title"><label for="mbBirth">생년월일</label></h3>
                <div id="bir_wrap">
                    <!-- BIRTH_YY -->
                    <div id="bir_yy">
                        <span class="box">
                            <input type="text" id="mbBirthYear" name="mbBirthYear" class="int" maxlength="4" placeholder="년(4자)">
                        </span>
                    </div>
                    <!-- BIRTH_MM -->
                    <div id="bir_mm">
                        <span class="box">
                            <select id="mbBirthMonth" name="mbBirthMonth" class="sel">
                                <option>월</option>
                                <option value="01">1</option>
                                <option value="02">2</option>
                                <option value="03">3</option>
                                <option value="04">4</option>
                                <option value="05">5</option>
                                <option value="06">6</option>
                                <option value="07">7</option>
                                <option value="08">8</option>
                                <option value="09">9</option>                                    
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                        </span>
                    </div>
                    <!-- BIRTH_DD -->
                    <div id="bir_dd">
                        <span class="box">
                            <input type="text" id="mbBirthDay" name="mbBirthDay" class="int" maxlength="2" placeholder="일">
                        </span>
                    </div>
                </div>   
            </div>
            <!-- MOBILE -->
            <div>
                <h3 class="join_title"><label for="mbTel">휴대전화</label></h3>
                <span class="box int_mobile">
                    <input type="tel" id="mbTel" name="mbTel" class="int" maxlength="11" placeholder="전화번호 입력(Ex.01012345678)">
                </span>   
            </div>
            <!-- JOIN BTN-->
            <div class="btn_area">
                <button type="button" id="doInsert">
                    <span>가입하기</span>
                </button>
            </div>
        </div> 
    </div> 
</body>
</html>