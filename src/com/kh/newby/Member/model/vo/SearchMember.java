package com.kh.newby.Member.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class SearchMember implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -5388349856205693260L;

	private String m_no;
	private String m_id;
	private String m_nick;
	private String m_pwd;
	private String m_name;
	private String m_phone;
	private Date m_enrollDate;
	private int m_mileage;
	private String h_no;
	
	public SearchMember() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SearchMember(String m_name, String m_phone) {
		super();
		this.m_name = m_name;
		this.m_phone = m_phone;
	}
	
	
	
}
