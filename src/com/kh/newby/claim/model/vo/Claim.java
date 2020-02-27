package com.kh.newby.claim.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Claim implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4405732486995767570L;
	
	private Date cmDate;	
	private String cmClassNo;
	private String cmNo;
	private String cmWriterNo;
	private String cmTitle;
	private String cmContent;
	private Date handledDate;
	private String status;
	private int suspensionPeriod;
	private Date suspensionStartDate;
	private Date suspensionEndDate;
	
	private String cmDateStr;	
	private String handledDateStr;
	private String suspensionPeriodStr;
	private String suspensionStartDateStr;
	private String suspensionEndDateStr;
	

	public Claim() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Claim(Date cmDate, String cmClassNo, String cmNo, String cmWriterNo, String cmTitle, String cmContent,
			Date handledDate, String status, int suspensionPeriod, Date suspensionStartDate, Date suspensionEndDate) {
		super();
		this.cmDate = cmDate;
		this.cmClassNo = cmClassNo;
		this.cmNo = cmNo;
		this.cmWriterNo = cmWriterNo;
		this.cmTitle = cmTitle;
		this.cmContent = cmContent;
		this.handledDate = handledDate;
		this.status = status;
		this.suspensionPeriod = suspensionPeriod;
		this.suspensionStartDate = suspensionStartDate;
		this.suspensionEndDate = suspensionEndDate;
	}
	
	public String getCmClassNo() {
		return cmClassNo;
	}



	public void setCmClassNo(String cmClassNo) {
		this.cmClassNo = cmClassNo;
	}



	public Date getCmDate() {
		return cmDate;
	}

	public void setCmDate(Date cmDate) {
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
	
	public String getCmDateStr() {
		return cmDateStr;
	}



	public void setCmDateStr(String cmDateStr) {
		this.cmDateStr = cmDateStr;
	}



	public String getHandledDateStr() {
		return handledDateStr;
	}



	public void setHandledDateStr(String handledDateStr) {
		this.handledDateStr = handledDateStr;
	}



	public String getSuspensionPeriodStr() {
		return suspensionPeriodStr;
	}



	public void setSuspensionPeriodStr(String suspensionPeriodStr) {
		this.suspensionPeriodStr = suspensionPeriodStr;
	}



	public String getSuspensionStartDateStr() {
		return suspensionStartDateStr;
	}



	public void setSuspensionStartDateStr(String suspensionStartDateStr) {
		this.suspensionStartDateStr = suspensionStartDateStr;
	}



	public String getSuspensionEndDateStr() {
		return suspensionEndDateStr;
	}



	public void setSuspensionEndDateStr(String suspensionEndDateStr) {
		this.suspensionEndDateStr = suspensionEndDateStr;
	}




	
	
	
}
