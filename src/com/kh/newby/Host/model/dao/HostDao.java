package com.kh.newby.Host.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.newby.Host.model.vo.Host;
import com.kh.newby.Member.model.dao.MemberDao;
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
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertHost");
		
		try {
			pstmt=con.prepareStatement(sql);
			
			pstmt.setString(1, memberId);
			pstmt.setString(2, h.getBank());
			pstmt.setString(3, h.getAccountHolder());
			pstmt.setString(4, h.getAccountNum());
			pstmt.setString(5, h.getHostIntro());
			
			result=pstmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

}
