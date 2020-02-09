package com.kh.newby.classCancel.model.vo;

public class ClassCancel {
	private String ccNo;  	// 취소 번호
	private String ccpNo; 	// 취소한 주문번호 
	private String ccClNo;	 // 취소한 클래스 번호
	private String ccClName; // 취소한 클래스명
	private String ccmName;	 // 취소한 멤버명
	private int ccPrice;  	 // 취소한 클래스 가격 
	private String ccDate;   // 취소 날짜
	private String ccStatus; // 취소 상태
	
	public ClassCancel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ClassCancel(String ccNo, String ccpNo, String ccClNo, String ccClName, String ccmName, int ccPrice,
			String ccDate, String ccStatus) {
		super();
		this.ccNo = ccNo;
		this.ccpNo = ccpNo;
		this.ccClNo = ccClNo;
		this.ccClName = ccClName;
		this.ccmName = ccmName;
		this.ccPrice = ccPrice;
		this.ccDate = ccDate;
		this.ccStatus = ccStatus;
	}

	public String getCcNo() {
		return ccNo;
	}
	
	public void setCcNo(String ccNo) {
		this.ccNo = ccNo;
	}
	
	public String getCcpNo() {
		return ccpNo;
	}
	
	public void setCcpNo(String ccpNo) {
		this.ccpNo = ccpNo;
	}
	
	public String getCcClNo() {
		return ccClNo;
	}
	
	public void setCcClNo(String ccClNo) {
		this.ccClNo = ccClNo;
	}
	public String getCcClName() {
		return ccClName;
	}
	
	public void setCcClName(String ccClName) {
		this.ccClName = ccClName;
	}
	
	public String getCcmName() {
		return ccmName;
	}
	
	public void setCcmName(String ccmName) {
		this.ccmName = ccmName;
	}
	
	public int getCcPrice() {
		return ccPrice;
	}
	
	public void setCcPrice(int ccPrice) {
		this.ccPrice = ccPrice;
	}
	
	public String getCcDate() {
		return ccDate;
	}
	
	public void setCcDate(String ccDate) {
		this.ccDate = ccDate;
	}
	
	public String getCcStatus() {
		return ccStatus;
	}
	
	public void setCcStatus(String ccStatus) {
		this.ccStatus = ccStatus;
	}

	@Override
	public String toString() {
		return "ClassCancel [ccNo=" + ccNo + ", ccpNo=" + ccpNo + ", ccClNo=" + ccClNo + ", ccClName=" + ccClName
				+ ", ccmName=" + ccmName + ", ccPrice=" + ccPrice + ", ccDate=" + ccDate + ", ccStatus=" + ccStatus
				+ "]";
	}
}

