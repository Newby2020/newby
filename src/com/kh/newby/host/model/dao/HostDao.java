package com.kh.newby.host.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.newby.host.model.vo.Host;
import com.kh.newby.member.model.dao.MemberDao;
import static com.kh.newby.common.JDBCTemplate.*;

public class HostDao {
	
	private Properties prop;

	public HostDao() {
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

	public int insertHost(Connection con, Host h, String memberId) {
		int result = 0;
		int result2 = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertHost");
		String sql2 = prop.getProperty("updateHostNo");
		
		try {
			pstmt=con.prepareStatement(sql);
			
			pstmt.setString(1, memberId);
			pstmt.setString(2, h.getBank());
			pstmt.setString(3, h.getAccountHolder());
			pstmt.setString(4, h.getAccountNum());
			pstmt.setString(5, h.getHostIntro());
			
			result=pstmt.executeUpdate();
			
			pstmt = con.prepareStatement(sql2);
			
			pstmt.setString(1, memberId);
			
			result2 = pstmt.executeUpdate();
			System.out.println(result2);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

}
