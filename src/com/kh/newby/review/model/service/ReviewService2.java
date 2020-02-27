package com.kh.newby.review.model.service;

import static com.kh.newby.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.classvo.model.dao.ClassDao2;
import com.kh.newby.review.model.dao.ReviewDao2;
import com.kh.newby.review.model.vo.Review2;

public class ReviewService2 {

	public ArrayList<Review2> ReviewList(int currentPage, int limit, String mno) {
		Connection con = getConnection();
		
		ArrayList<Review2> list = null;
		
		list = new ReviewDao2().ReviewList(con, currentPage, limit, mno);
		
		if(list != null) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return list;
	}

	public int getListCount(String mno) {
		Connection con = getConnection();
		int listCount = new ReviewDao2().getListCount(con, mno);
		
		if(listCount > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);

		return listCount;
	}

}
