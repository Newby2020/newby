package com.kh.newby.Class.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Properties;
import com.kh.newby.Class.model.vo.ClassVo;
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
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		String sql1 = prop.getProperty("insertClass");
		String sql2 = prop.getProperty("insertClassSchedule");
		
		try {
			System.out.println("dao");
			pstmt1 = con.prepareStatement(sql1);
			pstmt1.setString(1, c.getHostNo());
			pstmt1.setString(2, c.getClassName());
			pstmt1.setString(3, c.getFirstCategory());
			pstmt1.setString(4, c.getSecondCategory());
			pstmt1.setString(5, c.getThirdCategory());
			pstmt1.setString(6, c.getClassType());
			pstmt1.setInt(7, c.getClassTime());
			pstmt1.setInt(8, c.getClassPrice());
			pstmt1.setInt(9, c.getClassMaxnum());
			pstmt1.setString(10, c.getClassImg());
			pstmt1.setString(11, c.getClassLocation());
			pstmt1.setString(12, c.getClassIntro());
			pstmt1.setString(13, c.getClassTarget());
			pstmt1.setString(14, c.getClassCurriculum());
			result1 = pstmt1.executeUpdate();
			System.out.println(result1);
			String[] cdate = c.getClassDate().split(",");
//			System.out.println(Arrays.toString(cdate));
			String[] cstime = c.getClassStartTime().split(",");
//			System.out.println(Arrays.toString(cstime));
			String[] cetime = c.getClassEndTime().split(",");
//			System.out.println(Arrays.toString(cetime));
			
			
			for(int i=0; i<cdate.length; i++) {
				pstmt1 = con.prepareStatement(sql2);
				pstmt1.setString(1, c.getHostNo());
				pstmt1.setString(2, cdate[i]);
				pstmt1.setString(3, cstime[i]);
				pstmt1.setString(4, cetime[i]);
				result2 = pstmt1.executeUpdate();
			}
			System.out.println(result2);
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt1);
		}
		return result2;
	}

}
