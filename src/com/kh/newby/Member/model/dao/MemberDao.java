package com.kh.newby.Member.model.dao;

import static com.kh.newby.common.JDBCTemplate.*;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.newby.Member.model.exception.MemberException;
import com.kh.newby.Member.model.vo.Member;

public class MemberDao {

	private Properties prop;
	
	public MemberDao() {
		prop = new Properties();
		
		String filePath = MemberDao.class.getResource("/config/member-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		}catch(FileNotFoundException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public Member selectMember(Connection con, Member m) throws MemberException {
		
		Member result = null;// 결과를 담을 객체
		PreparedStatement pstmt = null;
		ResultSet rset = null;		// Select의 결과를 담는 객체
		
		try {
			String sql = prop.getProperty("selectMember"); //==>SELECT * FROM MEMBER WHERE USERID=? AND PASSWORD=?
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, m.getM_id());
			pstmt.setString(2,m.getM_pwd());
			
			rset = pstmt.executeQuery();
			
			// if, while
			if(rset.next()) {
				result = new Member();
				
				result.setM_id(m.getM_id());
				result.setM_pwd(m.getM_pwd());
				
				result.setM_name(rset.getString("mem_name"));
				result.setM_nick(rset.getString("mem_nick"));
				result.setM_no(rset.getString("mem_no"));
				result.setM_phone(rset.getString("PHONE"));
				result.setM_mileage(rset.getInt("MILEAGE"));
				result.setM_enrollDate(rset.getDate("ENROLLDATE"));
				result.setH_no(rset.getString("MEM_HOST_NO"));
				
			}
			
		}catch(Exception e) {
//			e.printStackTrace();
			throw new MemberException(e.getMessage());
		
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

	public int insertMember(Connection con, Member m) throws MemberException{
		
		int result = 0; // 결과 확인을 위한 변수 생성
		
		PreparedStatement pstmt = null;
		
		try {
			String sql = prop.getProperty("insertMember");
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, m.getM_id());
			pstmt.setString(2, m.getM_nick());
			pstmt.setString(3, m.getM_pwd());
			pstmt.setString(4, m.getM_name());
			pstmt.setString(5, m.getM_phone());
			
			result = pstmt.executeUpdate();
			
			
		}catch(SQLException e) {
			throw new MemberException(e.getMessage());
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int idDupCheck(Connection con, String id) {
		int result = -1;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("idDupCheck");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rset=pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

	public int nickDupCheck(Connection con, String nick) {
		int result= -1;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("nickDupCheck");
		
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, nick);
			
			rset=pstmt.executeQuery();
			
			if(rset.next()){
				result=rset.getInt(1);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}
	
	
	
	
	
	
	
	
}


