package com.kh.newby.Payment.model.dao;

import static com.kh.newby.common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.Class.model.vo.ClassVo;
import com.kh.newby.Payment.model.vo.Payment;

public class PaymentDao2 {

	private Properties prop;

	public ArrayList<ClassVo> getClassInfoList(Connection con) {

		ArrayList<ClassVo> classInfoList = null;
		ClassVo c = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("classInfoList");
		
		try {
			c = new ClassVo();
			pstmt = con.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				c.setFirstCategory(rset.getString("FIRST_CATEGORY"));
				c.setSecondCategory(rset.getString("SECOND_CATEGORY"));
				c.setThirdCategory(rset.getString("THIRD_CATEGORY"));
				c.setClassName(rset.getString("CLASS_NAME"));
				
				
			}
			
			
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
				
		
		return null;
	}
   
   
	
}
