/**
* <pre>
* com.pcwk.miss.controller
* Class Name : MypageController.java
* Description:
* Author: ITSC
* Since: 2022/06/24
* Version 0.1
* Copyright (C) by KandJang All right reserved.
* Modification Information
* 수정일   수정자    수정내용
*-----------------------------------------------------
*2022/06/24 최초생성
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
@Controller("mypageController")
@RequestMapping("mypage")
public class MypageController {
	final Logger LOG = LogManager.getLogger(this.getClass());
	
	public MypageController() {
		
	}
	
	@RequestMapping(value="/history.do")
	public String historyView() {
		System.out.println("===================");
		System.out.println("=MypageController=historyView()=");
		System.out.println("===================");
		
		return "mypage/history";
	}
}
