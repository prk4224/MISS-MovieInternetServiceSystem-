package com.pcwk.miss.pay.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;
import com.pcwk.miss.domain.TicketVO;
import com.pcwk.miss.pay.domain.ReserveVO;

public interface PayDao {
	
	/**
	 * 사용한 쿠폰 삭
	 * @param inVO
	 * @return
	 * @throws SQLException
	 */
	int couponDelete(CouponVO inVO) throws SQLException;
	
	/**
	 * 가지고 있는 포인트 조회
	 * @param inVO
	 * @return
	 * @throws SQLException
	 */
	int pointValue(MemberVO inVO) throws SQLException;
	
	/**
	 * 가지고 있는 쿠폰 조회
	 * @return List<CouponVO>
	 * @throws SQLException
	 */
	List<CouponVO> couponRetrieve(CouponVO inVO) throws SQLException;
	
	/**
	 * 예매 내역 추가
	 * @param inVO
	 * @return int
	 * @throws SQLException
	 */
	int ticketInsert(TicketVO inVO) throws SQLException;
	
	/**
	 * 상영중인영화조회
	 * @return
	 * @throws SQLException
	 */
	List<ReserveVO> getMovieOn() throws SQLException;
	
	/**
	 * 영화상영시간 조회
	 * @return
	 * @throws SQLException
	 */
	List<ReserveVO> getMovieTime(ReserveVO inVO) throws SQLException;
}
