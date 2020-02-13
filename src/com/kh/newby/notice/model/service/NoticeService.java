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
	public ArrayList<Notice> selectList() {
		Connection con = getConnection();
		
		ArrayList<Notice> list = nDao.selectList(con);
		
		close(con);
		
		return list;
	}

}
