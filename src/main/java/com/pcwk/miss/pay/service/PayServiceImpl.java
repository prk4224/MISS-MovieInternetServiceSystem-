package com.pcwk.miss.pay.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.pay.dao.PayDao;

@Service("payService")
public class PayServiceImpl implements PayService{
	
final Logger LOG = LogManager.getLogger(this.getClass());
	
	@Autowired
	private PayDao payDao;
	

	@Override
	public List<CouponVO> couponRetrieve(CouponVO inVO) throws SQLException {
		
		return payDao.couponRetrieve(inVO);
	}
	

}
