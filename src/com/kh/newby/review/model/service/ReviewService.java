package com.kh.newby.review.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.review.model.dao.ReviewDao;
import com.kh.newby.review.model.vo.Review;

import static com.kh.newby.common.JDBCTemplate.*;

public class ReviewService {
	ReviewDao rDao = new ReviewDao();
	
	public ArrayList<Review> selectList(String cno) {
		Connection conn = getConnection();
		
		ArrayList<Review> rList = rDao.selectList(conn, cno);
		
		close(conn);
		
		return rList;
	}

}
