package com.pcwk.miss.pay.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.pay.domain.ReserveVO;

public interface PayService {

	public List<CouponVO> couponRetrieve(CouponVO inVO) throws SQLException;
	
	/**
	 * 상영중인영화조회
	 * @return
	 * @throws SQLException
	 */
	public List<ReserveVO> getMovieOn() throws SQLException;
	
	/**
	 * 영화상영시간 조회
	 * @return
	 * @throws SQLException
	 */
	public List<ReserveVO> getMovieTime(ReserveVO inVO) throws SQLException;
}
