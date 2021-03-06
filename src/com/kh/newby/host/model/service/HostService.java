package com.kh.newby.host.model.service;

import java.sql.Connection;

import com.kh.newby.host.model.dao.HostDao;
import com.kh.newby.host.model.vo.Host;
import static com.kh.newby.common.JDBCTemplate.*;

public class HostService {
	
	private Connection con;
	private HostDao hDao= new HostDao();
	
	public int insertHost(Host h, String memberId) {
		
		con=getConnection();
		
		int result=hDao.insertHost(con,h,memberId);
		
		if(result>0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}
	

	

}
