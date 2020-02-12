package com.kh.newby.inquiry.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Board implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1119787449607410193L;
	
	private String ino;
	private String ititle;
	private String iwno;
	private Date idate;
	private String icontent;
	private String icomment;
	
	public Board() {
		
	}

	public Board(String ino, String ititle, String iwno, Date idate, String icontent, String icomment) {
		super();
		this.ino = ino;
		this.ititle = ititle;
		this.iwno = iwno;
		this.idate = idate;
		this.icontent = icontent;
		this.icomment = icomment;
	}

	public String getIno() {
		return ino;
	}

	public void setIno(String ino) {
		this.ino = ino;
	}

	public String getItitle() {
		return ititle;
	}

	public void setItitle(String ititle) {
		this.ititle = ititle;
	}

	public String getIwno() {
		return iwno;
	}

	public void setIwno(String iwno) {
		this.iwno = iwno;
	}

	public Date getIdate() {
		return idate;
	}

	public void setIdate(Date idate) {
		this.idate = idate;
	}

	public String getIcontent() {
		return icontent;
	}

	public void setIcontent(String icontent) {
		this.icontent = icontent;
	}

	public String getIcomment() {
		return icomment;
	}

	public void setIcomment(String icomment) {
		this.icomment = icomment;
	}

	@Override
	public String toString() {
		return "Board [ino=" + ino + ", ititle=" + ititle + ", iwno=" + iwno + ", idate=" + idate + ", icontent="
				+ icontent + ", icomment=" + icomment + "]";
	}
	
	
	
	
	
}