package com.pcwk.miss.faq.dao;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.miss.faq.domain.FaqVO;

@Repository("faqDao")
public class FaqDaoImpl implements FaqDao {
	
final Logger LOG = LogManager.getLogger(this.getClass());
	
	// mybatis namespace
	final String NAMESPACE = "com.pcwk.miss.faq";
	
	// mybatis db연결객체
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<FaqVO> getFaqList(int qKind) {
		List<FaqVO> outVO = null;
		
		String statement = this.NAMESPACE + ".getFaqList";
		LOG.debug("============================");
		LOG.debug("statement:" + statement);
		LOG.debug("============================");
		
		outVO = this.sqlSessionTemplate.selectList(statement, qKind);
		LOG.debug("============================");
		LOG.debug("=outVO=" + outVO.toString());
		LOG.debug("============================");
		return outVO;
	}

}
