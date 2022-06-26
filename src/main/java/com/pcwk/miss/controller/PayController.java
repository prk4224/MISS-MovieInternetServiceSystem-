/**
* <pre>
* com.pcwk.miss.controller
* Class Name : PayController.java
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
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pcwk.miss.pay.KakaoPay;



/**
 * @author ITSC
 *
 */
@Controller
@RequestMapping("pay")
public class PayController {
	
	public PayController() {}
	
	final Logger LOG = LogManager.getLogger(getClass());
	
	@RequestMapping(value = "/reserve.do")
	public String reserveView() {
		LOG.debug("==================");
		LOG.debug("=PayController=reserveView()=");
		LOG.debug("==================");
		return "pay/reserve";
	}
	
	@RequestMapping(value = "/paying.do")
	public String payView() {
		LOG.debug("==================");
		LOG.debug("=PayController=payView()=");
		LOG.debug("==================");
		return "pay/paypage";
	}
	
	@RequestMapping(value = "/paycom.do")
	public String paycomView(@RequestParam("pg_token") String pg_token, Model model) {
		LOG.debug("==================");
		LOG.debug("=PayController=paycomView()=");
		LOG.debug("==================");
		
		LOG.debug("kakaoPaySuccess get............................................");
    	LOG.debug("kakaoPaySuccess pg_token : " + pg_token);
        
    	model.addAttribute("token", pg_token);
    	model.addAttribute("m_agelim", "15세");
    	model.addAttribute("m_title", "마녀(魔女) Part2. The Other One");
    	model.addAttribute("m_director", "박훈정");
    	model.addAttribute("m_actor", "신시아, 박은빈, 서은수, 김다미");
    	model.addAttribute("m_time", "2022-06-27 17:00");
    	model.addAttribute("m_price", "7,000");
    	
        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));
		
		return "pay/paycomplate";
	}
	
	@Autowired
    private KakaoPay kakaopay;
    
    
    @GetMapping("/kakaoPay.do")
    public void kakaoPayGet() {
        
    }
    
    @PostMapping("/kakaoPay.do")
    public String kakaoPay() {
        LOG.debug("kakaoPay post............................................");
        
        return "redirect:" + kakaopay.kakaoPayReady();
 
    }
    
//    @GetMapping("/kakaoPaySuccess")
//    public void kakaoPaySuccess{
//    	
//        
//    }
}
