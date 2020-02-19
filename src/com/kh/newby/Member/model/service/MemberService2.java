package com.kh.newby.Member.model.service;

import static com.kh.newby.common.JDBCTemplate.close;
import static com.kh.newby.common.JDBCTemplate.commit;
import static com.kh.newby.common.JDBCTemplate.getConnection;
import static com.kh.newby.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.kh.newby.Member.model.dao.MemberDao2;
import com.kh.newby.Member.model.vo.Member3;

public class MemberService2 {

	private Connection con;
	private MemberDao2 mDao = new MemberDao2();
	public Member3 profile(String mno) {
		con = getConnection();
		Member3 m = new MemberDao2().profile(con, mno);
		if(m!=null) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return m;
	}
	public String modiNick(String mno, String nick) {
		con = getConnection();
		String newNick = null;
		newNick = new MemberDao2().modiNick(con, mno, nick);
		if(newNick!=null) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return newNick;
	}
	public String modiPhone(String mno, String tel) {
		con = getConnection();
		String newTel = null;
		newTel = new MemberDao2().modiPhone(con, mno, tel);
		
		if(newTel!=null) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return newTel;
	}
	public int checkNick(String nick) {
		Connection con = getConnection();
		
		int result = new MemberDao2().checkNick(con, nick);
		
		if(result >0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		System.out.println("service : "+result);
		return result;
	}
	

	
	
	
	
}














