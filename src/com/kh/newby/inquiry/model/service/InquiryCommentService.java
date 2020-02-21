package com.kh.newby.inquiry.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.inquiry.model.dao.InquiryCommentDao;
import com.kh.newby.inquiry.model.vo.Inquiry;

import static com.kh.newby.common.JDBCTemplate.*;

public class InquiryCommentService {

	private InquiryCommentDao icDao = new InquiryCommentDao();

	public int insertComment(Inquiry ico) {
		Connection con = getConnection();

		int result = icDao.insertComment(con,ico);

		if(result > 0) commit(con);

		else rollback(con);

		close(con);

		return result;
	}


	public ArrayList<Inquiry> inquirySelectComList(String ino) {
		Connection con = getConnection();

		ArrayList<Inquiry> list = icDao.inquirySelectComList(con,ino);

		close(con);

		return list;
	}


	public int inquiryComment(Inquiry i) {
		Connection con = getConnection();

		int result = icDao.inquiryComment(con, i);

		if(result > 0) commit(con);
		else rollback(con);

		close(con);

		return result;
	}



}
