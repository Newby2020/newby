package com.kh.newby.category.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.category.model.dao.categoryDao;
import com.kh.newby.category.model.vo.categoryVo;
import static com.kh.newby.common.JDBCTemplate.*;

public class categoryService {

	private categoryDao caDao = new categoryDao();
	/**
	 * 클래스 카테고리 리스트 조회용
	 * @return
	 */
	public ArrayList<categoryVo> selectCaList(String caType) {
		Connection con = getConnection();

		System.out.println(caType);
		ArrayList<categoryVo> caList = caDao.selectCaList(con,caType);

		close(con);

		System.out.println(caList);
		return caList;
	}

}
