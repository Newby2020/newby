package com.kh.newby.review.model.service;

import static com.kh.newby.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.review.model.dao.ReviewDao3;
import com.kh.newby.review.model.vo.Review3;

public class ReviewService3 {

	ReviewDao3 rDao = new ReviewDao3();
	/**
	 * 리뷰 작성
	 * @param rv
	 * @return
	 */
	public int insertReview(Review3 rv) {
		Connection conn = getConnection();

		int rResult = rDao.insertReview(conn, rv);
		if(rResult >=1) commit(conn);
		else rollback(conn);

		close(conn);

		return rResult;
	}
	
	
	/**
	 * 리뷰 작성여부 업데이트
	 * @param psNo
	 * @return
	 */
	public int updateRevYN(String psNo) {
		Connection conn = getConnection();

		int revYN = rDao.updateRevYN(conn, psNo);
		if(revYN >=1) commit(conn);
		else rollback(conn);

		close(conn);

		return revYN;
	}


	public int updateHostPoint(String cno) {
		Connection conn = getConnection();

		String hno = rDao.inCnoOutHno(conn, cno);
		
		float avgRpt = rDao.avgRevPt(conn,hno);
		
		
		int updHpt = rDao.updateHostPoint(conn, hno, avgRpt);
		
		if(updHpt >=1) commit(conn);
		else rollback(conn);

		close(conn);

		return updHpt;

	}




}