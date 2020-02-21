package com.kh.newby.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

import oracle.net.aso.h;

public class Member implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -268615967411391384L;
	private String m_no;
	private String m_id;
	private String m_nick;
	private String m_pwd;
	private String m_name;
	private String m_phone;
	private Date m_enrollDate;
	private int m_mileage;
	private String h_no;
	
	public Member() {
		
	}

	public Member(String m_no, String m_id, String m_nick, String m_pwd, String m_name, String m_phone,
			Date m_enrollDate, int m_mileage, String h_no) {
		super();
		this.m_no = m_no;
		this.m_id = m_id;
		this.m_nick = m_nick;
		this.m_pwd = m_pwd;
		this.m_name = m_name;
		this.m_phone = m_phone;
		this.m_enrollDate = m_enrollDate;
		this.m_mileage = m_mileage;
		this.h_no = h_no;
	}
	
	

	public Member(String m_id, String m_pwd) {
		super();
		this.m_id=m_id;
		this.m_pwd=m_pwd;
	}
	
	



	public Member(String m_id, String m_pwd, String m_nick, String m_name, String m_phone) {
		super();
		this.m_id = m_id;
		this.m_nick = m_nick;
		this.m_pwd = m_pwd;
		this.m_name = m_name;
		this.m_phone = m_phone;
	}

	public String getH_no() {
		return h_no;
	}

	public void setH_no(String h_no) {
		this.h_no = h_no;
	}

	public String getM_no() {
		return m_no;
	}

	public void setM_no(String m_no) {
		this.m_no = m_no;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_nick() {
		return m_nick;
	}

	public void setM_nick(String m_nick) {
		this.m_nick = m_nick;
	}

	public String getM_pwd() {
		return m_pwd;
	}

	public void setM_pwd(String m_pwd) {
		this.m_pwd = m_pwd;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_phone() {
		return m_phone;
	}

	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}

	public Date getM_enrollDate() {
		return m_enrollDate;
	}

	public void setM_enrollDate(Date m_enrollDate) {
		this.m_enrollDate = m_enrollDate;
	}

	public int getM_mileage() {
		return m_mileage;
	}

	public void setM_mileage(int m_mileage) {
		this.m_mileage = m_mileage;
	}

	@Override
	public String toString() {
		return "Member [m_no=" + m_no + ", m_id=" + m_id + ", m_nick=" + m_nick + ", m_pwd=" + m_pwd + ", m_name="
				+ m_name + ", m_phone=" + m_phone + ", m_enrollDate=" + m_enrollDate + ", m_mileage=" + m_mileage
				+ ", h_no=" + h_no + "]";
	}
	
	
	
}
