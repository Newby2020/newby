package com.kh.newby.admin.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.Member.model.vo.Member;
import com.kh.newby.admin.dao.AdminDao2;

import static com.kh.newby.common.JDBCTemplate.*;

public class AdminService2 {
	
	private AdminDao2 aDao2 = new AdminDao2();

	public int getUserCount() {
		
		Connection con = getConnection();
		int userCount = aDao2.getUserCount(con);
		
		close(con);
		
		return userCount;
	}

	public int getHostCount() {
		
		Connection con = getConnection();
		int hostCount = aDao2.getHostCount(con);
		
		close(con);
		
		return hostCount;
	}

	public int getClassCount() {

		Connection con = getConnection();
		int classCount = aDao2.getClassCount(con);
		
		close(con);
		
		return classCount;
	}

	public int getApprovalClassCount() {

		Connection con = getConnection();
		int approvalClassCount = aDao2.getApprovalClassCount(con);
		
		close(con);
		
		return approvalClassCount;
	}

	public int getNotifiedHostCount() {

		Connection con = getConnection();
		int notifiedHostCount = aDao2.getNotifiedHostCount(con);
		
		close(con);
		
		return notifiedHostCount;
	}

	/**
	 * 송금해야 할 인원 수
	 * @return
	 */
	public int needToSendMoneyCount() {

		Connection con = getConnection();
		int needToSendMoneyCount = aDao2.getNeedToSendMoneyCount(con);
		
		close(con);
		
		return needToSendMoneyCount;
	}
	
}
