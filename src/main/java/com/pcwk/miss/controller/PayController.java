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
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.domain.TicketVO;
import com.google.gson.Gson;
import com.pcwk.miss.domain.ReviewVO;
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
	
	@RequestMapping(value = "/getMovieTime.do", method = RequestMethod.GET
			, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String getMovieTime(ReserveVO inVO) throws SQLException{
		String jsonString = "";
		LOG.debug("====================");
		LOG.debug("=inVO=" + inVO);
		LOG.debug("====================");
		
		List<ReserveVO> list = payService.getMovieTime(inVO);
		Gson gson = new Gson();
		jsonString = gson.toJson(list);
		
		LOG.debug("====================");
		LOG.debug("=jsonString=" + jsonString);
		LOG.debug("====================");
		
		return jsonString;
	}
	
	@RequestMapping(value = "/reserve.do", method=RequestMethod.GET)
	public String reserveView(Model model) throws SQLException {
		LOG.debug("==================");
		LOG.debug("=PayController=reserveView()=");
		LOG.debug("==================");
		List<ReserveVO> list = payService.getMovieOn();
		ReserveVO inVO = new ReserveVO(list.get(0).getMvNum(), "", "", 0);
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
		
		cInVO = new CouponVO(1,1,"생일 쿠폰", "날짜_미정", 1, 30, 0);
		
		mInVo = new MemberVO(2,"이메일","회원이름","전화번호", "생월일","닉네임", 1, 5000);
		
		//List<CouponVO> coulist = payService.couponRetrieve(cInVO);
		List<CouponVO> coulist = null;
		
		LOG.debug("==================");
		LOG.debug("=coulist)=" + coulist);
		LOG.debug("==================");
		
		//int point = payService.pointValue(mInVo);
		int point = 5000;
		
		model.addAttribute("list", coulist);
		model.addAttribute("userpoint", point);
		
		
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
    	model.addAttribute("m_price", "7000");
    	
        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));
        
        TicketVO outVO = new TicketVO(pg_token, 2, 7000, 2, "SYSDATE", 1, 3);
        //outVO.settPrice(resultPrice);
        
        
        MemberVO memberVO = new MemberVO(1,"회원아이디","회원이름","전화번호", "생월일","닉네임", 1, 4000);
        
        // 포인트 사용 업데이트
        //int currPoint = memberVO.getMbPoint() - point;
        
        
        // 포인트 등급별 업데이트
//        int savingPoint = 0;
//        
//        if(memberVO.getMbGrade() == 1) savingPoint = 100;
//        else if(memberVO.getMbGrade() == 2) savingPoint = 200;
//        else if(memberVO.getMbGrade() == 3)  savingPoint = 350;
//        else  savingPoint = 600;
       
        //memberVO.setMbPoint(currPoint + savingPoint);
        //payService.pointUpdate(memberVO);
        
        // 쿠폰을 사용 했으면 업데이트 ( 사용 안했으면 -1)
//        CouponVO coupon = new CouponVO();
//        if(useCoupon != -1) {
//        	coupon.setcNum(useCoupon);
//        	payService.couponUpdate(coupon);
//        }
        
        
        // 결제 내역 추가
        //payService.ticketInsert(outVO);
		
		return "pay/paycomplate";
	}
	
	@PostMapping("payInfo.do")
	@ResponseBody
	public String payInfo(@RequestParam Map<String, Object> map){
		int resultPrice = (int) map.get("result_price");
		int point = (int) map.get("u_point");
		int useCoupon = (int) map.get("use_couponId");
		
		LOG.debug(map.get("result_price"));
		LOG.debug(map.get("u_point"));
		LOG.debug(map.get("use_couponId"));
		
		
		
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
    
}
