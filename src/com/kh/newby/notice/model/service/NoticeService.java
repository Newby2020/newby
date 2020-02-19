package com.kh.newby.notice.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.notice.model.dao.NoticeDao;
import com.kh.newby.notice.model.vo.Notice;
import static com.kh.newby.common.JDBCTemplate.*;

public class NoticeService {

	private NoticeDao nDao = new NoticeDao();
	
	/**
	 * 공지사항 조회
	 * @return
	 */
	public ArrayList<Notice> noticeSelectList(int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<Notice> list = nDao.noticeSelectList(con,currentPage,limit);
		
		close(con);
		
		return list;
	}

	/**
	 * 총 게시글 수
	 * @return
	 */
	public int getListCount() {
		Connection con = getConnection();
		int listCount = nDao.getListCount(con);
		
		close(con);
	
		return listCount;
	}

	public Notice noticeSelectOne(String nno) {
		Connection con = getConnection();
		
		Notice n = nDao.noticeSelectOne(con, nno);
		
		// 게시글 카운트용
		if(n != null) {
			int result = nDao.updateReadCount(con,nno);
			
			if(result > 0) commit(con);
			else rollback(con);
		}
		
		close(con);
		
		return n;
	}

	/**
	 * 공지사항 등록용
	 * @param n
	 * @return
	 */
	public int noticeInsert(Notice n) {
		Connection con = getConnection();
		
		int result = nDao.noticeInsert(con,n);
		
		if(result >= 1) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public int noticeUpdate(Notice n) {
		Connection con = getConnection();
		
		int result = nDao.noticeUpdate(con,n);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	public Notice noticeUpdateView(String nno) {
		Connection con = getConnection();
		
		Notice n = nDao.noticeSelectOne(con, nno);
		
		close(con);
		
		return n;
	}

	public int noticeDelete(String nno) {
		Connection con = getConnection();
		
		int result = nDao.noticeDelete(con,nno);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}



}
