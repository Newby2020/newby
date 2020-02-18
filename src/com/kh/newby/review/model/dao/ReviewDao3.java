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
import com.kh.newby.review.model.vo.Review3;

public class ReviewDao3 {

	   private Properties prop;

	   public ReviewDao3() {
	      prop = new Properties();

	      String filePath = ReviewDao3.class.getResource("/config/review-query2.properties").getPath();

	      try {
	         prop.load(new FileReader(filePath));
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	   }

	   public int insertReview(Connection conn, Review3 rv) {
		   int rResult = 0;

		   PreparedStatement pstmt = null;

		   String sql = prop.getProperty("insertReview");

		   try {
			   pstmt = conn.prepareStatement(sql);

			   //INSERT INTO REVIEW VALUES('R' || SEQ_RNO.NEXTVAL, 'C7', 'M1', 5, '참 특이한 수업이었어요. 재미있었습니다.', DEFAULT, 'Y');
			   pstmt.setString(1, rv.getcNo());
			   pstmt.setString(2, rv.getmNo());
			   pstmt.setDouble(3, rv.getrPoint());
			   pstmt.setString(4, rv.getrContent());

			   rResult =pstmt.executeUpdate();
		   } catch (SQLException e) {
			   e.printStackTrace();
		   } finally {
			   close(pstmt);
		   }

		   return rResult;
	   }

	public int updateRevYN(Connection conn, String psNo) {
		int revYN =0;

		PreparedStatement pstmt = null;

		String sql = prop.getProperty("updateRevYN");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, psNo);

			revYN = pstmt.executeUpdate();

		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return revYN;
	}

	public int updateHostPoint(Connection conn, String hno, float avgRpt) {
		int updHpt = 0;
		
		PreparedStatement pstmt = null;

		String sql = prop.getProperty("updateHostPoint");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setDouble(1, avgRpt);
			pstmt.setString(2, hno);

			updHpt = pstmt.executeUpdate();

		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return updHpt;
	}
	
	public String inCnoOutHno(Connection conn, String cno) {
		String hno = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("inCnoOutHno");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, cno);
			
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				hno =  rset.getString(1);
			}
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return hno;
	}

	public float avgRevPt(Connection conn, String hno) {
		float avgRpt = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("avgRevPt");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, hno);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				avgRpt = rset.getFloat(1);
			}


		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return avgRpt;
	}
}
