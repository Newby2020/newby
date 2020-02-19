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

	/**
	 * 결제
	 * @param con
	 * @param cno
	 * @return
	 */
	public ClassVo3 getCno(Connection con, String cno) {

		ClassVo3 cvCno = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("cno");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, cno);
			
			rset = pstmt.executeQuery();
			
			cvCno = new ClassVo3();
			
			if(rset.next()) {
				cvCno.setClassImg(rset.getString("CLASS_IMG"));
				cvCno.setFirstCategory(rset.getString("FIRST_CATEGORY"));
				cvCno.setSecondCategory(rset.getString("SECOND_CATEGORY"));
				cvCno.setThirdCategory(rset.getString("THIRD_CATEGORY"));
				cvCno.setClassName(rset.getString("CLASS_NAME"));
				cvCno.setClassDate(rset.getString("PS_DATE"));
				cvCno.setClassStartTime(rset.getString("PS_STARTTIME"));
				cvCno.setClassEndTime(rset.getString("PS_ENDTIME"));
				cvCno.setClassPrice(rset.getInt("CLASS_PRICE"));
				cvCno.setPayMileage(rset.getInt("PAY_MILEAGE"));
				cvCno.setPaySaveMileage(rset.getInt("PAY_SAVE_MILEAGE"));
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return cvCno;
	}

	/**
	 * 결제 취소
	 * @param con
	 * @param psno
	 * @return
	 */
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
