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

	public ArrayList<categoryVo> selectCaList(Connection con) {
		ArrayList<categoryVo> caList = null;

		Statement stmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("cate1List");


		try {

			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);
			caList = new ArrayList<categoryVo>();

			while (rset.next()) {
				categoryVo cv = new categoryVo();

				cv.setClassNo(rset.getString("CLASS_NO"));
				cv.setClassName(rset.getString("CLASS_NAME"));
				cv.setFirstCategory(rset.getString("FIRST_CATEGORY"));
				cv.setClassPrice(rset.getInt("CLASS_PRICE"));
				cv.setClassImg(rset.getString("CLASS_IMG"));
				cv.setAverageReview(rset.getDouble("AVERAGE_REVIEW"));

				caList.add(cv);

				System.out.println("classdao");
				System.out.println(cv);
			}

			caList.add(new categoryVo("c1", "으왕", "동적", 36000, "dd.jpg", "서울/강남", 3.5));

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


