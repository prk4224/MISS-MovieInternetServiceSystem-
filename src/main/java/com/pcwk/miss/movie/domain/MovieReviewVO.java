/**
* <pre>
* com.pcwk.miss.movie.domain
* Class Name : 
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
package com.pcwk.miss.movie.domain;

import com.pcwk.miss.cmn.DTO;

public class MovieReviewVO extends DTO {
	private int mvNum; //영화번호
	private int rNum; //리뷰순번
	private String mbNickname; //닉네임
	private String rReview; //리뷰
	private int rRating; //별점
	
	public MovieReviewVO() {
		
	}

	public MovieReviewVO(int mvNum, int rNum, String mbNickname, String rReview, int rRating) {
		super();
		this.mvNum = mvNum;
		this.rNum = rNum;
		this.mbNickname = mbNickname;
		this.rReview = rReview;
		this.rRating = rRating;
	}

	public int getMvNum() {
		return mvNum;
	}

	public void setMvNum(int mvNum) {
		this.mvNum = mvNum;
	}

	public int getrNum() {
		return rNum;
	}

	public void setrNum(int rNum) {
		this.rNum = rNum;
	}

	public String getMbNickname() {
		return mbNickname;
	}

	public void setMbNickname(String mbNickname) {
		this.mbNickname = mbNickname;
	}

	public String getrReview() {
		return rReview;
	}

	public void setrReview(String rReview) {
		this.rReview = rReview;
	}

	public int getrRating() {
		return rRating;
	}

	public void setrRating(int rRating) {
		this.rRating = rRating;
	}

	@Override
	public String toString() {
		return "MovieReviewVO [mvNum=" + mvNum + ", rNum=" + rNum + ", mbNickname=" + mbNickname + ", rReview="
				+ rReview + ", rRating=" + rRating + ", toString()=" + super.toString() + "]";
	}
	
}

