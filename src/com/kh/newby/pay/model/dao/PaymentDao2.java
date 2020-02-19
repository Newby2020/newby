package com.kh.newby.pay.model.dao;

import static com.kh.newby.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.classvo.model.vo.ClassVo3;

public class PaymentDao2 {
	
	private Properties prop;
	
	public PaymentDao2() {
		prop = new Properties();
		String filePath = ClassVo3.class.getResource("/config/payment-query2.properties").getPath();
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<ClassVo3> getClassInfoList(Connection con, String cno) {
		
		

		ArrayList<ClassVo3> classInfoList = null;
		ClassVo3 c = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("classInfoList");
		
		try {
			classInfoList = new ArrayList<ClassVo3>();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, cno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				c = new ClassVo3();
				c.setFirstCategory(rset.getString("FIRST_CATEGORY"));
				c.setSecondCategory(rset.getString("SECOND_CATEGORY"));
				c.setThirdCategory(rset.getString("THIRD_CATEGORY"));
				c.setClassName(rset.getString("CLASS_NAME"));
				c.setClassPrice(rset.getInt("CLASS_PRICE"));
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return classInfoList;
	}

	public ClassVo3 getClassVo(Connection con, String cno) {

		ClassVo3 cv = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("ClassVo");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, cno);
			
			rset = pstmt.executeQuery();
			
			cv = new ClassVo3();
			
			if(rset.next()) {
				cv.setFirstCategory(rset.getString("FIRST_CATEGORY"));
				cv.setSecondCategory(rset.getString("SECOND_CATEGORY"));
				cv.setThirdCategory(rset.getString("THIRD_CATEGOTY"));
				cv.setClassName(rset.getString("CLASS_NAME"));
				cv.setClassPrice(rset.getInt("CLASS_PRICE"));
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return cv;
	}

	public ClassVo3 getPsno(Connection con, String psno) {
		
		ClassVo3 cvPsno = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("psno");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, psno);
			
			rset = pstmt.executeQuery();
			
			cvPsno = new ClassVo3();
			
			if(rset.next()) {
				cvPsno.setClassImg(rset.getString("CLASS_IMG"));
				cvPsno.setFirstCategory(rset.getString("FIRST_CATEGORY"));
				cvPsno.setSecondCategory(rset.getString("SECOND_CATEGORY"));
				cvPsno.setThirdCategory(rset.getString("THIRD_CATEGORY"));
				cvPsno.setClassName(rset.getString("CLASS_NAME"));
				cvPsno.setClassDate(rset.getString("PS_DATE"));
				cvPsno.setClassStartTime(rset.getString("PS_STARTTIME"));
				cvPsno.setClassEndTime(rset.getString("PS_ENDTIME"));
				cvPsno.setClassPrice(rset.getInt("CLASS_PRICE"));
				cvPsno.setPayMileage(rset.getInt("PAY_MILEAGE"));
				cvPsno.setPaySaveMileage(rset.getInt("PAY_SAVE_MILEAGE"));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return cvPsno;
	}

}
