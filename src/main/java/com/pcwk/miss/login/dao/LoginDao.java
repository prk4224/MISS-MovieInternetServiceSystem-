/**
* <pre>
* com.pcwk.miss.login.dao
* Class Name : LoginDao.java
* Description:
* Author: ITSC
* Since: 2022/06/29
* Version 0.1
* Copyright (C) by KandJang All right reserved.
* Modification Information
* 수정일   수정자    수정내용
*-----------------------------------------------------
*2022/06/29 최초생성
*-----------------------------------------------------
* </pre>
*/
package com.pcwk.miss.login.dao;

import java.sql.SQLException;

import com.pcwk.miss.domain.CouponVO;
import com.pcwk.miss.domain.MemberVO;

/**
 * @author ITSC
 *
 */
public interface LoginDao {
	
	/**
	 * 기존회원인지 아닌지 check
	 * @param inVO
	 * @return 1이면 기존회원 / 0이면 신규회원
	 * @throws SQLException
	 */
	int existingMember(MemberVO inVO) throws SQLException;
	
	/**
	 * 회원가입
	 * @param inVO
	 * @return 1(성공) / 0(실패)
	 * @throws SQLException
	 */
	int doInsert(MemberVO inVO) throws SQLException;
	
	/**
	 * 이메일 -> mbNum
	 * @param inVO
	 * @return
	 * @throws SQLException
	 */
	MemberVO emailToNum(MemberVO inVO) throws SQLException;
	
	/**
	 * 신규회원가입 쿠폰발급
	 * @param inVO
	 * @return
	 * @throws SQLException
	 */
	int registerCoupon(CouponVO inVO) throws SQLException; 
}
