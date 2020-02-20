package com.kh.newby.Member.model.service;

import java.sql.Connection;

import com.kh.newby.Member.model.dao.MemberDao;
import com.kh.newby.Member.model.exception.MemberException;
import com.kh.newby.Member.model.vo.Member;
import static com.kh.newby.common.JDBCTemplate.*;

public class MemberService {

	private Connection con;
	private MemberDao mDao = new MemberDao();
	
	public Member selectMember(Member m) throws MemberException {
		con = getConnection();
		
		Member result = mDao.selectMember(con,m);
		
		close(con);
		
		if(result == null) {
			throw new MemberException("회원 아이디나 비밀번호가 올바르지 않습니다.");
		}
		
		return result;
	}

	public int insertMember(Member m) throws MemberException {
		con = getConnection();
		int result = mDao.insertMember(con, m);
		
		if(result > 0 ) commit(con);
		else rollback(con);

		close(con);
		
		return result;
		
	}

	public int idDupCheck(String id) {
		Connection con = getConnection();
		
		int result = mDao.idDupCheck(con,id);
		
		close(con);

		return result;
	}

	public int nickDupCheck(String nick) {
		
		Connection con = getConnection();
		
		int result = mDao.nickDupCheck(con,nick);
		
		close(con);
		
		
		return result;
	}

	public Member searchId(String name, String phone) throws MemberException {
		
		con = getConnection();
		
		Member result = mDao.searchId(con, name, phone);
		close(con);
		if(result==null) {
			System.out.println("null일 때 서비스");
			throw new MemberException("아이디가 존재하지 않습니다.");
		}
		

		return result;
	}

	
	
	
	
}














