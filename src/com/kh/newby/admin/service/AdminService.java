package com.kh.newby.admin.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.Member.model.vo.Member;
import com.kh.newby.admin.dao.AdminDao;
import com.kh.newby.claim.model.vo.Claim;
import com.kh.newby.classvo.model.vo.ClassVo;

import static com.kh.newby.common.JDBCTemplate.*;

public class AdminService {
	
	private AdminDao aDao = new AdminDao();

//-------------------------- UserList -----------------------------//
	public int getUserListCount() {
		Connection con = getConnection();
		int listCount = aDao.getUserListCount(con);
		
		close(con);
		return listCount;
	}

	public ArrayList<Member> selectUserList(int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<Member> list = aDao.selectUserList(con, currentPage, limit);
		
		close(con);
		
		return list;
	}

//-------------------------- ClaimList -----------------------------//	
	public int getClaimListCount() {
		Connection con = getConnection();
		int listCount = aDao.getClaimListCount(con);
		
		close(con);
		return listCount;
	}

	public ArrayList<Claim> selectClaimList(int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<Claim> list = aDao.selectClaimList(con, currentPage, limit);
		
		close(con);
		return list;
	}

//-------------------------- ClassList -----------------------------//	
	public int getClassListCount() {
		Connection con = getConnection();
		int listCount = aDao.getClassListCount(con);
		
		close(con);		
		return listCount;
	}

	public ArrayList<ClassVo> selectClassList(int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<ClassVo> list = aDao.selectClassList(con, currentPage, limit);
		
		close(con);
		return list;
	}

	
//-------------------------- ClassApplyList -----------------------------//	
	public int getClassApplyListCount() {
		Connection con = getConnection();
		
		int listCount = aDao.getClassApplyListCount(con);
		
		close(con);
				
		return listCount;
	}

	public ArrayList<ClassVo> selectClassApplyList(int currentPage, int limit) {
		Connection con = getConnection();
		ArrayList<ClassVo> list = aDao.selectClassApplyList(con, currentPage, limit);
		
		close(con);
		
		return list;
	}

	public ClassVo selectOne(String cno) {
		Connection con = getConnection();
		
		ClassVo c = aDao.selectOne(con, cno);
		
		close(con);
		
		return c;
	}

//-------------------------- Approve -----------------------------//	
	public int setArrove(String cno) {
		Connection con = getConnection();
		
		int result = aDao.setApprove(con, cno);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result ;
	}
	
}
