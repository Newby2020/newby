package com.kh.newby.inquiry.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.inquiry.model.vo.Board;

import static com.kh.newby.common.JDBCTemplate.*;

public class BoardCommentDao {

	private Properties prop;
	
	public BoardCommentDao() {
		prop = new Properties();
		
		String filePath = BoardCommentDao.class.getResource("/config/inquiry-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public int insertComment(Connection con, Board bco) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertComment");
		
		/*try {
			
		} catch(SQLException e) {
			pstmt.setNull(, );
		}*/
		
		return result;
	}

	public ArrayList<Board> selectList(Connection con, String bno) {
		ArrayList<Board> clist = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, bno);
			
			rset = pstmt.executeQuery();
			
			clist = new ArrayList<Board>();
			
			while(rset.next()) {
				Board b = new Board();
				b.setIcomment("Q_COMMENT");
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		return clist;
	}

}
