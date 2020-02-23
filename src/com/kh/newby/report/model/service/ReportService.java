package com.kh.newby.report.model.service;

import com.kh.newby.report.model.dao.ReportDao;

import com.kh.newby.claim.model.vo.Claim;
import static com.kh.newby.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

public class ReportService {
	private ReportDao rDao = new ReportDao();

	public int getListCount() {
		Connection con = getConnection();
		int listCount = rDao.getListCount(con);
		
		close(con);
	
		return listCount;
	}

	public ArrayList<Claim> reportSelectList(int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<Claim> list = rDao.reportSelectList(con,currentPage,limit);
		
		close(con);
		
		return list;
	}
	
	
}
