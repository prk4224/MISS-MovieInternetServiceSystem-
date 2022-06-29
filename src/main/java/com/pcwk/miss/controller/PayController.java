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

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.domain.TicketVO;
import com.pcwk.miss.pay.KakaoPay;
import com.pcwk.miss.pay.dao.PayDao;
import com.pcwk.miss.pay.domain.ReserveVO;
import com.pcwk.miss.pay.service.PayService;



/**
 * @author ITSC
 *
 */
@Controller
@RequestMapping("pay")
public class PayController {
	
	public PayController() {}
	
	final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	PayService payService;
	
	
	
	@RequestMapping(value = "/reserve.do", method=RequestMethod.GET)
	public String reserveView(Model model) throws SQLException {
		LOG.debug("==================");
		LOG.debug("=PayController=reserveView()=");
		LOG.debug("==================");
		List<ReserveVO> list = payService.getMovieOn();
		ReserveVO inVO = new ReserveVO(list.get(2).getMvNum(), "", "", 1080);
		List<ReserveVO> timeList = payService.getMovieTime(inVO);
		
		model.addAttribute("list", list);
		model.addAttribute("timeList", timeList);
		
		return "pay/reserve";
	}
	
	@RequestMapping(value = "/paying.do")
	public String payView(MemberVO mInVo, CouponVO cInVO, Model model) throws SQLException {
		LOG.debug("==================");
		LOG.debug("=PayController=payView()=");
		LOG.debug("==================");
		
		List<CouponVO> coulist = payService.couponRetrieve(cInVO);
		mInVo = new MemberVO(2,"이메일","회원이름","전화번호", "생월일","닉네임", 1, 5000);
		
		int point = payService.pointValue(mInVo);
		
		
		model.addAttribute("list", coulist);
		model.addAttribute("point", point);
		
		
		return "pay/paypage";
	}
	
	@RequestMapping(value = "/paycom.do")
	public String paycomView(@RequestParam("pg_token") String pg_token, Model model) throws SQLException {
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
        
        TicketVO outVO = new TicketVO(pg_token, 2, 7000, 2, "SYSDATE", 1, 3);
        
        payService.ticketInsert(outVO);
		
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
