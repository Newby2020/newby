package com.kh.newby.admin.service;

import java.sql.Connection;

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

}
