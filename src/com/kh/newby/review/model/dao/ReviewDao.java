package com.kh.newby.review.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.review.model.vo.Review;

import static com.kh.newby.common.JDBCTemplate.*;

public class ReviewDao {
	private Properties prop;
	
	public ReviewDao() {
		prop = new Properties();
		
		String filePath = ReviewDao.class.getResource("/config/review-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 *  리뷰 불러오기
	 * @param conn
	 * @param cno
	 * @return
	 */
	public ArrayList<Review> selectList(Connection conn, String cno) {
		ArrayList<Review> rList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, cno);
			rset = pstmt.executeQuery();
			
			rList = new ArrayList<Review>();
			
			while(rset.next()) {
				Review rv = new Review();
				
				rv.setCno(cno);
				rv.setRno(rset.getString("REV_NO"));
				rv.setRwriter(rset.getString("MEM_NAME"));
				rv.setRcontent(rset.getString("REV_CONTENT"));
				rv.setRpoint(rset.getDouble("REV_POINT"));
				rv.setRdate(rset.getDate("REV_DATE"));
				
				rList.add(rv);
			}
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return rList;
	}

}
