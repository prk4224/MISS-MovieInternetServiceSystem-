package com.pcwk.miss.faq.service;

import java.util.List;

import com.pcwk.miss.faq.domain.FaqVO;

public interface FaqService {

	/**
	 * faq데이터 조회
	 * @return
	 */
	public List<FaqVO> getFaqList(int qKind);
}
