package com.kh.newby.claim.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Claim implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4405732486995767570L;
	
	private String cmDate;	
	private String cmNo;
	private String cmWriterNo;
	private String cmTitle;
	private String cmContent;
	private Date handledDate;
	private String status;
	private int suspensionPeriod;
	private Date suspensionStartDate;
	private Date suspensionEndDate;
	
	public Claim() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getCmDate() {
		return cmDate;
	}

	public void setCmDate(String cmDate) {
		this.cmDate = cmDate;
	}

	public String getCmNo() {
		return cmNo;
	}

	public void setCmNo(String cmNo) {
		this.cmNo = cmNo;
	}

	public String getCmWriterNo() {
		return cmWriterNo;
	}

	public void setCmWriterNo(String cmWriterNo) {
		this.cmWriterNo = cmWriterNo;
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

	public Date getHandledDate() {
		return handledDate;
	}

	public void setHandledDate(Date handledDate) {
		this.handledDate = handledDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getSuspensionPeriod() {
		return suspensionPeriod;
	}

	public void setSuspensionPeriod(int suspensionPeriod) {
		this.suspensionPeriod = suspensionPeriod;
	}

	public Date getSuspensionStartDate() {
		return suspensionStartDate;
	}

	public void setSuspensionStartDate(Date suspensionStartDate) {
		this.suspensionStartDate = suspensionStartDate;
	}

	public Date getSuspensionEndDate() {
		return suspensionEndDate;
	}

	public void setSuspensionEndDate(Date suspensionEndDate) {
		this.suspensionEndDate = suspensionEndDate;
	}
	
}
