package com.kh.newby.Class.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Properties;
import com.kh.newby.Class.model.vo.ClassVo;
import com.kh.newby.Member.model.vo.Member;

import static com.kh.newby.common.JDBCTemplate.*;

public class ClassDao {
	
	private Properties prop;
	
	

	public ClassDao() {
		prop=new Properties();
		
		String filePath = ClassDao.class.getResource("/config/class-query.properties").getPath();
		
		try {
			prop.load(new FileReader(filePath));
		} catch(IOException e) {
			e.printStackTrace();
		}
	}


	public ClassVo selectOne(Connection conn, String cno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ClassVo cv = null;
		
		try {
			String sql = prop.getProperty("classSelectOne");
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				cv = new ClassVo();
				
				cv.setClassNo(cno);
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
				cv.setClassCurriculum(rset.getString("CLASS_CURRICURUM"));
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

	
	// 지훈아 완성하자
	public int insertClass(Connection con, ClassVo c) {		
		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		PreparedStatement pstmt = null;
		String sql1 = prop.getProperty("insertClass");
		String sql2 = prop.getProperty("insertClassSchedule");
		String sql3 = prop.getProperty("insertClassApproval");
		try {
			System.out.println("dao");
			pstmt = con.prepareStatement(sql1);
			pstmt.setString(1, c.getHostNo());
			pstmt.setString(2, c.getClassName());
			pstmt.setString(3, c.getFirstCategory());
			pstmt.setString(4, c.getSecondCategory());
			pstmt.setString(5, c.getThirdCategory());
			pstmt.setString(6, c.getClassType());
			pstmt.setInt(7, c.getClassTime());
			pstmt.setInt(8, c.getClassPrice());
			pstmt.setInt(9, c.getClassMaxnum());
			pstmt.setString(10, c.getClassImg());
			pstmt.setString(11, c.getClassLocation());
			pstmt.setString(12, c.getClassIntro());
			pstmt.setString(13, c.getClassTarget());
			pstmt.setString(14, c.getClassCurriculum());
			result1 = pstmt.executeUpdate();
			
//			System.out.println(result1);
			String[] cdate = c.getClassDate().split(",");
//			System.out.println(Arrays.toString(cdate));
			String[] cstime = c.getClassStartTime().split(",");
//			System.out.println(Arrays.toString(cstime));
			String[] cetime = c.getClassEndTime().split(",");
//			System.out.println(Arrays.toString(cetime));
			
			
			for(int i=0; i<cdate.length; i++) {
				pstmt = con.prepareStatement(sql2);
				pstmt.setString(1, cdate[i]);
				pstmt.setString(2, cstime[i]);
				pstmt.setString(3, cetime[i]);
				result2 = pstmt.executeUpdate();
			}
			System.out.println(result2);
			
			pstmt = con.prepareStatement(sql3);
			result3 = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result3;
	}


	public ArrayList<ClassVo> selectHnoClassList(Connection con, String hno) {
		ArrayList<ClassVo> list = new ArrayList<>();
		ClassVo c = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectHnoClassList");
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, hno);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				c = new ClassVo();
				
				c.setClassEnrollDate(rset.getDate("CLASS_ENROLLDATE"));
				c.setClassName(rset.getString("CLASS_NAME"));
				c.setClassNo(rset.getNString("CLASS_NO"));
				
				list.add(c);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}


	public int deleteClass(Connection con, String cno) {
		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		PreparedStatement pstmt = null;
		String sql1 = prop.getProperty("deleteClassApproval");
		String sql2 = prop.getProperty("deleteClassSchedule");
		String sql3 = prop.getProperty("deleteClass");
		try {
			pstmt = con.prepareStatement(sql1);
			pstmt.setString(1, cno);
			result1=pstmt.executeUpdate();
			System.out.println(result1);
			
			
			pstmt = con.prepareStatement(sql2);
			pstmt.setString(1, cno);
			result2=pstmt.executeUpdate();
			System.out.println(result2);
			
			pstmt = con.prepareStatement(sql3);
			pstmt.setString(1, cno);
			result3=pstmt.executeUpdate();
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result3;
	}

}
