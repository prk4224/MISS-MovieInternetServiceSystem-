package com.pcwk.miss.pay.domain;

import com.pcwk.miss.cmn.DTO;

public class ReserveVO extends DTO{
	private int mvNum; //영화번호
	private String mvTitle; //영화제목
	private String miTime; //상영시간
	private int miQuality; //화질
	
	public ReserveVO() {
		
	}

	public ReserveVO(int mvNum, String mvTitle, String miTime, int miQuality) {
		super();
		this.mvNum = mvNum;
		this.mvTitle = mvTitle;
		this.miTime = miTime;
		this.miQuality = miQuality;
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

	@Override
	public String toString() {
		return "ReserveVO [mvNum=" + mvNum + ", mvTitle=" + mvTitle + ", miTime=" + miTime + ", miQuality=" + miQuality
				+ ", toString()=" + super.toString() + "]";
	}
	
}
