package com.pcwk.miss.pay;


import java.net.URI;
import java.net.URISyntaxException;
import java.sql.SQLException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.pcwk.miss.domain.ApproveResponseVO;
import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.domain.ReadyResponseVO;
import com.pcwk.miss.pay.service.PayService;

@Service
public class KakaoPay {
	
	final Logger LOG = LogManager.getLogger(getClass());
	
	private static final String HOST = "https://kapi.kakao.com";
    
    private ReadyResponseVO readyResponseVO;
    private ApproveResponseVO approveResponseVO;
    
    @Autowired
    PayService payService;
    
    int totalPrice;
    int uPoint;
    int mbNum;
    int useCouponId;
    
    public String kakaoPayReady(int price, int point, int mbnumm, int couponId) throws SQLException {

    	totalPrice = price;
    	uPoint = point;
    	mbNum = mbnumm;
    	useCouponId = couponId;
    	
    	// 쿠폰을 사용 했으면 업데이트 ( 사용 안했으면 -1)
    	CouponVO couponVO = new CouponVO();
        couponVO.setcNum(useCouponId);
        LOG.debug("couponVO11111 : " +couponVO);
        couponVO = payService.couponSelete(couponVO);
        LOG.debug("couponVO22222 : " +couponVO);
    	
    	if(useCouponId != -1) {
    		
    		totalPrice = (int) (totalPrice - (totalPrice * ((double)couponVO.getcRatio()/100)));
         }
    	
    	
        RestTemplate restTemplate = new RestTemplate();
 
        // 서버로 요청할 Header
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "KakaoAK " + "ac83ec5a8b8bb9ce4c1b05b2959816ef");
        headers.add("Accept",  org.springframework.http.MediaType.APPLICATION_JSON_UTF8_VALUE);
        headers.add("Content-Type", org.springframework.http.MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
        
        // 서버로 요청할 Body
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME");
        params.add("partner_order_id", "1001");
        params.add("partner_user_id", "gorany");
        params.add("item_name", "TICKET");
        params.add("quantity", "1");
        params.add("total_amount", String.valueOf(totalPrice));
        params.add("tax_free_amount", "0");
        params.add("approval_url", "http://localhost:8081/miss/pay/paycom.do");
        params.add("cancel_url", "http://localhost:8081/miss/pay/reserve.do");
        params.add("fail_url", "http://localhost:8081/miss/pay/paying.do");
 
         HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
 
        try {
            readyResponseVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, ReadyResponseVO.class);
            
            LOG.debug("" + readyResponseVO);
            
            return readyResponseVO.getNext_redirect_pc_url();
 
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return "/pay";
        
    }
    
    public ApproveResponseVO kakaoPayInfo(String pg_token) {
 
        LOG.debug("KakaoPayInfoVO............................................");
        LOG.debug("-----------------------------");
        
        RestTemplate restTemplate = new RestTemplate();
 
        // 서버로 요청할 Header
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "KakaoAK " + "ac83ec5a8b8bb9ce4c1b05b2959816ef");
        headers.add("Accept", org.springframework.http.MediaType.APPLICATION_JSON_UTF8_VALUE);
        headers.add("Content-Type", org.springframework.http.MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
 
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME");
        params.add("tid", readyResponseVO.getTid());
        params.add("partner_order_id", "1001");
        params.add("partner_user_id", "gorany");
        params.add("pg_token", pg_token);
        params.add("total_amount", String.valueOf(totalPrice));
        
        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
        
        try {
            
            approveResponseVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, ApproveResponseVO.class);
            LOG.debug("" + approveResponseVO);
          
            return approveResponseVO;
        
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return null;
    }
    
    public String kakaoPayCancle(String tid, String cancel_amount){
    	 
        LOG.debug("KakaoPayInfoVO............................................");
        LOG.debug("-----------------------------");
        
        RestTemplate restTemplate = new RestTemplate();
 
        // 서버로 요청할 Header
        HttpHeaders headers = new HttpHeaders();
        headers.add("Authorization", "KakaoAK " + "ac83ec5a8b8bb9ce4c1b05b2959816ef");
        headers.add("Accept", org.springframework.http.MediaType.APPLICATION_JSON_UTF8_VALUE);
        headers.add("Content-Type", org.springframework.http.MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
 
        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
        params.add("cid", "TC0ONETIME");
        params.add("tid", tid);
        params.add("cancel_amount", cancel_amount);
        params.add("cancel_tax_free_amount", "0");
        params.add("payload", "http://localhost:8081/miss/mypage/historyView.do?mbNum=" + mbNum);
        
        
        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
        
        try {
            approveResponseVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/cancel"), body, ApproveResponseVO.class);
            LOG.debug("" + approveResponseVO);

            
            return approveResponseVO.getPayload();
        
        } catch (RestClientException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (URISyntaxException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return null;
    }
	
}
