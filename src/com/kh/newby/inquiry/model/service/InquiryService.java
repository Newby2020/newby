package com.kh.newby.inquiry.model.service;

import com.kh.newby.inquiry.model.dao.InquiryDao;
import com.kh.newby.inquiry.model.vo.Inquiry;

import static com.kh.newby.common.JDBCTemplate.close;
import static com.kh.newby.common.JDBCTemplate.getConnection;
import static com.kh.newby.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

public class InquiryService {

	private InquiryDao iDao = new InquiryDao();

	/**
	 * 총 게시글 수
	 * @return
	 */
	public int getListCount() {
		Connection con = getConnection();
		int listCount = iDao.getListCount(con);

		close(con);

		return listCount;
		
	}

	/**
	 * 게시글 정렬
	 * @param currentPage
	 * @param limit
	 * @return
	 */
	public ArrayList<Inquiry> inquirySelectList(int currentPage, int limit) {
		Connection con = getConnection();

		ArrayList<Inquiry> list = iDao.inquirySelectList(con,currentPage,limit);

		close(con);

		return list;
	}

	public Inquiry inquirySelectOne(String ino) {
		Connection con = getConnection();
		
		Inquiry i = iDao.inquirySelectOne(con, ino);
		
		close(con);
		
		return i;
	}

	/**
	 * 문의사항 등록용
	 * @param i
	 * @return
	 */
	public int inquiryInsert(Inquiry i) {	
		Connection con = getConnection();
		
		int result = iDao.inquiryInsert(con,i);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	/**
	 * 문의사항 수정용
	 * @param i
	 * @return
	 */
	public int inquiryUpdate(Inquiry i) {
		Connection con = getConnection();
		
		int result = iDao.inquiryUpdate(con,i);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	/**
	 * 문의사항 삭제용
	 * @param ino
	 * @return
	 */
	public int inquiryDelete(String ino) {
		Connection con = getConnection();
		
		int result = iDao.inquiryDelete(con,ino);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}

	/**
	 * 문의사항 수정용
	 * @param ino
	 * @return
	 */
	public Inquiry inquiryUpdateView(String ino) {
		Connection con = getConnection();
		
		Inquiry i= iDao.inquirySelectOne(con, ino);
		
		close(con);
		
		return i;
	}

	


	


}
