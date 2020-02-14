package com.kh.newby.claim.model.vo;

import java.io.Serializable;

public class Claim implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4405732486995767570L;
	
	private String cmNo;
	private String cmTitle;
	private String cmContent;
	private String cmDate;
	private String handledDate;
	private String status;
	private int suspendPeriod;
	private String suspendStartDate;
	private String suspendEndDate;
	
	public Claim() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Claim(String cmNo, String cmTitle, String cmContent, String cmDate, String handledDate, String status,
			int suspendPeriod, String suspendStartDate, String suspendEndDate) {
		super();
		this.cmNo = cmNo;
		this.cmTitle = cmTitle;
		this.cmContent = cmContent;
		this.cmDate = cmDate;
		this.handledDate = handledDate;
		this.status = status;
		this.suspendPeriod = suspendPeriod;
		this.suspendStartDate = suspendStartDate;
		this.suspendEndDate = suspendEndDate;
	}

	public String getCmNo() {
		return cmNo;
	}

	public void setCmNo(String cmNo) {
		this.cmNo = cmNo;
	}

	public String getCmTitle() {
		return cmTitle;
	}

	public void setCmTitle(String cmTitle) {
		this.cmTitle = cmTitle;
	}

	public String getCmContent() {
		return cmContent;
	}

	public void setCmContent(String cmContent) {
		this.cmContent = cmContent;
	}

	public String getCmDate() {
		return cmDate;
	}

	public void setCmDate(String cmDate) {
		this.cmDate = cmDate;
	}

	public String getHandledDate() {
		return handledDate;
	}

	public void setHandledDate(String handledDate) {
		this.handledDate = handledDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getSuspendPeriod() {
		return suspendPeriod;
	}

	public void setSuspendPeriod(int suspendPeriod) {
		this.suspendPeriod = suspendPeriod;
	}

	public String getSuspendStartDate() {
		return suspendStartDate;
	}

	public void setSuspendStartDate(String suspendStartDate) {
		this.suspendStartDate = suspendStartDate;
	}

	public String getSuspendEndDate() {
		return suspendEndDate;
	}

	public void setSuspendEndDate(String suspendEndDate) {
		this.suspendEndDate = suspendEndDate;
	}

	@Override
	public String toString() {
		return "Claim [cmNo=" + cmNo + ", cmTitle=" + cmTitle + ", cmContent=" + cmContent + ", cmDate=" + cmDate
				+ ", handledDate=" + handledDate + ", status=" + status + ", suspendPeriod=" + suspendPeriod
				+ ", suspendStartDate=" + suspendStartDate + ", suspendEndDate=" + suspendEndDate + "]";
	}
}
