package com.kh.newby.classvo.model.service;

import static com.kh.newby.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.classvo.model.dao.ClassDao;
import com.kh.newby.classvo.model.vo.ClassVo;

public class ClassService {
	
	private ClassDao cDao = new ClassDao();

	public ClassVo selectOne(String cno) {
		Connection conn = getConnection();
		ClassVo cv = new ClassVo();
		
		cv = cDao.selectOne(conn, cno);
		
		close(conn);
		
		return cv;
	}

	public ArrayList<ClassVo> classScheduleList(String cno) {
		Connection conn = getConnection();
		ArrayList<ClassVo> csList = new ArrayList<ClassVo>();
		
		csList = cDao.classScheduleList(conn, cno);
		
		close(conn);
		
		return csList;
	}

	public ClassVo classPay(String cno) {
		Connection conn = getConnection();
		ClassVo cv = new ClassVo();
		
		cv = cDao.classPay(conn, cno);
		
		close(conn);
		
		return cv;
	}

	public ArrayList<ClassVo> classPayScheduleList(String cno) {
		Connection conn = getConnection();
		ArrayList<ClassVo> csList = new ArrayList<ClassVo>();
		
		csList = cDao.classPayScheduleList(conn, cno);
		
		close(conn);
		
		return csList;
	}
}
