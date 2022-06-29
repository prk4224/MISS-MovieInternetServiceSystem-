/**
 * 세션이 만료되었으면 바로 로그인페이지로 이동하는 파일
 */

$(document).ready(function(){
	console.log("체크세션~~");
	if(sessionStorage.getItem("accessToken") == null || sessionStorage.getItem("mbEmail") == null){
    	alert("잘못된 경로입니다! 로그인 해주세요~")
    	location.href = "/miss/login/login.do";
    }
});