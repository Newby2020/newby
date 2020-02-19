package com.kh.newby.Member.model.dao;

import static com.kh.newby.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.newby.Member.model.vo.Member3;

public class MemberDao2 {

	private Properties prop;
	
	public MemberDao2() {
		prop = new Properties();
		
		String filePath = MemberDao2.class.getResource("/config/member-query2.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		}catch(FileNotFoundException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
	}

	public Member3 profile(Connection con, String mno) {
		Member3 m = new Member3();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("profile");
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mno);
			rset=pstmt.executeQuery();
			if(rset.next()) {
			m.setM_no(rset.getString("MEM_NO"));
			m.setM_nick(rset.getString("MEM_NICK"));
			m.setM_id(rset.getString("MEM_ID"));
			m.setM_name(rset.getString("MEM_NAME"));
			m.setM_pwd(rset.getString("MEM_PWD"));
			m.setTel1(rset.getString("TEL1"));
			m.setTel2(rset.getString("TEL2"));
			m.setTel3(rset.getString("TEL3"));
			System.out.println(m.toString());
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return m;
	}

	public String modiNick(Connection con, String mno, String nick) {
		String newNick = null;
		PreparedStatement pstmt = null;
		int result = 0;
		String sql1 = prop.getProperty("modifyNick");
		String sql2 = prop.getProperty("selectOneNick");
		ResultSet rset = null;
		
		try {
			pstmt = con.prepareStatement(sql1);
			pstmt.setString(1, nick);
			pstmt.setString(2, mno);
			result=pstmt.executeUpdate();
			System.out.println(result);
			
			pstmt = con.prepareStatement(sql2);
			pstmt.setString(1, mno);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				newNick = rset.getString("MEM_NICK");
			}
			System.out.println(newNick);
		}catch(SQLException e){
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return newNick;
	}

	public String modiPhone(Connection con, String mno, String tel) {
		String newTel = null;
		PreparedStatement pstmt = null;
		int result = 0;
		String sql1 = prop.getProperty("modifyPhone");
		String sql2 = prop.getProperty("selectOnePhone");
		ResultSet rset = null;
		
		try {
			pstmt = con.prepareStatement(sql1);
			pstmt.setString(1, tel);
			pstmt.setString(2, mno);
			result=pstmt.executeUpdate();
			System.out.println(result);
			
			pstmt = con.prepareStatement(sql2);
			pstmt.setString(1, mno);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				newTel = rset.getString("PHONE");
			}
			System.out.println(newTel);
		}catch(SQLException e){
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return newTel;
	}

	public int checkNick(Connection con, String nick) {
		int result =0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("checkNick");
		ResultSet rset = null;
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, nick);
			
			rset = pstmt.executeQuery();
			if(rset.next()) {
				result = rset.getInt(1);
				System.out.println("dao : "+result);
			}
		
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	
	
}


