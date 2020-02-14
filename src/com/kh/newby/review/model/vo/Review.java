package com.kh.newby.review.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Review implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4309324478222225087L;
	
	private String rno;
	private String cno;
	private String rwriter;
	private double rpoint;
	private String rcontent;
	private Date rdate;
	
	public Review() {
	}

	public Review(String rno, String cno, String rwriter, double rpoint, String rcontent, Date rdate) {
		this.rno = rno;
		this.cno = cno;
		this.rwriter = rwriter;
		this.rpoint = rpoint;
		this.rcontent = rcontent;
		this.rdate = rdate;
	}

	public String getRno() {
		return rno;
	}

	public void setRno(String rno) {
		this.rno = rno;
	}

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

	public String getRwriter() {
		return rwriter;
	}

	public void setRwriter(String rwriter) {
		this.rwriter = rwriter;
	}

	public double getRpoint() {
		return rpoint;
	}

	public void setRpoint(double rpoint) {
		this.rpoint = rpoint;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public Date getRdate() {
		return rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}

	@Override
	public String toString() {
		return "Review [cno=" + cno + ", rcontent=" + rcontent + ", rdate=" + rdate + ", rno=" + rno + ", rpoint="
				+ rpoint + ", rwriter=" + rwriter + ", getCno()=" + getCno() + ", getRcontent()=" + getRcontent()
				+ ", getRdate()=" + getRdate() + ", getRno()=" + getRno() + ", getRpoint()=" + getRpoint()
				+ ", getRwriter()=" + getRwriter() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

}
