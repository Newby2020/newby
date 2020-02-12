package com.kh.newby.Class.model.service;

import static com.kh.newby.common.JDBCTemplate.*;

import java.sql.Connection;

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

	// 클래스 등록
	public int insertClass(ClassVo c) {
		Connection con = getConnection();
		int result = new ClassDao().insertClass(con, c);
		close(con);
		return result;
	}

}
