package com.kh.newby.notice.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.notice.model.vo.Notice;
import static com.kh.newby.common.JDBCTemplate.*;


public class NoticeDao {
	
	private Properties prop;
	
	public NoticeDao() {
		prop = new Properties();
		
		String filePath = Notice.class.getResource("/config/notice-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 공지사항 조회
	 * @param con
	 * @return
	 */
	public ArrayList<Notice> selectList(Connection con) {
		ArrayList<Notice> list = null;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			stmt = con.createStatement();
			
			rset = stmt.executeQuery(sql);
			
			list = new ArrayList<Notice>();
			
			while(rset.next()) {
				Notice n = new Notice();
				
				n.setNno(rset.getString("NOTICE_NO"));
				n.setNtitle(rset.getString("NO_TITLE"));
				n.setNwriter(rset.getString("NO_WRITER"));
				n.setNdate(rset.getDate("NO_DATE"));
				n.setNcount(rset.getInt("NO_COUNT"));
				n.setNcontent(rset.getString("NO_CONTENT"));
				
				list.add(n);
				
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
