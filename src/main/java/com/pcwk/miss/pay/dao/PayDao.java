package com.pcwk.miss.pay.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.TicketVO;

public interface PayDao {
	
	/**
	 * 가지고 있는 쿠폰 조회
	 * @return List<CouponVO>
	 * @throws SQLException
	 */
	List<CouponVO> couponRetrieve(CouponVO inVO) throws SQLException;
	
	int ticketInsert(TicketVO inVO) throws SQLException;
	
}
