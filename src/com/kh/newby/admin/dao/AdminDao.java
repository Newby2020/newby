package com.kh.newby.admin.dao;

import static com.kh.newby.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.Member.model.vo.Member;
import com.kh.newby.claim.model.vo.Claim;

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

//-------------------------- User -----------------------------//
	public int getUserListCount(Connection con) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("userListCount");

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

	public ArrayList<Member> selectUserList(Connection con, int currentPage, int limit) {
		ArrayList<Member> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectUserList");
		
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

	
//-------------------------- claim -----------------------------//
	
	public int getClaimListCount(Connection con) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("claimListCount");
		
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

	public ArrayList<Claim> selectClaimList(Connection con, int currentPage, int limit) {
		ArrayList<Claim> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectClaimList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			
//			System.out.println(startRow);
//			System.out.println(endRow);
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Claim>();
			
			while(rset.next()) {
				Claim c = new Claim();
				
				c.setCmDate(rset.getDate("CLAIM_DATE"));
				c.setCmNo(rset.getString("CLAIM_NO"));
				c.setCmWriterNo(rset.getString("CLAIM_WRITER_NO"));
				c.setCmTitle(rset.getString("CLAIM_TITLE"));
				c.setStatus(rset.getString("CLAIM_STATUS"));
				
				c.setHandledDate(rset.getDate("HANDLED_DATE"));
				c.setSuspensionPeriod(rset.getInt("SUSPENSION_PERIOD"));
				c.setSuspensionStartDate(rset.getDate("SUSPENSION_START_DATE"));
				c.setSuspensionEndDate(rset.getDate("SUSPENSION_END_DATE"));
				
//				if(rset.getDate("HANDLED_DATE") instanceof Date) {
//					c.setHandledDate(rset.getDate("HANDLED_DATE"));
//				} else {
//					c.setHandledDateNull(rset.getString("HANDLED_DATE"));
//				}
				
				
				
				
				list.add(c);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return list;
	}
	
}
