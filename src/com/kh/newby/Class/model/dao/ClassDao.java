package com.kh.newby.Class.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import com.kh.newby.Class.model.vo.ClassVo;
import static com.kh.newby.common.JDBCTemplate.*;

public class ClassDao {
	
	private Properties prop;

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

}
