package com.kh.newby.review.model.service;

import static com.kh.newby.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.review.model.dao.ReviewDao2;
import com.kh.newby.review.model.vo.Review2;

public class ReviewService2 {

	public ArrayList<Review2> ReviewList(String mno) {
		Connection con = getConnection();
		
		ArrayList<Review2> list = null;
		
		list = new ReviewDao2().ReviewList(con, mno);
		
		if(list != null) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return list;
	}

}
