package com.kh.newby.report.model.dao;

import static com.kh.newby.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.claim.model.vo.Claim;
import com.kh.newby.notice.model.vo.Notice;

import static com.kh.newby.common.JDBCTemplate.*;
public class ReportDao {

	private Properties prop;

	public  ReportDao() {
		prop = new Properties();

		String filePath = Notice.class.getResource("/config/report-query.properties").getPath();

		try {
			prop.load(new FileReader(filePath));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}

	public int getListCount(Connection con) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("listCount");

		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);

			if(rset.next()) {
				listCount = rset.getInt(1);
			}

		} catch(SQLException e){
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}

		return listCount;
	}

	public ArrayList<Claim> reportSelectList(Connection con, int currentPage, int limit) {
		ArrayList<Claim> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
				
		// 관리자 일떄, 일반사용자일때
		
		String sql = prop.getProperty("reportSelectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit -1;
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Claim>();
			
			while(rset.next()) {
				Claim c = new Claim();
				
				c.setCmNo(rset.getString("CLAIM_NO"));
				c.setCmClassNo(rset.getString("CLAIM_CLASS_NO"));
				c.setCmWriterNo(rset.getString("CLAIM_WRITER_NO"));
				c.setCmTitle(rset.getString("CLAIM_TITLE"));
				c.setCmContent(rset.getString("CLAIM_CONTENT"));
				c.setCmDate(rset.getDate("CLAIM_DATE"));
				c.setHandledDate(rset.getDate("HANDLED_DATE"));
				c.setStatus(rset.getString("CLAIM_STATUS"));
				c.setSuspensionPeriod(rset.getInt("SUSPENSION_PERIOD"));
				c.setSuspensionStartDate(rset.getDate("SUSPENSION_START_DATE"));
				c.setSuspensionEndDate(rset.getDate("SUSPENSION_END_DATE"));
				
				list.add(c);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);	
		}
		
		return list;
	}

	public int reportInsert(Connection con, Claim c) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("reportInsert");
		
		try {
			pstmt = con.prepareStatement(sql);
			
//			pstmt.setString(1, c.getCmNo());
			pstmt.setString(1, c.getCmClassNo());
			pstmt.setString(2, c.getCmWriterNo());
			pstmt.setString(3, c.getCmTitle());
			pstmt.setString(4, c.getCmContent());
			pstmt.setDate(5, c.getCmDate());
			
			result = pstmt.executeUpdate();
		} catch(SQLException e) {
			
		}finally {
			close(pstmt);
		}
		
		return result;
	}

}
