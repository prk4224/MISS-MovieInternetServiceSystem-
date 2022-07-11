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

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import org.springframework.web.servlet.ModelAndView;

import com.pcwk.miss.domain.ApproveResponseVO;
import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.domain.MovieVO;
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
	
	int mvNum;
	String miTime;
	String miQuality;
	int mbNum;
	int resultPrice;
	int uPoint;
	int useCouponId;
	
	
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
	public String payView(MemberVO mInVo, CouponVO cInVO, Model model, HttpServletRequest request) throws SQLException {
		LOG.debug("==================");
		LOG.debug("=PayController=payView()=");
		LOG.debug("==================");
		
		mvNum = Integer.parseInt(request.getParameter("mvNum"));  //영화번호
		miTime = request.getParameter("miTime");               //상영시간
		miQuality = request.getParameter("miQuality");         //화질
		mbNum = Integer.parseInt(request.getParameter("mbNum"));  //로그인되있는 회원번호
		
		
//		cInVO = new CouponVO(1,1,"생일 쿠폰", "날짜_미정", 1, 30, 0);
		MovieVO movie = new MovieVO();
		movie.setMvNum(mvNum);
		movie = payService.movieInfo(movie);
		
		mInVo.setMbNum(mbNum);
		 // 포스터 URL
    	String postURL = payService.posterSelect(movie);
    	
		
		List<CouponVO> coulist = payService.couponRetrieve(cInVO);
		//List<CouponVO> coulist = null;
		
		LOG.debug("==================");
		LOG.debug("=coulist)=" + coulist);
		LOG.debug("==================");
		
		int point = payService.pointValue(mInVo);
		//int point = 5000;
		
		// 결제 금액
		int price = 0;
		if(miQuality.equals("720")) price = 6000;
		else if(miQuality.equals("1080")) price = 7000;
		else if(miQuality.equals("2160")) price = 8000;
		
		model.addAttribute("movie", movie);
		model.addAttribute("miTime", miTime);
		model.addAttribute("miQuality", miQuality);		
		model.addAttribute("price", price);
		model.addAttribute("list", coulist);
		model.addAttribute("userpoint", point);
		model.addAttribute("postURL", postURL);
		
		
		return "pay/paypage";
	}
	
	
	@RequestMapping(value = "/paycom.do")
	public String paycomView(@RequestParam("pg_token") String pg_token, Model model) throws SQLException, ParseException {
		
		
		
		LOG.debug("==================");
		LOG.debug("=PayController=paycomView()=");
		LOG.debug("==================");
		
		LOG.debug("kakaoPaySuccess get............................................");
    	LOG.debug("kakaoPaySuccess pg_token : " + pg_token);
        
    	MovieVO movie = new MovieVO();
    	movie.setMvNum(mvNum);
    	movie = payService.movieInfo(movie);
    	
    	
    	String age = "";
    	if(movie.getMvAgelimit() == 1) age = "전체";
    	else age = String.valueOf(movie.getMvAgelimit()) + "세";
    	LOG.debug("==================");
		LOG.debug("=age=" + age);
		LOG.debug("==================");
    	
        
    	 // 포스터 URL
    	String postURL = payService.posterSelect(movie);
    	
    	LOG.debug("==================");
		LOG.debug("=postURL=" + postURL);
		LOG.debug("==================");
        
        
		// 쿠폰을 사용 했으면 업데이트 ( 사용 안했으면 -1)
    	CouponVO couponVO = new CouponVO();
        couponVO.setcNum(useCouponId);
        LOG.debug("couponVO11111 : " +couponVO);
        couponVO = payService.couponSelete(couponVO);
        LOG.debug("couponVO22222 : " +couponVO);
    	
    	if(useCouponId != -1) {
    		payService.couponUpdate(couponVO);
    		resultPrice = (int) (resultPrice - (resultPrice * ((double)couponVO.getcRatio()/100)));
         }
		     
        model.addAttribute("token", pg_token);
    	model.addAttribute("m_agelim", age);
    	model.addAttribute("m_title", movie.getMvTitle());
    	model.addAttribute("m_director", movie.getMvDirector());
    	model.addAttribute("m_actor", movie.getMvActor());
    	model.addAttribute("m_time", miTime);
    	model.addAttribute("m_price", resultPrice);
    	model.addAttribute("postURL", postURL);
    	model.addAttribute("miQuality", miQuality);
    	
    	ApproveResponseVO approveResponseVO = kakaopay.kakaoPayInfo(pg_token);
    	LOG.debug("==================");
		LOG.debug("=approveResponseVO=" + approveResponseVO);
		LOG.debug("==================");
    	
        model.addAttribute("info", approveResponseVO);
        
        String tId = approveResponseVO.getTid(); 
        

    	LOG.debug("==================");
		LOG.debug("=tId=" + tId);
		LOG.debug("==================");
		
		
    	LOG.debug("miTime : " +miTime);
    	
    	SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    	
    	Date date = transFormat.parse(miTime);
    	
    	LOG.debug("date : " +date);
    	
    	
        // 결제 내역 추가
        TicketVO outVO = new TicketVO(tId, mbNum, resultPrice, 2, date, 1, mvNum);;
        
        LOG.debug("=outVOttttttt1111=" + outVO);
        
       
        
        payService.ticketInsert(outVO);
        LOG.debug("=outVOttttttt2222=" + outVO);
        
        MemberVO memberVO = new MemberVO();
        memberVO.setMbNum(mbNum);
        memberVO = payService.memberSelete(memberVO);
        
        
        // 포인트 사용 업데이트
        int currPoint = memberVO.getMbPoint() - uPoint;
        
        LOG.debug("=currPoint=" + currPoint);
        
        
        
        // 포인트 등급별 업데이트
        int savingPoint = 0;
        
        if(memberVO.getMbGrade() == 1) savingPoint = 100;
        else if(memberVO.getMbGrade() == 2) savingPoint = 200;
        else if(memberVO.getMbGrade() == 3)  savingPoint = 350;
        else  savingPoint = 600;
        
        LOG.debug("savingPoint : " +savingPoint);
        LOG.debug("memberVO.getMbGrade()" + memberVO.getMbGrade());
        LOG.debug("memberVO.getMbNum()" + memberVO.getMbNum());
        
        memberVO.setMbPoint(currPoint + savingPoint);
       
        payService.pointUpdate(memberVO);
        
        
        
        
        // 현재 회원 등급 조회
        memberVO.setMbNum(mbNum);
        memberVO = payService.memberSelete(memberVO);
        int memberGrade = memberVO.getMbGrade();
        
        LOG.debug("==================");
		LOG.debug("=memberGrade=" + memberGrade);
		LOG.debug("==================");
		
        
        // 회원 결제 횟수
        int payCnt  = payService.payCount(outVO);
        int patGrade = 1;
        if(payCnt <= 1) patGrade = 1;
        else if(payCnt > 1 && payCnt <= 20) patGrade = 2;
        else if(payCnt > 20 && payCnt <= 50 ) patGrade = 3;
        else patGrade = 4;
        
        // 등급이 올랐다면 회원 등급을 업데이트 한후 coupon Insert
        if(patGrade > memberGrade) {
        	
        	payService.memberUpdate(memberVO);	 
        	
        	couponVO = new CouponVO(9999, mbNum, "등업 쿠폰", 1, 30,1);
        	payService.couponInsert(couponVO);
        	
        }
        
        
        
       
		
		return "pay/paycomplate";
	}
	
	@PostMapping("/postView.do")
	@ResponseBody
	public String postTest(@RequestParam("resultPrice") int price,@RequestParam("uPoint") int point,@RequestParam(
    		"useCouponId") int coupon) throws SQLException {
		String jsonString = "";
		resultPrice = (price);  // 최종 결제 금액
		uPoint = (point); // 사용한 포인트
		useCouponId = (coupon); // 사용한 쿠폰 ID 사용 하지 않았으면 -1
		
		LOG.debug("resultPrice : " +resultPrice);
		LOG.debug("uPoint : " +uPoint);
		LOG.debug("useCouponId : " +useCouponId);
		LOG.debug("mbNum : " +mbNum);
		
		
		
        return "jsonString";
	}
	
	@Autowired
    private KakaoPay kakaopay;
    
    
    @GetMapping("/kakaoPay")
    public void kakaoPayGet() {
        
    }
    
    @PostMapping("/kakaoPay.do")
    public String kakaoPay() throws SQLException {
        
        
        LOG.debug("kakaoPay post............................................");
        
        return "redirect:" + kakaopay.kakaoPayReady(resultPrice,uPoint,mbNum,useCouponId);
 
    }
    

    @PostMapping("/kakaoPayCancle.do")
    public String kakaoPayCancle(HttpServletRequest request){
    	
        LOG.debug("kakaoPayCancle post............................................");
        LOG.debug("===================");
        String tNum = request.getParameter("tNum");
        String tPrice = request.getParameter("tPrice");
        LOG.debug("======tNum============" + tNum);
        LOG.debug("=======tPrice==========" + tPrice);
        LOG.debug("===================");

        
        
        return "redirect:" + kakaopay.kakaoPayCancle(tNum, tPrice);
 
    }
    
    
    
}
