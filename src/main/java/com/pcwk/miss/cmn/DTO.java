/**
* <pre>
* com.pcwk.miss.cmn
* Class Name : DTO.java
* Description:
* Author: ITSC
* Since: 2022/06/20
* Version 0.1
* Copyright (C) by KandJang All right reserved.
* Modification Information
* 수정일   수정자    수정내용
*-----------------------------------------------------
*2022/06/20 최초생성
*-----------------------------------------------------
* </pre>
*/
package com.pcwk.miss.cmn;

/**
 * @author ITSC
 *
 */
public class DTO {
	//글번호
	private double num;
	//총글수
	private int totalCnt;
	public DTO() {
		
	}
	public double getNum() {
		return num;
	}
	public void setNum(double num) {
		this.num = num;
	}
	public int getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}
	@Override
	public String toString() {
		return "DTO [num=" + num + ", totalCnt=" + totalCnt + "]";
	}
}
