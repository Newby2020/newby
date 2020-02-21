package com.kh.newby.inquiry.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.inquiry.model.vo.Inquiry;

import static com.kh.newby.common.JDBCTemplate.*;

public class InquiryCommentDao {

	private Properties prop;
	
	public InquiryCommentDao() {
		prop = new Properties();
		
		String filePath = InquiryCommentDao.class.getResource("/config/inquiry-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertComment(Connection con, Inquiry bco) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertComment");
		
		/*try {
			
		} catch(SQLException e) {
			pstmt.setNull(, );
		}*/
		
		return result;
	}

	public ArrayList<Inquiry> inquirySelectComList(Connection con, String ino) {
		ArrayList<Inquiry> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("inquirySelectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, ino);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Inquiry>();
			
			while(rset.next()) {
				Inquiry i = new Inquiry();
				i.setIcomment(rset.getString("Q_COMMENT"));
				i.setIcdate(rset.getDate("Q_COMMENT_DATE"));
				
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

	public int inquiryComment(Connection con, Inquiry i) {
		int result = 0;
		PreparedStatement pstmt = null;
				
		String sql = prop.getProperty("inquiryComment");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, i.getIcomment());
			pstmt.setDate(2, i.getIcdate());
			pstmt.setString(3, i.getIno());
			
			result = pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
}
