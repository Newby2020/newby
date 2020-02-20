package com.kh.newby.notice.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.notice.model.vo.Notice;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

import static com.kh.newby.common.JDBCTemplate.*;


public class NoticeDao {
	
	private Properties prop;
	
	public NoticeDao() {
		prop = new Properties();
		
		String filePath = Notice.class.getResource("/config/notice-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 공지사항 조회
	 * @param con
	 * @return
	 */
	public ArrayList<Notice> noticeSelectList(Connection con, int currentPage, int limit) {
		ArrayList<Notice> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("noticeSelectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit -1;
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Notice>();
			
			while(rset.next()) {
				Notice n = new Notice();
				
				n.setNno(rset.getString("NOTICE_NO"));
				n.setNtitle(rset.getString("NO_TITLE"));
				n.setNwriter(rset.getString("NO_WRITER"));
				n.setNdate(rset.getDate("NO_DATE"));
				n.setNcount(rset.getInt("NO_COUNT"));
				n.setNcontent(rset.getString("NO_CONTENT"));
				
				list.add(n);
				
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	/**
	 * 총 게시글 수
	 * @param con
	 * @return
	 */
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

	public Notice noticeSelectOne(Connection con, String nno) {
		Notice n = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
				
		String sql = prop.getProperty("noticeSelectOne");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, nno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				n = new Notice();
				
				n.setNno(rset.getString("NOTICE_NO"));
				n.setNtitle(rset.getString("NO_TITLE"));
				n.setNwriter(rset.getString("NO_WRITER"));
				n.setNdate(rset.getDate("NO_DATE"));
				n.setNcount(rset.getInt("NO_COUNT"));
				n.setNcontent(rset.getString("NO_CONTENT"));
				
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return n;
	}

	/**
	 * 조회 카운트 용
	 * @param con
	 * @param nno
	 * @return
	 */
	public int updateReadCount(Connection con, String nno) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateReadCount");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, nno);
			result = pstmt.executeUpdate();
			
		} catch(SQLException e){
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int noticeInsert(Connection con, Notice n) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("noticeInsert");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, n.getNtitle());
			pstmt.setString(2, n.getNwriter());
			pstmt.setDate(3, n.getNdate());
			pstmt.setString(4, n.getNcontent());
			
			result = pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int noticeUpdate(Connection con, Notice n) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("noticeUpdate");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, n.getNtitle());
			pstmt.setString(2, n.getNcontent());
			pstmt.setString(3, n.getNno());
			
			result = pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int noticeDelete(Connection con, String nno) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("noticeDelete");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, nno);
			
			result = pstmt.executeUpdate(); 
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	

}
