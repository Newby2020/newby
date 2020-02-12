package com.kh.newby.admin.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.Member.model.vo.Member;
import com.kh.newby.admin.dao.AdminDao;

import static com.kh.newby.common.JDBCTemplate.*;

public class AdminService {
	
	private AdminDao aDao = new AdminDao();

	public int getListCount() {
		Connection con = getConnection();
		int listCount = aDao.getListCount(con);
		
		close(con);
		return listCount;
	}

	public ArrayList<Member> selectList(int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<Member> list = aDao.select(con, currentPage, limit);
		
		close(con);
		
		return list;
	}
	
	public int getUserCount() {
		
		Connection con = getConnection();
		int userCount = aDao.getUserCount(con);
		
		close(con);
		
		return userCount;
	}

	public int getHostCount() {
		
		Connection con = getConnection();
		int hostCount = aDao.getHostCount(con);
		
		close(con);
		
		return hostCount;
	}

	public int getClassCount() {

		Connection con = getConnection();
		int classCount = aDao.getClassCount(con);
		
		close(con);
		
		return classCount;
	}
	
}
