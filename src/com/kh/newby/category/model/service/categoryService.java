package com.kh.newby.category.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.category.model.dao.categoryDao;
import com.kh.newby.category.model.vo.filterVo;
import com.kh.newby.category.model.vo.categoryVo;
import static com.kh.newby.common.JDBCTemplate.*;

public class categoryService {

	private categoryDao caDao = new categoryDao();
	/**
	 * 클래스 카테고리 리스트 조회용
	 * @return
	 */
	public ArrayList<categoryVo> selectCaList(String caType, int currentPage, int limit) {
		Connection con = getConnection();

		ArrayList<categoryVo> caList = caDao.selectCaList(caType, con, currentPage, limit);

		close(con);

		return caList;
	}
	
	public int getListCount(String caType) {
		Connection con = getConnection();
		int listCount = caDao.getListCount(caType, con);
		close(con);
		
		return listCount;
		
		
	}

	public int getFilteCount(filterVo ft) {
		
		Connection con = getConnection();
		int fCount = caDao.getfilterCount(ft, con);
		close(con);
		
		return fCount;
	}

}
