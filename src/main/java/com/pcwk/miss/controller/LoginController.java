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

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author ITSC
 *
 */
@Controller("loginController")
@RequestMapping("login")
public class LoginController {
	final Logger LOG = LogManager.getLogger(this.getClass());
	
	public LoginController() {
		
	}
	
	@RequestMapping(value = "/login.do")
	public String loginView() {
		System.out.println("===================");
		System.out.println("=LoginController=loginView()=");
		System.out.println("===================");
		
		return "login/login";
	}
}
