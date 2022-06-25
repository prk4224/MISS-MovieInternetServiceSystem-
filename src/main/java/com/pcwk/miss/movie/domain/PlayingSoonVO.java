/**
* <pre>
* com.pcwk.miss.movie.domain
* Class Name : PlayingSoonVO.java
* Description: main.jsp 상영임박영화
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

public class PlayingSoonVO extends DTO{
	private int mvNum; //영화번호
	private String miTime; //상영시간
	private int miQuality; //화질
	private String mvTitle; //제목
	private String imRoute; //파일경로
	
	public PlayingSoonVO() {
		
	}

	public PlayingSoonVO(int mvNum, String miTime, int miQuality, String mvTitle, String imRoute) {
		super();
		this.mvNum = mvNum;
		this.miTime = miTime;
		this.miQuality = miQuality;
		this.mvTitle = mvTitle;
		this.imRoute = imRoute;
	}

	public int getMvNum() {
		return mvNum;
	}

	public void setMvNum(int mvNum) {
		this.mvNum = mvNum;
	}

	public String getMiTime() {
		return miTime;
	}

	public void setMiTime(String miTime) {
		this.miTime = miTime;
	}

	public int getMiQuality() {
		return miQuality;
	}

	public void setMiQuality(int miQuality) {
		this.miQuality = miQuality;
	}

	public String getMvTitle() {
		return mvTitle;
	}

	public void setMvTitle(String mvTitle) {
		this.mvTitle = mvTitle;
	}

	public String getImRoute() {
		return imRoute;
	}

	public void setImRoute(String imRoute) {
		this.imRoute = imRoute;
	}

	@Override
	public String toString() {
		return "PlayingSoonVO [mvNum=" + mvNum + ", miTime=" + miTime + ", miQuality=" + miQuality + ", mvTitle="
				+ mvTitle + ", imRoute=" + imRoute + ", toString()=" + super.toString() + "]";
	}
	
}
