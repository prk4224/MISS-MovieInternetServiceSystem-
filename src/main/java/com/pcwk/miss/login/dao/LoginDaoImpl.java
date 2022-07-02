package com.pcwk.miss.login.dao;

import java.sql.SQLException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;

@Repository("loginDao")
public class LoginDaoImpl implements LoginDao {

	final Logger LOG = LogManager.getLogger(this.getClass());
	
	// mybatis namespace
	final String NAMESPACE = "com.pcwk.miss.login";
	
	// mybatis db연결객체
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public LoginDaoImpl() {
		
	}
	
	@Override
	public int existingMember(MemberVO inVO) throws SQLException {
		String statement = this.NAMESPACE + ".existingMember";
		LOG.debug("============================");
		LOG.debug("param:" + inVO.toString());
		LOG.debug("statement:" + statement);
		LOG.debug("============================");
		int count = sqlSessionTemplate.selectOne(statement, inVO);
		LOG.debug("count:" + count);
		return count;
	}

	@Override
	public int doInsert(MemberVO inVO) throws SQLException {
		int flag = 0;
		
		String statement = this.NAMESPACE + ".doInsert";
		LOG.debug("============================");
		LOG.debug("param:" + inVO.toString());
		LOG.debug("statement:" + statement);
		LOG.debug("============================");
		
		flag = this.sqlSessionTemplate.insert(statement, inVO);
		LOG.debug("flag : " + flag);
		
		return flag;
	}

	@Override
	public MemberVO emailToNum(MemberVO inVO) throws SQLException {
		String statement = this.NAMESPACE + ".emailToNum";
		LOG.debug("============================");
		LOG.debug("param:" + inVO.toString());
		LOG.debug("statement:" + statement);
		LOG.debug("============================");
		MemberVO outVO = this.sqlSessionTemplate.selectOne(statement, inVO);
		LOG.debug("============================");
		LOG.debug("outVO:" + outVO);
		LOG.debug("============================");
		
		return outVO;
	}

	@Override
	public int registerCoupon(CouponVO inVO) throws SQLException {
		int flag = 0;
		
		String statement = this.NAMESPACE + ".registerCoupon";
		
		LOG.debug("============================");
		LOG.debug("param:" + inVO.toString());
		LOG.debug("statement:" + statement);
		LOG.debug("============================");
		
		flag = this.sqlSessionTemplate.insert(statement, inVO);
		LOG.debug("flag : " + flag);
		
		return flag;
	}

}
