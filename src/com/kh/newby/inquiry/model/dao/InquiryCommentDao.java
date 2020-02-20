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

	public ArrayList<Inquiry> selectList(Connection con, String ino) {
		ArrayList<Inquiry> clist = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, ino);
			
			rset = pstmt.executeQuery();
			
			clist = new ArrayList<Inquiry>();
			
			while(rset.next()) {
				Inquiry b = new Inquiry();
				b.setIcomment("Q_COMMENT");
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return clist;
	}

}
