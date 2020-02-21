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
	   
		public ArrayList<Payment> payList(Connection con, String mno) {
			ArrayList<Payment> list = new ArrayList<>();
			Payment p = null;
			int mile =0;
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			String sql = prop.getProperty("payList");
			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, mno);
				rset = pstmt.executeQuery();
				while(rset.next()) {
					p = new Payment();
					p.setMileage(mile);
					p.setpDate(rset.getDate("PAY_DATE"));
					p.setCName(rset.getString("CLASS_NAME"));
					p.setPayMile(rset.getInt("PAY_MILEAGE"));
					p.setSaveMile(rset.getInt("PAY_SAVE_MILEAGE"));
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
