package com.kh.newby.admin.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.Member.model.vo.Member;
import com.kh.newby.admin.dao.AdminDao;
import com.kh.newby.claim.model.vo.Claim;

import static com.kh.newby.common.JDBCTemplate.*;

public class AdminService {
	
	private AdminDao aDao = new AdminDao();

//-------------------------- User -----------------------------//
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

//-------------------------- Claim -----------------------------//	
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
	
}
