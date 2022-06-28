package com.pcwk.miss.faq.service;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.miss.faq.dao.FaqDao;
import com.pcwk.miss.faq.domain.FaqVO;

@Service("faqService")
public class FaqServiceImpl implements FaqService {

	final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired
	private FaqDao faqDao;
	
	@Override
	public List<FaqVO> getFaqList(int qKind) {
		return faqDao.getFaqList(qKind);
	}

}
