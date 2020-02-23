package com.kh.newby.classvo.model.dao;

import static com.kh.newby.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.classvo.model.vo.ClassVo;
import com.kh.newby.classvo.model.vo.ClassVo3;

public class ClassDao {
	
	private Properties prop;
	
	public ClassDao() {
		prop = new Properties();
		
		String filePath = ClassDao.class.getResource("/config/class-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}

	public ClassVo selectOne(Connection conn, String cno) {
		ClassVo cv = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("classSelectOne");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				cv = new ClassVo();
				cv.setClassNo(rset.getString("CLASS_NO"));
				cv.setClassHostNo(rset.getString("CLASS_HOST_NO"));
				cv.setClassName(rset.getString("CLASS_NAME"));
				cv.setFirstCategory(rset.getString("FIRST_CATEGORY"));
				cv.setSecondCategory(rset.getString("SECOND_CATEGORY"));
				cv.setThirdCategory(rset.getString("THIRD_CATEGORY"));
				cv.setClassType(rset.getString("CLASS_TYPE"));
				cv.setClassTime(rset.getInt("CLASS_TIME"));
				cv.setClassPrice(rset.getInt("CLASS_PRICE"));
				cv.setClassMaxnum(rset.getInt("CLASS_MAXNUM"));
				cv.setClassImg(rset.getString("CLASS_IMG"));
				cv.setClassLocation(rset.getString("CLASS_LOCATION"));
				cv.setClassIntro(rset.getString("CLASS_INTRO"));
				cv.setClassTarget(rset.getString("CLASS_TARGET"));
				cv.setClassCurriculum(rset.getString("CLASS_CURRICULUM"));
				cv.setClassDate(rset.getString("CS_CLASS_DATE"));
				cv.setClassStartTime(rset.getString("CS_STARTTIME"));
				cv.setClassEndTime(rset.getString("CS_ENDTIME"));
				cv.setHostName(rset.getString("MEM_NAME"));
				cv.setHostIntro(rset.getString("HOST_INTRO"));
				cv.setAverageReview(rset.getDouble("AVERAGE_REVIEW"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}

		return cv;
	}

	public ArrayList<ClassVo> classScheduleList(Connection conn, String cno) {
		ArrayList<ClassVo> csList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		try {
			String sql = prop.getProperty("scheduleSelect");
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, cno);
			
			rset = pstmt.executeQuery();
			
			csList = new ArrayList<ClassVo>();
			
			while(rset.next()) {
				ClassVo cv = new ClassVo();
				
				cv.setClassNo(cno);
				cv.setClassDate(rset.getString("CS_CLASS_DATE"));
				cv.setClassStartTime(rset.getString("CS_STARTTIME"));
				cv.setClassEndTime(rset.getString("CS_ENDTIME"));
				
				csList.add(cv);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return csList;
	}

	public ClassVo classPay(Connection conn, String cno) {
		ClassVo cv = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("classPay");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cno);
			rset = pstmt.executeQuery();
			if(rset.next()) {
				cv = new ClassVo();
				cv.setClassNo(cno);
				cv.setClassName(rset.getString("CLASS_NAME"));
				cv.setClassType(rset.getString("CLASS_TYPE"));
				cv.setClassPrice(rset.getInt("CLASS_PRICE"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return cv;
	}

	public ArrayList<ClassVo> classPayScheduleList(Connection conn, String cno) {
		ArrayList<ClassVo> csList = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		try {
			String sql = prop.getProperty("classPayScheduleList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, cno);
			
			rset = pstmt.executeQuery();

			csList = new ArrayList<ClassVo>();
			
			while(rset.next()) {
				ClassVo cv = new ClassVo();
				cv.setClassNo(cno);
				cv.setCsNo(rset.getString("CS_NO"));
				cv.setClassDate(rset.getString("CS_CLASS_DATE"));
				cv.setClassStartTime(rset.getString("CS_STARTTIME"));
				cv.setClassEndTime(rset.getString("CS_ENDTIME"));
				
				csList.add(cv);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return csList;
	}

	public int insertClassPay(Connection conn, String cno, String mno, int millage, double saveMillage,
			String csNo) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertClassPay");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mno);
			pstmt.setString(2, cno);
			pstmt.setInt(3, millage);
			pstmt.setDouble(4, saveMillage);
			pstmt.setString(5, csNo);
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

}
