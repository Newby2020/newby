package com.kh.newby.inquiry.model.service;

import com.kh.newby.inquiry.model.dao.BoardDao;
import com.kh.newby.inquiry.model.vo.Board;

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

	public ArrayList<Board> selectList(int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<Board> list = bDao.selectList(con,currentPage,limit);
		
		close(con);
		
		return list;
	}

}
