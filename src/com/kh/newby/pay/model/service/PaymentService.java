package com.kh.newby.pay.model.service;

import static com.kh.newby.common.JDBCTemplate.close;
import static com.kh.newby.common.JDBCTemplate.commit;
import static com.kh.newby.common.JDBCTemplate.getConnection;
import static com.kh.newby.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.classvo.model.vo.ClassVo;
import com.kh.newby.pay.model.dao.PaymentDao;
import com.kh.newby.pay.model.vo.Payment;

public class PaymentService {
	
	public ArrayList<Payment> payList(String mno) {
		ArrayList<Payment> list = null;

		Connection con = getConnection();

		list = new PaymentDao().payList(con, mno);

		if (list != null) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return list;
	}
}
