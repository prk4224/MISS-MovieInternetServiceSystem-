package com.pcwk.miss.pay.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.miss.domain.CouponVO;

public interface PayService {

	public List<CouponVO> couponRetrieve(CouponVO inVO) throws SQLException;
	
	
}
