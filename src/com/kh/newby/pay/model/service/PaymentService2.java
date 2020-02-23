package com.kh.newby.pay.model.service;

import static com.kh.newby.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.classvo.model.vo.ClassVo3;
import com.kh.newby.pay.model.dao.PaymentDao2;

public class PaymentService2 {

	PaymentDao2 pDao = new PaymentDao2();

	public ClassVo3 getCno(String cno) {
		
		Connection con = getConnection();
		ClassVo3 cvCno = pDao.getCno(con, cno);
		
		close(con);
		
		return cvCno;
	}

//	public ClassVo3 getPsno(String psno) {
//		
//		Connection con = getConnection();
//		ClassVo3 cvPsno = pDao.getPsno(con, psno);
//		
//		close(con);
//		
//		return cvPsno;
//	}

	public int getCancelCount(String psno) {

		Connection con = getConnection();
		int cancelCount = pDao.getCancelCount(con, psno);
		
		close(con);
		
		return cancelCount;
	}

	public int getPsno(ClassVo3 cvPsno) {
		
		Connection con = getConnection();
		int result = pDao.getPsno(con, cvPsno);
		System.out.println("서비스");
		
		if(result > 0) commit(con);
		else rollback(con);
		return result;
	}
	
}
