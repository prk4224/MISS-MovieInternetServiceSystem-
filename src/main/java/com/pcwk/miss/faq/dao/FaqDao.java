package com.pcwk.miss.faq.dao;

import java.util.List;

import com.pcwk.miss.faq.domain.FaqVO;

public interface FaqDao {
	
	/**
	 * faq데이터 조회
	 * @return
	 */
	List<FaqVO> getFaqList(int qKind);
}
