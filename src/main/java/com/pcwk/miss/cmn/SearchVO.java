package com.pcwk.miss.cmn;

public class SearchVO extends DTO {
	private int pageSize; // 한페이지 출력할 행 개수(고정값해야할듯)
	private int pageNum; // 페이지 수 1, 2, 3, 4, 5
	private String searchDiv; // 검색구분
	private String searchWord; // 검색어
	private int mvNum; //영화번호
	
	public SearchVO() {
		
	}

	public SearchVO(int pageSize, int pageNum, String searchDiv, String searchWord, int mvNum) {
		super();
		this.pageSize = pageSize;
		this.pageNum = pageNum;
		this.searchDiv = searchDiv;
		this.searchWord = searchWord;
		this.mvNum = mvNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public String getSearchDiv() {
		return searchDiv;
	}

	public void setSearchDiv(String searchDiv) {
		this.searchDiv = searchDiv;
	}

	public String getSearchWord() {
		return searchWord;
	}

	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}

	public int getMvNum() {
		return mvNum;
	}

	public void setMvNum(int mvNum) {
		this.mvNum = mvNum;
	}

	@Override
	public String toString() {
		return "SearchVO [pageSize=" + pageSize + ", pageNum=" + pageNum + ", searchDiv=" + searchDiv + ", searchWord="
				+ searchWord + ", mvNum=" + mvNum + ", toString()=" + super.toString() + "]";
	}

	
	
}
