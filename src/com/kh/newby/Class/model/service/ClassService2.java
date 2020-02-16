package com.kh.newby.Class.model.service;

import static com.kh.newby.common.JDBCTemplate.close;
import static com.kh.newby.common.JDBCTemplate.commit;
import static com.kh.newby.common.JDBCTemplate.getConnection;
import static com.kh.newby.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.Class.model.dao.ClassDao2;
import com.kh.newby.Class.model.vo.ClassVo;
import com.kh.newby.Class.model.vo.ClassVo2;

public class ClassService2 {

	// 클래스 등록
	public int insertClass(ClassVo2 c) {

		Connection con = getConnection();

		System.out.println("service");

		int result = new ClassDao2().insertClass(con, c);
		if (result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);

		return result;
	}

	public ArrayList<ClassVo2> ClassManagerList(String hno) {
		Connection con = getConnection();
		ArrayList<ClassVo2> list = new ArrayList<>();
		list = new ClassDao2().ClassManagerList(con, hno);
		if (!list.isEmpty()) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return list;
	}

	public int deleteClass(String cno) {
		int result = 0;
		Connection con = getConnection();
		result = new ClassDao2().deleteClass(con, cno);

		if (result > 0) {
			commit(con);
		} else {
			rollback(con);
		}

		close(con);

		return result;
	}

	public ArrayList<ClassVo2> ClassScheduleList(String mno) {
		ArrayList<ClassVo2> list = null;

		Connection con = getConnection();

		list = new ClassDao2().ClassScheduleList(con, mno);

		if (list != null) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return list;
	}

	public ArrayList<ClassVo2> MileageList(String mno) {
		ArrayList<ClassVo2> list = null;

		Connection con = getConnection();

		list = new ClassDao2().MileageList(con, mno);

		if (list != null) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return list;
	}

	public ArrayList<ClassVo2> modifyClassList(String cno) {
		ArrayList<ClassVo2> list = null;
		Connection con = getConnection();
		list = new ClassDao2().modifyClassList(con, cno);
		if(list != null) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);

		return list;
	}

	public int updateClass(ClassVo2 c) {
		Connection con = getConnection();
		
		int result = new ClassDao2().updateClass(con, c);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return result;
	}
}
