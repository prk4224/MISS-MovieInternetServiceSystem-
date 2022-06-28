/**
* <pre>
* com.pcwk.miss.controller
* Class Name : FaqController.java
* Description:
* Author: ITSC
* Since: 2022/06/27
* Version 0.1
* Copyright (C) by KandJang All right reserved.
* Modification Information
* 수정일   수정자    수정내용
*-----------------------------------------------------
*2022/06/27 최초생성
*-----------------------------------------------------
* </pre>
*/
package com.pcwk.miss.controller;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pcwk.miss.faq.domain.FaqVO;
import com.pcwk.miss.faq.service.FaqService;

/**
 * @author ITSC
 *
 */
@Controller("faqController")
@RequestMapping("faq")
public class FaqController {
	final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired
	FaqService faqService;
	
	public FaqController() {
		
	}
	
	@RequestMapping(value = "/faq.do", method = RequestMethod.GET)
	public String faqView(Model model) {
		LOG.debug("===================");
		LOG.debug("=FaqController=faqView=");
		LOG.debug("===================");
		
		List<FaqVO> list01 = faqService.getFaqList(1);
		List<FaqVO> list02 = faqService.getFaqList(2);
		
		model.addAttribute("list01", list01);
		model.addAttribute("list02", list02);
		
		return "faq/faq";
	}
}
