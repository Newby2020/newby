package com.kh.newby.inquiry.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.inquiry.model.vo.Inquiry;

import static com.kh.newby.common.JDBCTemplate.*;

public class InquiryDao {
	
	private Properties prop;
	
	public InquiryDao() {
		prop = new Properties();
		
		String filePath = InquiryDao.class.getResource("/config/inquiry-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 문의사항 정렬
	 * @param con
	 * @return
	 */
	public int getListCount(Connection con) {
		// 총 게시글 수
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
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}

	/**
	 * 문의사항 조회용
	 * @param con
	 * @param currentPage
	 * @param limit
	 * @return
	 */
	public ArrayList<Inquiry> inquirySelectList(Connection con, int currentPage, int limit) {
		ArrayList<Inquiry> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("inquirySelectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage-1)*limit +1;
			int endRow = startRow + limit -1;
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Inquiry>();
			
			while(rset.next()) {
				Inquiry i = new Inquiry();
				
				i.setIno(rset.getString("Q_NO"));
				i.setItitle(rset.getString("Q_TITLE"));
				i.setIwno(rset.getString("Q_WRITER_NO"));
				i.setIdate(rset.getDate("Q_DATE"));
				i.setIcontent(rset.getString("Q_CONTENT"));
				i.setIcomment(rset.getString("Q_COMMENT"));
				
				list.add(i);
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
	 * 문의사항 상세보기
	 * @param con
	 * @param ino
	 * @return
	 */
	public Inquiry inquirySelectOne(Connection con, String ino) {
		Inquiry i = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("inquirySelectOne");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, ino);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				i = new Inquiry();
				
				i.setIno(rset.getString("Q_NO"));
				i.setItitle(rset.getString("Q_TITLE"));
				i.setIwno(rset.getString("Q_WRITER_NO"));
				i.setIdate(rset.getDate("Q_DATE"));
				i.setIcontent(rset.getString("Q_CONTENT"));
				i.setIcomment(rset.getString("Q_COMMENT"));
				i.setIcdate(rset.getDate("Q_COMMENT_DATE"));
				
				
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
				
		return i;
	}

	/**
	 * 문의사항 추가용
	 * @param con
	 * @param b
	 * @return
	 */
	public int inquiryInsert(Connection con, Inquiry i) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("inquiryInsert");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, i.getItitle());
			pstmt.setString(2, i.getIwno());
			pstmt.setDate(3, i.getIdate());
			pstmt.setString(4, i.getIcontent());
			pstmt.setString(5, i.getIcomment());
			pstmt.setDate(6, i.getIcdate());
			
			
			result = pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/**
	 * 문의사항 수정용
	 * @param con
	 * @param i
	 * @return
	 */
	public int inquiryUpdate(Connection con, Inquiry i) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("inquiryUpdate");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, i.getItitle());
			pstmt.setString(2, i.getIcontent());
			pstmt.setString(3, i.getIno());
			
			result = pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/**
	 * 문의사항 삭제용
	 * @param con
	 * @param ino
	 * @return
	 */
	public int inquiryDelete(Connection con, String ino) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("inquiryDelete");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, ino);
			
			result = pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	

	


}














