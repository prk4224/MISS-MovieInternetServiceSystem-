/**
* <pre>
* com.pcwk.miss.controller
* Class Name : MemberController.java
* Description:
* Author: ITSC
* Since: 2022/06/20
* Version 0.1
* Copyright (C) by KandJang All right reserved.
* Modification Information
* 수정일   수정자    수정내용
*-----------------------------------------------------
*2022/06/20 최초생성
*-----------------------------------------------------
* </pre>
*/
package com.pcwk.miss.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pcwk.miss.cmn.MessageVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.login.service.LoginService;

/**
 * @author ITSC
 *
 */
@Controller("loginController")
@RequestMapping("login")
public class LoginController {
	final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired
	LoginService loginService;
	
	public LoginController() {
		
	}
	
	@RequestMapping(value = "/existingMember.do", method = RequestMethod.GET
			,produces = "application/json;charset=UTF-8")
	@ResponseBody //스프링에서 비동기 처리를 하는 경우, HTTP 요청의 본문 body부분이 전달된다.
	public String existingMember(@RequestParam("mbEmail") String mbEmail, MemberVO inVO) throws SQLException{
		LOG.debug("==========================");
		LOG.debug("=mbEmail=" + mbEmail);
		LOG.debug("==========================");
		inVO.setMbEmail(mbEmail);
		
		MessageVO message = loginService.existingMember(inVO);
		// 1이면 기존회원
		// 0이면 신규회원
		Gson gson = new Gson();
		String jsonString = "";
		jsonString = gson.toJson(message);
		LOG.debug("====================");
		LOG.debug("=jsonString=" + jsonString);
		LOG.debug("====================");
		return jsonString;
	}
	
	@RequestMapping(value = "/login.do")
	public String loginView() {
		System.out.println("===================");
		System.out.println("=LoginController=loginView()=");
		System.out.println("===================");
		
		return "login/login";
	}
	
	@RequestMapping(value = "/register.do")
	public String registerView() {
		LOG.debug("=========================");
		LOG.debug("=LoginController=registerView()=");
		LOG.debug("=========================");
		
		return "login/register";
	}
	
}
