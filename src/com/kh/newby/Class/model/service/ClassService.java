package com.kh.newby.Class.model.service;

import static com.kh.newby.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.Class.model.dao.ClassDao;
import com.kh.newby.Class.model.vo.ClassVo;

public class ClassService {
	
	private ClassDao cDao = new ClassDao();

	public ClassVo selectOne(String cno) {
		Connection conn = getConnection();
		ClassVo cv = new ClassVo();
		
		cv = cDao.selectOne(conn, cno);
		
		close(conn);
		
		return cv;
	}



}
