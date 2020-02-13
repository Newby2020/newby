package com.kh.newby.notice.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Notice implements Serializable{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 252232809857246861L;
	
	private String nno;
	private String ntitle;
	private String nwriter;
	private Date ndate;
	private int ncount;
	private String ncontent;
	
	public Notice() {
		
	}

	/**
	 * 공지사항 등록용
	 * @param ntitle
	 * @param nwriter
	 * @param ncontent
	 */
	public Notice(String ntitle, String nwriter, String ncontent) {
		super();
		this.ntitle = ntitle;
		this.nwriter = nwriter;
		this.ncontent = ncontent;
	}

	/**
	 * 공지사항 조회용
	 * @param nno
	 * @param ntitle
	 * @param nwriter
	 * @param ndate
	 * @param ncount
	 * @param ncontent
	 */
	public Notice(String nno, String ntitle, String nwriter, Date ndate, int ncount, String ncontent) {
		super();
		this.nno = nno;
		this.ntitle = ntitle;
		this.nwriter = nwriter;
		this.ndate = ndate;
		this.ncount = ncount;
		this.ncontent = ncontent;
	}

	public String getNno() {
		return nno;
	}

	public void setNno(String nno) {
		this.nno = nno;
	}

	public String getNtitle() {
		return ntitle;
	}

	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}

	public String getNwriter() {
		return nwriter;
	}

	public void setNwriter(String nwriter) {
		this.nwriter = nwriter;
	}

	public Date getNdate() {
		return ndate;
	}

	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}

	public int getNcount() {
		return ncount;
	}

	public void setNcount(int ncount) {
		this.ncount = ncount;
	}

	public String getNcontent() {
		return ncontent;
	}

	public void setNcontent(String ncontent) {
		this.ncontent = ncontent;
	}

	@Override
	public String toString() {
		return "Notice [nno=" + nno + ", ntitle=" + ntitle + ", nwriter=" + nwriter + ", ndate=" + ndate + ", ncount="
				+ ncount + ", ncontent=" + ncontent + "]";
	}
	
	
}
