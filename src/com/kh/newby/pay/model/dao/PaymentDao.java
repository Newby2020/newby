package com.kh.newby.pay.model.dao;

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

import com.kh.newby.classvo.model.vo.ClassVo;
import com.kh.newby.pay.model.vo.Payment;

public class PaymentDao {
	   private Properties prop;

	   public PaymentDao() {
	      prop = new Properties();

	      String filePath = PaymentDao.class.getResource("/config/payment-query.properties").getPath();

	      try {
	         prop.load(new FileReader(filePath));
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
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
		
		public ArrayList<Payment> payList(Connection con, int currentPage, int limit, String mno) {
			ArrayList<Payment> list = new ArrayList<>();
			Payment p = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("payList");
			try {
				pstmt = con.prepareStatement(sql);
				int startRow = (currentPage-1)*limit +1;
				int endRow = startRow + limit -1;
				pstmt.setString(1, mno);
				pstmt.setInt(2, endRow);
				pstmt.setInt(3, startRow);
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					p = new Payment();
					p.setpDate(rset.getString(2));
					p.setcName(rset.getString(3));
					p.setPayMile(rset.getInt(4));
					p.setSaveMile(rset.getInt(5));
					p.setTotalPrice(rset.getInt(6));
					list.add(p);
				}
				
			} catch(SQLException e) {
				e.printStackTrace();
			} finally {
				close(rset);
				close(pstmt);
			}
			return list;
		}


		public int getListCount1(Connection con, String mno) {
			// 총 게시글 수
			int listCount = 0;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			
			String sql = prop.getProperty("listCount1");
			
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


		public ArrayList<Payment> cancelList(Connection con, int currentPage, int limit, String mno) {
			ArrayList<Payment> list = new ArrayList<>();
			Payment p = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("cancelList");
			try {
				pstmt = con.prepareStatement(sql);
				int startRow = (currentPage-1)*limit +1;
				int endRow = startRow + limit -1;
				pstmt.setString(1, mno);
				pstmt.setInt(2, endRow);
				pstmt.setInt(3, startRow);
				rset = pstmt.executeQuery();
				
				while(rset.next()) {
					p = new Payment();
					p.setCancelDate(rset.getString("CANCELDATE"));
					p.setcName(rset.getString("CLASS_NAME"));
					p.setcDate(rset.getString("CS_CLASS_DATE"));
					p.setcStartTime(rset.getString("CS_STARTTIME"));
					p.setcEndTime(rset.getString("CS_ENDTIME"));
					p.setcTime(rset.getString("CLASS_TIME"));
					list.add(p);
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
