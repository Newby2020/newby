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

import com.kh.newby.classvo.model.dao.ClassDao2;
import com.kh.newby.review.model.vo.Review2;

public class ReviewDao2 {

	   private Properties prop;

	   public ReviewDao2() {
	      prop = new Properties();

	      String filePath = ReviewDao2.class.getResource("/config/review-query3.properties").getPath();

	      try {
	         prop.load(new FileReader(filePath));
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	   }
	public ArrayList<Review2> ReviewList(Connection con, int currentPage, int limit, String mno) {
		ArrayList<Review2> list = new ArrayList<>();
		Review2 r = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("reviewClassList");
		
		try {
			pstmt = con.prepareStatement(sql);
			int startRow = (currentPage-1)*limit +1;
			int endRow = startRow + limit -1;
			pstmt.setString(1, mno);
			pstmt.setInt(2, endRow);
			pstmt.setInt(3, startRow);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				r = new Review2();
				r.setcNo(rset.getString("CLASS_NO"));
				r.setcName(rset.getString("CLASS_NAME"));
				r.setcTime(rset.getInt("CLASS_TIME"));
				r.setPsDate(rset.getString("CS_CLASS_DATE"));
				r.setPsStartTime(rset.getString("CS_STARTTIME"));
				r.setPsEndTime(rset.getString("CS_ENDTIME"));
				r.setPsNo(rset.getString("PS_NO"));
				r.setPsDatePlus10(rset.getString("psDatePlus"));
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
	public int getListCount(Connection con, String mno) {
		// 총 게시글 수
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("listCount");
		
		try {
			
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, mno);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return listCount;
	}

}
