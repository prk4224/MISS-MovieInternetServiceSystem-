package com.pcwk.miss.pay;


import java.net.URI;
import java.net.URISyntaxException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.pcwk.miss.domain.ApproveResponseVO;
import com.pcwk.miss.domain.ReadyResponseVO;

@Service
public class KakaoPay {
	
	final Logger LOG = LogManager.getLogger(getClass());
	
	private static final String HOST = "https://kapi.kakao.com";
    
    private ReadyResponseVO readyResponseVO;
    private ApproveResponseVO approveResponseVO;
    int totalPrice = 0;
    
    public String kakaoPayReady(int price) {

    	totalPrice = price;
    	
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
	
}
