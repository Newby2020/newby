package com.kh.newby.inquiry.model.dao;

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

import com.kh.newby.inquiry.model.vo.Board;

import static com.kh.newby.common.JDBCTemplate.*;

public class BoardDao {
	
	private Properties prop;
	
	public BoardDao() {
		prop = new Properties();
		
		String filePath = BoardDao.class.getResource("/config/inquiry-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}

	public int getListCount(Connection con) {
		// 총 게시글 수
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
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}

	public ArrayList<Board> selectList(Connection con, int currentPage, int limit) {
		ArrayList<Board> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage-1)*limit +1;
			int endRow = startRow + limit -1;
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<Board>();
			
			while(rset.next()) {
				Board b = new Board();
				
				b.setIno(rset.getString("Q_NO"));
				b.setItitle(rset.getString("Q_TITLE"));
				b.setIwno(rset.getString("Q_WRITER_NO"));
				b.setIdate(rset.getDate("Q_DATE"));
				b.setIcontent(rset.getString("Q_CONTENT"));
				b.setIcomment(rset.getString("Q_COMMENT"));
				
				list.add(b);
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}


	public Board selectOne(Connection con, String bno) {
		Board b = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectOne");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, bno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				b = new Board();
				
				b.setIno(bno);
				b.setItitle(rset.getString("Q_TITLE"));
				b.setIwno(rset.getString("Q_WRITER_NO"));
				b.setIdate(rset.getDate("Q_DATE"));
				b.setIcontent(rset.getString("Q_CONTENY"));
				b.setIcomment(rset.getString("Q_COMMENT"));
				
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
				
		return b;
	}

}














