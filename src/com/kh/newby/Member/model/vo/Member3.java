package com.kh.newby.Member.model.vo;

import java.io.Serializable;

public class Member3 implements Serializable{


	/**
	 * 
	 */
	private static final long serialVersionUID = 2234618216468304958L;
	private String m_no;
	private String m_id;
	private String m_nick;
	private String m_pwd;
	private String m_name;
	private String tel1;
	private String tel2;
	private String tel3;
	
	
	public Member3() {
		
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
	
	public String getTel1() {
		return tel1;
	}

	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}

	public String getTel2() {
		return tel2;
	}

	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}

	public String getTel3() {
		return tel3;
	}

	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}

	@Override
	public String toString() {
		return "Member2 [m_no=" + m_no + ", m_id=" + m_id + ", m_nick=" + m_nick + ", m_pwd=" + m_pwd + ", m_name="
				+ m_name + ", tel1=" + tel1 + ", tel2=" + tel2 + ", tel3=" + tel3 + "]";
	}


}

