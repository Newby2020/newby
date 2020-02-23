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

	/**
	 * 메인페이지에서 카테고리 선택시 1차 ,2차 카테고리 보여지는 리스트 
	 * @param caType 카테고리 타입
	 * @param con
	 * @param currentPage
	 * @param limit
	 * @return
	 */
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
			
			int startRow = (currentPage-1)*limit + 1; 
			int endRow = startRow + limit -1; 
		
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			caList = new ArrayList<categoryVo>();

			while (rset.next()) {
				
				categoryVo cv = new categoryVo();
				
				cv.setClassNo(rset.getString("CLASS_NO"));
				cv.setClassName(rset.getString("CLASS_NAME"));
				cv.setFirstCategory(rset.getString(4));
				cv.setSecondCategory(rset.getString(5));
				cv.setThirdCategory(rset.getString(6));
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

	/**
	 * 카테고리 타입별 list count
	 * @param caType
	 * @param con
	 * @return
	 */
	public int getListCount(String caType, Connection con) {
		
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

	
	/**
	 * 유저가 필터 선택시 보여질 list count
	 * @param ft
	 * @param con
	 * @return
	 */
	public int getFilterCount(filterVo ft, Connection con) {
		
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

	/**
	 * 유저가 필터 선택시 보여질 클래스 리스트
	 * @param ft 필터 선택 옵션
	 * @param con
	 * @param currentPage
	 * @param limit
	 * @return
	 */
	public ArrayList<categoryVo> selectFilterList(filterVo ft, Connection con, int currentPage, int limit) {
		ArrayList<categoryVo> caList = null;

		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = fDao.fQueryMaker(ft).toString(); 

		System.out.println(sql);
		
		try {

			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage-1)*limit + 1;
			int endRow = startRow + limit -1; 
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rset = pstmt.executeQuery();
			
			caList = new ArrayList<categoryVo>();

			while (rset.next()) {
				categoryVo cv = new categoryVo();
				//RNUM, CNO, CNAME, LOCA, CP, CIMG, AVGR, FC, SC, TC
				cv.setClassNo(rset.getString("CNO"));
				cv.setClassName(rset.getString("CNAME"));
				cv.setFirstCategory(rset.getString("FC"));
				cv.setSecondCategory(rset.getString("SC"));
				cv.setThirdCategory(rset.getString("TC"));
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

	/**
	 * 유저가 검색시 보여질 list count
	 * @param keyword 검색 키워드
	 * @param con
	 * @return
	 */
	public int getSearchCount(String keyword, Connection con) {

		int sCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchCount"); 
		
		try {

			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, keyword);
			pstmt.setString(2, keyword);
			pstmt.setString(3, keyword);
			pstmt.setString(4, keyword);
			pstmt.setString(5, keyword);
			
			rset = pstmt.executeQuery();

			if(rset.next()) {
				sCount = rset.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally { 
			close(con);
			close(pstmt);
		}
		
		return sCount;
	}

	/**
	 * 유저가 검색시 보여질 클래스 리스트
	 * @param keyword 검색 키워드
	 * @param con
	 * @param currentPage
	 * @param limit
	 * @return
	 */
	public ArrayList<categoryVo> selectSearchList(String keyword, Connection con, int currentPage, int limit) {
		
		ArrayList<categoryVo> caList = null;

		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("searchList"); 

		System.out.println(sql);
		
		try {

			pstmt = con.prepareStatement(sql);
			
			int startRow = (currentPage-1)*limit + 1;
			int endRow = startRow + limit -1; 
			
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			pstmt.setString(3, keyword);
			pstmt.setString(4, keyword);
			pstmt.setString(5, keyword);
			pstmt.setString(6, keyword);
			pstmt.setString(7, keyword);
			
			rset = pstmt.executeQuery();
			
			caList = new ArrayList<categoryVo>();

			while (rset.next()) {
				categoryVo cv = new categoryVo();
				
				//CNO, CNAME, LOCA, CP, CIMG, AVGR, FC, SC, TC
				cv.setClassNo(rset.getString("CNO"));
				cv.setClassName(rset.getString("CNAME"));
				cv.setFirstCategory(rset.getString("FC"));
				cv.setSecondCategory(rset.getString("SC"));
				cv.setThirdCategory(rset.getString("TC"));
				cv.setClassLocation(rset.getString("LOCA").split(",")[0]);
				cv.setClassPrice(rset.getInt("CP"));
				cv.setClassImg(rset.getString("CIMG"));
				cv.setAverageReview(rset.getDouble("AVGR"));
				
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
}


