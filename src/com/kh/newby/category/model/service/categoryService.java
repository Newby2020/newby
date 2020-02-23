package com.kh.newby.category.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.category.model.dao.categoryDao;
import com.kh.newby.category.model.vo.filterVo;
import com.kh.newby.category.model.vo.categoryVo;
import static com.kh.newby.common.JDBCTemplate.*;

public class categoryService {

	private categoryDao caDao = new categoryDao();
	

	public int getListCount(String caType) {
		
		Connection con = getConnection();
		
		int listCount = caDao.getListCount(caType, con);
		
		close(con);
		
		return listCount;
		
	}
	public ArrayList<categoryVo> selectCaList(String caType, int currentPage, int limit) {
		Connection con = getConnection();

		ArrayList<categoryVo> caList = caDao.selectCaList(caType, con, currentPage, limit);

		close(con);

		return caList;
	}
	

	public int getFilterCount(filterVo ft) {
		Connection con = getConnection();
		
		int fCount = caDao.getFilterCount(ft, con);
		
		close(con);
		
		return fCount;
	}

	public ArrayList<categoryVo> selectFilterList(filterVo ft, int currentPage, int limit) {
		
		Connection con = getConnection();
		
		ArrayList<categoryVo> caList = caDao.selectFilterList(ft, con, currentPage, limit);
		
		close(con);
		
		return caList;
	}

	public int getSearchCount(String keyword) {
		Connection con = getConnection();
		
		int sCount = caDao.getSearchCount(keyword, con);
		
		close(con);
		
		return sCount;
		
	}
	
	public ArrayList<categoryVo> selectSearchList(String keyword, int currentPage, int limit) {
		Connection con = getConnection();
		
		ArrayList<categoryVo> caList = caDao.selectSearchList(keyword, con, currentPage, limit);
		
		close(con);
		
		return caList;
	}

}
