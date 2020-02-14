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

import com.kh.newby.Class.model.vo.ClassVo;
import com.kh.newby.Member.model.vo.Member;

public class AdminDao {
	
	private Properties prop;
	
	public AdminDao() {
		prop = new Properties();
		
		String filePath = AdminDao.class.getResource("/config/admin-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int getListCount(Connection con) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("listCount");

		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return listCount;
	}

	public ArrayList<Member> select(Connection con, int currentPage, int limit) {
		ArrayList<Member> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
//			System.out.println(startRow);
//			System.out.println(endRow);
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Member>();
			
			while(rset.next()) {
				Member m = new Member();
				
				m.setM_no(rset.getString("MEM_NO"));
				m.setM_id(rset.getString("MEM_ID"));
				m.setM_name(rset.getString("MEM_NAME"));
				m.setM_phone(rset.getString("PHONE"));
				m.setM_enrollDate(rset.getDate("ENROLLDATE"));
				m.setM_mileage(rset.getInt("MILEAGE"));
				m.setH_no(rset.getString("MEM_HOST_NO"));
				
				list.add(m);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
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

	public ArrayList<ClassVo> selectClassList(Connection con, int acc) {
		ArrayList<ClassVo> list = null;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = null;
		if(acc > 0) sql = prop.getProperty("YNVauleIsNull");
		else sql = prop.getProperty("YNVauleIsNOTNull");
		
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
	
			while(rset.next()) {
				ClassVo cv = new ClassVo();
				
				cv.setClassNo(rset.getString("CLASS_NO"));
				cv.setClassHostNo(rset.getString("CLASS_HOST_NO"));
				cv.setClassName(rset.getString("CLASS_NAME"));
				cv.setClassIntro(rset.getString("CLASS_INTRO"));
				cv.setClassEnrollDate(rset.getDate("CLASS_ENROLLDATE"));
				cv.setClassStatus(rset.getString("CA_APPROVAL_YN"));
				cv.setRejectReason(rset.getString("CA_REJECT_REASON"));
				cv.setCaNo(rset.getString("CA_CLASS_CHECK_NO"));
				
				list.add(cv);
				System.out.println("admindao");
				System.out.println(list);
				
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return list;
	}
}
