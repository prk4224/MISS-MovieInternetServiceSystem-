package com.pcwk.miss.domain;

public class TestVO {
	private int mvNum;
	private String mvTitle;
	private String mvDirector;
	private String mvActor;
	private String mvGenre;
	private String mvReleased;
	private int mvAgelimit;
	private String mvSummary;
	private String mvNation;
	private int mvTime;
	
	public TestVO() {
		
	}
	
	public int getMvNum() {
		return mvNum;
	}
	public void setMvNum(int mvNum) {
		this.mvNum = mvNum;
	}
	public String getMvTitle() {
		return mvTitle;
	}
	public void setMvTitle(String mvTitle) {
		this.mvTitle = mvTitle;
	}
	public String getMvDirector() {
		return mvDirector;
	}
	public void setMvDirector(String mvDirector) {
		this.mvDirector = mvDirector;
	}
	public String getMvActor() {
		return mvActor;
	}
	public void setMvActor(String mvActor) {
		this.mvActor = mvActor;
	}
	public String getMvGenre() {
		return mvGenre;
	}
	public void setMvGenre(String mvGenre) {
		this.mvGenre = mvGenre;
	}
	public String getMvReleased() {
		return mvReleased;
	}
	public void setMvReleased(String mvReleased) {
		this.mvReleased = mvReleased;
	}
	public int getMvAgelimit() {
		return mvAgelimit;
	}
	public void setMvAgelimit(int mvAgelimit) {
		this.mvAgelimit = mvAgelimit;
	}
	public String getMvSummary() {
		return mvSummary;
	}
	public void setMvSummary(String mvSummary) {
		this.mvSummary = mvSummary;
	}
	public String getMvNation() {
		return mvNation;
	}
	public void setMvNation(String mvNation) {
		this.mvNation = mvNation;
	}
	public int getMvTime() {
		return mvTime;
	}
	public void setMvTime(int mvTime) {
		this.mvTime = mvTime;
	}
	@Override
	public String toString() {
		return "TestVO [mvNum=" + mvNum + ", mvTitle=" + mvTitle + ", mvDirector=" + mvDirector + ", mvActor=" + mvActor
				+ ", mvGenre=" + mvGenre + ", mvReleased=" + mvReleased + ", mvAgelimit=" + mvAgelimit + ", mvSummary="
				+ mvSummary + ", mvNation=" + mvNation + ", mvTime=" + mvTime + "]";
	}
	
	
}
