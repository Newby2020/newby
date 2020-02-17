package com.kh.newby.Payment.model.service;

import static com.kh.newby.common.JDBCTemplate.close;
import static com.kh.newby.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.Class.model.vo.ClassVo;
import com.kh.newby.Payment.model.dao.PaymentDao2;

public class PaymentService2 {

	PaymentDao2 pDao = new PaymentDao2();
	
	public ArrayList<ClassVo> getClassInfoList(String cno) {
		
		Connection con = getConnection();
		ArrayList<ClassVo> classInfoList = pDao.getClassInfoList(con, cno);
		
		close(con);
		
		return classInfoList;
	}
	
}
