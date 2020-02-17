package com.kh.newby.admin.dao;

import static com.kh.newby.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.Host.model.vo.Host;
import com.kh.newby.Member.model.vo.Member;

public class AdminDao2 {
	
	private Properties prop;
	
	public AdminDao2() {
		prop = new Properties();
		
		String filePath = AdminDao2.class.getResource("/config/admin-query2.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int getUserCount(Connection con) {
		
		int userCount = 0;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("userCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				userCount = rset.getInt(1);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
 		} finally {
 			close(rset);
 			close(stmt);
 		}
		return userCount;
	}

	public int getHostCount(Connection con) {

		int hostCount = 0;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("hostCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				hostCount = rset.getInt(1);
			}

		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return hostCount;
	}

	public int getClassCount(Connection con) {

		int classCount = 0;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("classCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				classCount = rset.getInt(1);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return classCount;
	}

	public int getApprovalClassCount(Connection con) {
		
		int approvalClassCount = 0;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("approvalClassCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				approvalClassCount = rset.getInt(1);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return approvalClassCount;
	}

	
	/**
	 * 신고당한 호스트 수
	 * @param con
	 * @return
	 */
	public int getNotifiedHostCount(Connection con) {
		
		int notifiedHostCount = 0;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("notifiedHostCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				notifiedHostCount = rset.getInt(1);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return notifiedHostCount;
	}

	public int getRefundMoneyCount(Connection con) {

		int refundMoneyCount = 0;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("refundMoneyCountMoneyCount");
		
		return refundMoneyCount;
	}

	public int getNewInquiryCount(Connection con) {

		int newInquiryCount = 0;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("newInquiryCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				newInquiryCount = rset.getInt(1);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return newInquiryCount;
	}

	public ArrayList<Member> getTopUserList(Connection con) {

		ArrayList<Member> topUserList = null;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("topUserList");
		
		try {
			Member m = new Member();
			topUserList = new ArrayList<>();
			
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				m.setM_id(rset.getString("MEM_ID"));
				
				topUserList.add(m);
			}
		
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return topUserList;
	}

/*	@SuppressWarnings({ "resource", "null" })
	public ArrayList<Host> getBestHostList(Connection con) {
		
		ArrayList<Host> bestHostList = null;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("bestHostList");
		
		try {
			Host h = new Host();
			bestHostList = new ArrayList<>();
			
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			while(rset.next()) {
				h.setHostMemId(rset.getString("HOST_MEM_ID"));
				
				bestHostList.add(h);
			}

		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return null;
	}*/

}
