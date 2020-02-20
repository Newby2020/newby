package com.kh.newby.inquiry.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.inquiry.model.dao.InquiryCommentDao;
import com.kh.newby.inquiry.model.vo.Inquiry;

import static com.kh.newby.common.JDBCTemplate.*;

public class InquiryCommentService {

	private InquiryCommentDao bcDao = new InquiryCommentDao();

	public int insertComment(Inquiry ico) {
		Connection con = getConnection();

		int result = bcDao.insertComment(con,ico);

		if(result > 0) commit(con);

		else rollback(con);

		close(con);

		return result;
	}


	public ArrayList<Inquiry> selectList(String ino) {
		Connection con = getConnection();

		ArrayList<Inquiry> clist = bcDao.selectList(con,ino);

		close(con);

		return clist;
	}



}
