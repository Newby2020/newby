package com.kh.newby.pay.model.dao;

import static com.kh.newby.common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.classvo.model.vo.ClassVo;

public class PaymentDao2 {

	private Properties prop;

	public ArrayList<ClassVo> getClassInfoList(Connection con, String cno) {

		ArrayList<ClassVo> classInfoList = null;
		ClassVo c = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("classInfoList");
		
		try {
			classInfoList = new ArrayList<ClassVo>();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, cno);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				c = new ClassVo();
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
}
