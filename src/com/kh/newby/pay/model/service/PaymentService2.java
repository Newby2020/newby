package com.kh.newby.pay.model.service;

import static com.kh.newby.common.JDBCTemplate.close;
import static com.kh.newby.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.classvo.model.vo.ClassVo3;
import com.kh.newby.pay.model.dao.PaymentDao2;

public class PaymentService2 {

	PaymentDao2 pDao = new PaymentDao2();

	public ClassVo3 getClassVo(String cno) {
		
		Connection con = getConnection();
		ClassVo3 cv = pDao.getClassVo(con, cno);
		
		close(con);
		
		return cv;
	}

	public ClassVo3 getPsno(String psno) {
		
		Connection con = getConnection();
		ClassVo3 cvPsno = pDao.getPsno(con, psno);
		
		close(con);
		
		return cvPsno;
	}
	
}
