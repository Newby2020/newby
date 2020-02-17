package com.kh.newby.Payment.model.service;

import static com.kh.newby.common.JDBCTemplate.close;
import static com.kh.newby.common.JDBCTemplate.commit;
import static com.kh.newby.common.JDBCTemplate.getConnection;
import static com.kh.newby.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.Class.model.vo.ClassVo;
import com.kh.newby.Payment.model.dao.PaymentDao;
import com.kh.newby.Payment.model.vo.Payment;

public class PaymentService {
	
	public ArrayList<Payment> MileageList(String mno) {
		ArrayList<Payment> list = null;

		Connection con = getConnection();

		list = new PaymentDao().MileageList(con, mno);

		if (list != null) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return list;
	}
}
