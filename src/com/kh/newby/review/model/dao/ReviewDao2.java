package com.kh.newby.review.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.newby.common.JDBCTemplate.*;

import com.kh.newby.Class.model.dao.ClassDao2;
import com.kh.newby.review.model.vo.Review2;

public class ReviewDao2 {

	   private Properties prop;

	   public ReviewDao2() {
	      prop = new Properties();

	      String filePath = ClassDao2.class.getResource("/config/review-query2.properties").getPath();

	      try {
	         prop.load(new FileReader(filePath));
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	   }
	public ArrayList<Review2> ReviewList(Connection con, String mno) {
		ArrayList<Review2> list = new ArrayList<>();
		Review2 r = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("reviewClassList");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mno);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				r = new Review2();
				r.setRno(rset.getString("REV_NO"));
				r.setRdate(rset.getDate("REV_DATE"));
				r.setCname(rset.getString("CLASS_NAME"));
				list.add(r);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

}
