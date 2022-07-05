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

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;

import com.pcwk.miss.mypage.domain.HistoryVO;
import com.pcwk.miss.mypage.domain.MemberInfoVO;
import com.pcwk.miss.mypage.service.MypageService;

/**
 * @author ITSC
 *
 */
@Controller("mypageController")
@RequestMapping("mypage")
public class MypageController {
	final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired
	MypageService mypageService;
	
	public MypageController() {
		
		}

	@RequestMapping(value = "/historyView.do", method=RequestMethod.GET)
	public String movieDetailView(HttpServletRequest request, Model model,MemberVO inVO) throws SQLException {
		System.out.println("===================");
		System.out.println("=mypageView()=");
		System.out.println("===================");
		LOG.debug("inVO:"+inVO);
		
		
		int mbNum = Integer.parseInt(request.getParameter("mbNum"));
		inVO.setMbNum(mbNum);
		
		
		MemberInfoVO memberIn = mypageService.getMember(inVO);
		List<CouponVO> couList = mypageService.getCoupon(inVO);
		List<HistoryVO> list = mypageService.ticketRetrieve(inVO);
		
		model.addAttribute("memberIn", memberIn);
		model.addAttribute("couList", couList);
		model.addAttribute("list",list);
	
		
		
		return "mypage/history"; 
}
}
