package com.kh.newby.category.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.category.model.vo.categoryVo;
import static com.kh.newby.common.JDBCTemplate.*;

public class categoryDao {
	private Properties prop;

	public categoryDao() {
		prop = new Properties();
		String filePath = categoryVo.class.getResource("/config/category-query.properties").getPath();
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<categoryVo> selectCaList(Connection con, String caType) {
		ArrayList<categoryVo> caList = null;

		Statement stmt = null;
		ResultSet rset = null;
		
		System.out.println(caType);
		
		String sql = null; 
		
		switch (caType) {
		case "ca0": sql = prop.getProperty("cate0List"); break;
		case "ca1": sql = prop.getProperty("cate1List"); break;
		case "ca2": sql = prop.getProperty("cate2List"); break;
		case "ca3": sql = prop.getProperty("cate3List"); break;
		case "ca4": sql = prop.getProperty("cate4List"); break;
		case "ca5": sql = prop.getProperty("cate5List"); break;
		}
		
		System.out.println(sql);

		try {

			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			caList = new ArrayList<categoryVo>();

			while (rset.next()) {
				categoryVo cv = new categoryVo();

				cv.setClassNo(rset.getString("CLASS_NO"));
				cv.setClassName(rset.getString("CLASS_NAME"));
				cv.setFirstCategory(rset.getString("FIRST_CATEGORY"));
				cv.setClassLocation(rset.getString("CLASS_LOCATION"));
				cv.setClassPrice(rset.getInt("CLASS_PRICE"));
				cv.setClassImg(rset.getString("CLASS_IMG"));
				cv.setAverageReview(rset.getDouble("AVERAGE_REVIEW"));

				caList.add(cv);

				System.out.println("classdao");
				System.out.println(cv);
			}


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}

		System.out.println("classdao");
		System.out.println(caList);
		return caList;
	}
}


