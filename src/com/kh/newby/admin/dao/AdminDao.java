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

import com.kh.newby.member.model.vo.Member;
import com.kh.newby.claim.model.vo.Claim;
import com.kh.newby.classvo.model.vo.ClassVo;

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

//-------------------------- UserList -----------------------------//
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
				m.setM_enrollDateStr(rset.getString("ENROLLDATE"));
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
	
	public int getSearchedUserListCount(Connection con, String searchValue) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("serchedUserListCount");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1,searchValue);
			pstmt.setString(2,searchValue);
			pstmt.setString(3,searchValue);
			pstmt.setString(4,searchValue);
			pstmt.setString(5,searchValue);
			pstmt.setString(6,searchValue);
			pstmt.setString(7,searchValue);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}	

	public ArrayList<Member> searchUser(Connection con, int currentPage, int limit, String searchValue) {
		ArrayList<Member> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("serchUser");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			System.out.println(startRow);
			System.out.println(endRow);
		
			
			pstmt.setString(1,searchValue);
			pstmt.setString(2,searchValue);
			pstmt.setString(3,searchValue);
			pstmt.setString(4,searchValue);
			pstmt.setString(5,searchValue);
			pstmt.setString(6,searchValue);
			pstmt.setString(7,searchValue);
			pstmt.setInt(8,endRow);
			pstmt.setInt(9,startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Member>();
			
			while(rset.next()) {
				Member m = new Member();
				
				m.setM_no(rset.getString("MEM_NO"));
				m.setM_id(rset.getString("MEM_ID"));
				m.setM_name(rset.getString("MEM_NAME"));
				m.setM_phone(rset.getString("PHONE"));
				m.setM_enrollDateStr(rset.getString("ENROLLDATE"));
				m.setM_mileage(rset.getInt("MILEAGE"));
				m.setH_no(rset.getString("MEM_HOST_NO"));
				
				list.add(m);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}		
		return list;
	}

//-------------------------- ClassApplyList -----------------------------//	
	public int getClassApplyListCount(Connection con) {
		int listCount = 0;
		
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("classApplyListCount");
		
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

	public ArrayList<ClassVo> selectClassApplyList(Connection con, int currentPage, int limit) {
		ArrayList<ClassVo> list = null;
		 
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectClassApplyList");
		 
		try {
			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit -1;				
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<ClassVo>();
			
			while(rset.next()) {
				ClassVo c = new ClassVo();
								
				c.setClassEnrollDateStr(rset.getString("CLASS_ENROLLDATE"));
				c.setClassNo(rset.getString("CLASS_NO"));
				c.setClassHostNo(rset.getString("CLASS_HOST_NO"));
				c.setClassStatus(rset.getString("CLASS_STATUS"));
				
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
	
	public int setApprove(Connection con, String cno) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("setApprove");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, cno);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int setReject(Connection con, String cno, String rReason) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("setReject");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, rReason);
			pstmt.setString(2, cno);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}	

	public int getSearchedAppliedClassListCount(Connection con, String searchValue) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("serchedApplyListCount");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1,searchValue);
			pstmt.setString(2,searchValue);
			pstmt.setString(3,searchValue);
			pstmt.setString(4,searchValue);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}

	public ArrayList<ClassVo> searchAppliedClass(Connection con, int currentPage, int limit, String searchValue) {
		ArrayList<ClassVo> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("serchAppliedClass");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit -1;							
			
			pstmt.setString(1,searchValue);
			pstmt.setString(2,searchValue);
			pstmt.setString(3,searchValue);
			pstmt.setString(4,searchValue);
			pstmt.setInt(5, endRow);
			pstmt.setInt(6, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<ClassVo>();
			
			while(rset.next()) {
				ClassVo c = new ClassVo();
				
				c.setClassEnrollDateStr(rset.getString("CLASS_ENROLLDATE"));
				c.setClassNo(rset.getString("CLASS_NO"));
				c.setClassHostNo(rset.getString("CLASS_HOST_NO"));
				c.setClassStatus(rset.getString("CLASS_STATUS"));
				
				list.add(c);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}		
		return list;
	}
//-------------------------- ClassList -----------------------------//	
	public int getClassListCount(Connection con) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("classListCount");
		
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

	public ArrayList<ClassVo> selectClassList(Connection con, int currentPage, int limit) {
		ArrayList<ClassVo> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectClassList");
		
		try {
			int startRow = (currentPage - 1) * limit + 1;
			int endRow = startRow + limit - 1;
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<ClassVo>();
			
			while(rset.next()) {
				ClassVo c = new ClassVo();
				
				c.setClassNo(rset.getString("CLASS_NO"));
				c.setClassHostNo(rset.getString("CLASS_HOST_NO"));
				c.setClassType(rset.getString("CLASS_TYPE"));
				c.setFirstCategory(rset.getString("FIRST_CATEGORY"));
				c.setSecondCategory(rset.getString("SECOND_CATEGORY"));
				c.setThirdCategory(rset.getString("THIRD_CATEGORY"));
				c.setClassTarget(rset.getString("CLASS_TARGET"));
				
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

	public ClassVo selectOne(Connection con, String cno) {
		ClassVo c = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOne");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, cno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				c = new ClassVo(rset.getString("CLASS_NO"), 
								rset.getString("CLASS_HOST_NO"),
								rset.getString("CLASS_NAME"),
								rset.getString("FIRST_CATEGORY"),
								rset.getString("SECOND_CATEGORY"),
								rset.getString("THIRD_CATEGORY"),
								rset.getString("CLASS_TYPE"),
								rset.getInt("CLASS_TIME"),
								rset.getInt("CLASS_PRICE"),
								rset.getInt("CLASS_MAXNUM"),
								rset.getString("CLASS_IMG"),
								rset.getString("CLASS_LOCATION"),
								rset.getString("CLASS_INTRO"),
								rset.getString("CLASS_TARGET"),
								rset.getString("CLASS_CURRICULUM"),
								rset.getDate("CLASS_ENROLLDATE"),
								rset.getString("CLASS_STATUS"),
								rset.getString("REJECT_REASON")
								);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return c;
	}	

	public int getSearchedClassListCount(Connection con, String searchValue) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("serchedClassListCount");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1,searchValue);
			pstmt.setString(2,searchValue);
			pstmt.setString(3,searchValue);
			pstmt.setString(4,searchValue);
			pstmt.setString(5,searchValue);
			pstmt.setString(6,searchValue);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}

	public ArrayList<ClassVo> searchClass(Connection con, int currentPage, int limit, String searchValue) {
		ArrayList<ClassVo> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("serchClass");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1,searchValue);
			pstmt.setString(2,searchValue);
			pstmt.setString(3,searchValue);
			pstmt.setString(4,searchValue);
			pstmt.setString(5,searchValue);
			pstmt.setString(6,searchValue);
			
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<ClassVo>();
			
			while(rset.next()) {
				ClassVo c = new ClassVo();
				
				c.setClassNo(rset.getString("CLASS_NO"));
				c.setClassHostNo(rset.getString("CLASS_HOST_NO"));
				c.setClassType(rset.getString("CLASS_TYPE"));
				c.setFirstCategory(rset.getString("FIRST_CATEGORY"));
				c.setSecondCategory(rset.getString("SECOND_CATEGORY"));
				c.setThirdCategory(rset.getString("THIRD_CATEGORY"));
				
				list.add(c);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}		
		return list;
	}	
//-------------------------- ClaimList -----------------------------//
	
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
				
				c.setCmDateStr(rset.getString("CLAIM_DATE"));
				c.setCmNo(rset.getString("CLAIM_NO"));
				c.setCmWriterNo(rset.getString("CLAIM_WRITER_NO"));
				c.setCmTitle(rset.getString("CLAIM_TITLE"));
				c.setStatus(rset.getString("CLAIM_STATUS"));				
				c.setHandledDateStr(rset.getString("HANDLED_DATE"));
				c.setSuspensionPeriodStr(rset.getString("SUSPENSION_PERIOD"));
				c.setSuspensionStartDateStr(rset.getString("SUSPENSION_START_DATE"));
				c.setSuspensionEndDateStr(rset.getString("SUSPENSION_END_DATE"));
				
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

	
	public int getClaimListCount(Connection con, String searchValue) {
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("serchedClaimListCount");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1,searchValue);
			pstmt.setString(2,searchValue);
			pstmt.setString(3,searchValue);
			pstmt.setString(4,searchValue);
			pstmt.setString(5,searchValue);
			pstmt.setString(6,searchValue);
			pstmt.setString(7,searchValue);
			pstmt.setString(8,searchValue);
			pstmt.setString(9,searchValue);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return listCount;
	}

	public ArrayList<Claim> searchClaim(Connection con, int currentPage, int limit, String searchValue) {
		ArrayList<Claim> list = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("serchClaim");
		
		try {
			pstmt = con.prepareStatement(sql);		
			
			pstmt.setString(1,searchValue);
			pstmt.setString(2,searchValue);
			pstmt.setString(3,searchValue);
			pstmt.setString(4,searchValue);
			pstmt.setString(5,searchValue);
			pstmt.setString(6,searchValue);
			pstmt.setString(7,searchValue);
			pstmt.setString(8,searchValue);
			pstmt.setString(9,searchValue);
			
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Claim>();
			
			while(rset.next()) {
				Claim c = new Claim();
				
				c.setCmDateStr(rset.getString("CLAIM_DATE"));
				c.setCmNo(rset.getString("CLAIM_NO"));
				c.setCmWriterNo(rset.getString("CLAIM_WRITER_NO"));
				c.setCmTitle(rset.getString("CLAIM_TITLE"));
				c.setStatus(rset.getString("CLAIM_STATUS"));				
				c.setHandledDateStr(rset.getString("HANDLED_DATE"));
				c.setSuspensionPeriodStr(rset.getString("SUSPENSION_PERIOD"));
				c.setSuspensionStartDateStr(rset.getString("SUSPENSION_START_DATE"));
				c.setSuspensionEndDateStr(rset.getString("SUSPENSION_END_DATE"));
				
				list.add(c);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}		
		return list;
	}







}
