package com.kh.newby.inquiry.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.inquiry.model.dao.InquiryCommentDao;
import com.kh.newby.inquiry.model.dao.InquiryDao;
import com.kh.newby.inquiry.model.vo.Inquiry;

import static com.kh.newby.common.JDBCTemplate.*;

public class InquiryCommentService {

	private InquiryCommentDao icDao = new InquiryCommentDao();

	private InquiryDao iDao = new InquiryDao();


	public ArrayList<Inquiry> inquirySelectComList(String ino) {
		Connection con = getConnection();

		ArrayList<Inquiry> list = icDao.inquirySelectComList(con,ino);

		close(con);

		return list;
	}


	/**
	 * 댓글 상세 보기
	 * @param i
	 * @return
	 */
	public int inquiryComment(Inquiry i) {
		Connection con = getConnection();

		int result = icDao.inquiryComment(con, i);

		if(result > 0) commit(con);
		else rollback(con);

		close(con);

		return result;
	}


	/**
	 * 댓글 추가용
	 * @param i
	 * @return
	 */
	public int insertCom(Inquiry i) {
		Connection con = getConnection();
		
		int result = icDao.insertCom(con,i);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}


	/**
	 * 댓글 수정
	 * @param i
	 * @return
	 */
	public int updateCom(Inquiry i) {
		Connection con = getConnection();
		
		int result = icDao.updateCom(con,i);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}


	public Inquiry updateViewCom(String ino) {
		Connection con = getConnection();
		
		Inquiry i = icDao.inquirySelectOne(con, ino);
		
		close(con);
		
		return i;
	}


	/**
	 * 댓글 삭제
	 * @param ino
	 * @return
	 */
	public int deleteCom(String ino) {
		Connection con = getConnection();
		
		int result = icDao.deleteCom(con,ino);
		
		if(result > 0) commit(con);
		else rollback(con);
		
		close(con);
		
		return result;
	}


	





}
