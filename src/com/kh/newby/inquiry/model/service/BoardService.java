package com.kh.newby.inquiry.model.service;

import com.kh.newby.inquiry.model.dao.BoardDao;
import com.kh.newby.inquiry.model.vo.Board;

import static com.kh.newby.common.JDBCTemplate.close;
import static com.kh.newby.common.JDBCTemplate.getConnection;
import static com.kh.newby.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

public class BoardService {

	private BoardDao bDao = new BoardDao();

	/**
	 * 총 게시글 수
	 * @return
	 */
	public int getListCount() {
		Connection con = getConnection();
		int listCount = bDao.getListCount(con);

		close(con);

		return listCount;
		
	}

	public ArrayList<Board> boardSelectList(int currentPage, int limit) {
		Connection con = getConnection();

		ArrayList<Board> list = bDao.boardSelectList(con,currentPage,limit);

		close(con);

		return list;
	}

	public Board boardSelectOne(String bno) {
		Connection con = getConnection();
		
		Board b = bDao.boardSelectOne(con, bno);
		
		close(con);
		
		return b;
	}

	/**
	 * 문의사항 등록용
	 * @param b
	 * @return
	 */
	public int boardInsert(Board b) {	
		Connection con = getConnection();
		
		int result = bDao.boardInsert(con,b);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public int boardUpdate(Board b) {
		Connection con = getConnection();
		
		int result = bDao.boardUpdate(con,b);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}


	


}
