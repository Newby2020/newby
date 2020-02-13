package com.kh.newby.Class.model.service;

import static com.kh.newby.common.JDBCTemplate.close;
import static com.kh.newby.common.JDBCTemplate.commit;
import static com.kh.newby.common.JDBCTemplate.getConnection;
import static com.kh.newby.common.JDBCTemplate.rollback;

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

	// 클래스 등록
	public int insertClass(ClassVo c) {
		
		Connection con = getConnection();
		System.out.println("service");
		int result = new ClassDao().insertClass(con, c);
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		
		return result;
	}

	
	public ArrayList<ClassVo> selectHnoClassList(String hno) {
		Connection con = getConnection();
		
		ArrayList<ClassVo> list = new ArrayList<>();
		list = new ClassDao().selectHnoClassList(con, hno);
		if(!list.isEmpty()) {
			commit(con);
		} else {
			rollback(con);
		}
		
		return list;
	}

	public int deleteClass(String cno) {
		int result = 0;
		Connection con = getConnection();
		ClassDao cd = new ClassDao();
		result = cd.deleteClass(con,cno);
		
		if(result>0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

}
