package com.kh.newby.category.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.category.model.vo.categoryVo;
import com.kh.newby.category.model.vo.filterVo;

import static com.kh.newby.common.JDBCTemplate.*;

public class categoryDao {
	private Properties prop;
	
	filterDao fDao = new filterDao();

	public categoryDao() {
		prop = new Properties();
		String filePath = categoryVo.class.getResource("/config/category-query.properties").getPath();
		try {
			prop.load(new FileReader(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<categoryVo> selectCaList(String caType, Connection con, int currentPage, int limit) {
		ArrayList<categoryVo> caList = null;

		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		
		String sql = null; 
		
		switch (caType) {
		case "ca0": sql = prop.getProperty("cate0List"); break;
		case "ca1": sql = prop.getProperty("cate1List"); break;
		case "ca2": sql = prop.getProperty("cate2List"); break;
		case "ca3": sql = prop.getProperty("cate3List"); break;
		case "ca4": sql = prop.getProperty("cate4List"); break;
		case "ca5": sql = prop.getProperty("cate5List"); break;
		}
		

		try {

			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage-1)*limit + 1; //1
			int endRow = startRow + limit -1; //10, 20
			
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			
			
			caList = new ArrayList<categoryVo>();

			while (rset.next()) {
				categoryVo cv = new categoryVo();

				cv.setClassNo(rset.getString("CLASS_NO"));
				cv.setClassName(rset.getString("CLASS_NAME"));
				cv.setFirstCategory(rset.getString(4));
				cv.setClassLocation(rset.getString("CLASS_LOCATION").split(",")[0]);
				cv.setClassPrice(rset.getInt("CLASS_PRICE"));
				cv.setClassImg(rset.getString("CLASS_IMG"));
				cv.setAverageReview(rset.getDouble("AVERAGE_REVIEW"));
				
				System.out.println(cv);
				
				caList.add(cv);

			}


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return caList;
	}

	public int getListCount(String caType, Connection con) {
		// 총 게시글 수
		
		int listCount =0;
		Statement stmt = null;
		ResultSet rset = null;
		String sql = null;
		
		switch (caType) {
		case "ca0": sql = prop.getProperty("ca0listCount"); break;
		case "ca1": sql = prop.getProperty("ca1listCount"); break;
		case "ca2": sql = prop.getProperty("ca2listCount"); break;
		case "ca3": sql = prop.getProperty("ca3listCount"); break;
		case "ca4": sql = prop.getProperty("ca4listCount"); break;
		case "ca5": sql = prop.getProperty("ca5listCount"); break;
		}
		
		
		try {

			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);

			if(rset.next()) {
				listCount = rset.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally { 
			close(con);
			close(stmt);
		}
		
		return listCount;
	}

	public int getfilterCount(filterVo ft, Connection con) {
		
		int fCount =0;
		
		Statement stmt = null;
		ResultSet rset = null;
		String sql = fDao.fListCounter(ft).toString();
		
		
		
		try {

			stmt = con.createStatement();
			rset = stmt.executeQuery(sql);

			if(rset.next()) {
				fCount = rset.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally { 
			close(con);
			close(stmt);
		}
		
		return fCount;

		
	}

	public ArrayList<categoryVo> selectFilterList(filterVo ft, Connection con, int currentPage, int limit) {
		ArrayList<categoryVo> caList = null;

		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		
		String sql = fDao.fQueryMaker(ft).toString(); 

		System.out.println(sql);
		
		try {

			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage-1)*limit + 1; //1
			int endRow = startRow + limit -1; //10, 20
			
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			
			
			caList = new ArrayList<categoryVo>();

			while (rset.next()) {
				categoryVo cv = new categoryVo();
				//RNO, CNO, CNAME, LOCA, CP, CIMG, AVGR
				cv.setClassNo(rset.getString("CNO"));
				cv.setClassName(rset.getString("CNAME"));
				cv.setClassLocation(rset.getString("LOCA").split(",")[0]);
				cv.setClassPrice(rset.getInt("CP"));
				cv.setClassImg(rset.getString("CIMG"));
				cv.setAverageReview(rset.getDouble("AVGR"));
				
//				System.out.println(cv);
				
				caList.add(cv);

			}


		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return caList;

	}
}


