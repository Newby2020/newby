package com.kh.newby.inquiry.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.inquiry.model.dao.BoardCommentDao;
import com.kh.newby.inquiry.model.vo.Board;

import static com.kh.newby.common.JDBCTemplate.*;

public class BoardCommentService {

	private BoardCommentDao bcDao = new BoardCommentDao();

	public int insertComment(Board bco) {
		Connection con = getConnection();

		int result = bcDao.insertComment(con,bco);

		if(result > 0) commit(con);

		else rollback(con);

		close(con);

		return result;
	}


	public ArrayList<Board> selectList(String bno) {
		Connection con = getConnection();

		ArrayList<Board> clist = bcDao.selectList(con,bno);

		close(con);

		return clist;
	}



}
