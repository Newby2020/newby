package com.kh.newby.host.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Host implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1996845568381370301L;
	
	private String hostNo;
	private String hostMemId;
	private String bank;
	private String accountHolder;
	private String accountNum;
	private String hostIntro;
	private double avgReview;
	private Date hostEnrolldate;
	private Date startDate;
	private Date finishDate;
	
	public Host() {
		
	}

	public Host(String hostNo, String hostMemId, String bank, String accountHolder, String accountNum, String hostIntro,
			double avgReview, Date hostEnrolldate, Date startDate, Date finishDate) {
		super();
		this.hostNo = hostNo;
		this.hostMemId = hostMemId;
		this.bank = bank;
		this.accountHolder = accountHolder;
		this.accountNum = accountNum;
		this.hostIntro = hostIntro;
		this.avgReview = avgReview;
		this.hostEnrolldate = hostEnrolldate;
		this.startDate = startDate;
		this.finishDate = finishDate;
	}


	
	public Host(String bank, String accountHolder, String accountNum, String hostIntro) {
		super();
		this.bank = bank;
		this.accountHolder = accountHolder;
		this.accountNum = accountNum;
		this.hostIntro = hostIntro;
	}

	public String getHostNo() {
		return hostNo;
	}

	public void setHostNo(String hostNo) {
		this.hostNo = hostNo;
	}

	public String getHostMemId() {
		return hostMemId;
	}

	public void setHostMemId(String hostMemId) {
		this.hostMemId = hostMemId;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getAccountHolder() {
		return accountHolder;
	}

	public void setAccountHolder(String accountHolder) {
		this.accountHolder = accountHolder;
	}

	public String getAccountNum() {
		return accountNum;
	}

	public void setAccountNum(String accountNum) {
		this.accountNum = accountNum;
	}

	public String getHostIntro() {
		return hostIntro;
	}

	public void setHostIntro(String hostIntro) {
		this.hostIntro = hostIntro;
	}

	

	
	public double getAvgReview() {
		return avgReview;
	}

	public void setAvgReview(double avgReview) {
		this.avgReview = avgReview;
	}

	public Date getHostEnrolldate() {
		return hostEnrolldate;
	}

	public void setHostEnrolldate(Date hostEnrolldate) {
		this.hostEnrolldate = hostEnrolldate;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getFinishDate() {
		return finishDate;
	}

	public void setFinishDate(Date finishDate) {
		this.finishDate = finishDate;
	}

	@Override
	public String toString() {
		return "Host [hostNo=" + hostNo + ", hostMemId=" + hostMemId + ", bank=" + bank + ", accountHolder="
				+ accountHolder + ", accountNum=" + accountNum + ", hostIntro=" + hostIntro + ", avgReview=" + avgReview
				+ ", hostEnrolldate=" + hostEnrolldate + ", startDate=" + startDate + ", finishDate=" + finishDate
				+ "]";
	}
	
	
}
