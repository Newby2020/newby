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



}
