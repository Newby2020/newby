package com.kh.newby.Class.model.dao;

import static com.kh.newby.common.JDBCTemplate.*;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.Class.model.vo.ClassVo;
import com.kh.newby.Class.model.vo.ClassVo2;

public class ClassDao2 {

   private Properties prop;

   public ClassDao2() {
      prop = new Properties();

      String filePath = ClassDao2.class.getResource("/config/class-query2.properties").getPath();

      try {
         prop.load(new FileReader(filePath));
      } catch (IOException e) {
         e.printStackTrace();
      }
   }
   
      public int insertClass(Connection con, ClassVo2 c) {      
         int result1 = 0;
         int result2 = 0;
         int result3 = 0;
         PreparedStatement pstmt = null;
         String sql1 = prop.getProperty("insertClass");
         String sql2 = prop.getProperty("insertClassSchedule");
         String sql3 = prop.getProperty("insertClassApproval");
         try {
        	 
        	
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
            
//            System.out.println(result1);
            String[] cdate = c.getClassDate().split(",");
//            System.out.println(Arrays.toString(cdate));
            String[] cstime = c.getClassStartTime().split(",");
//            System.out.println(Arrays.toString(cstime));
            String[] cetime = c.getClassEndTime().split(",");
//            System.out.println(Arrays.toString(cetime));
            
            
            for(int i=0; i<cdate.length; i++) {
               pstmt = con.prepareStatement(sql2);
               pstmt.setString(1, cdate[i]);
               pstmt.setString(2, cstime[i]);
               pstmt.setString(3, cetime[i]);
               result2 = pstmt.executeUpdate();
            }
            
            pstmt = con.prepareStatement(sql3);
            result3 = pstmt.executeUpdate();
            
         } catch (SQLException e) {
            e.printStackTrace();
         } finally {
            close(pstmt);
         }
         return result3;
      }
      
      public ArrayList<ClassVo2> ClassManagerList(Connection con, String hno) {
         ArrayList<ClassVo2> list = new ArrayList<>();
         ClassVo2 c = null;
         PreparedStatement pstmt = null;
         ResultSet rset = null;
         String sql = prop.getProperty("classManager");
         
         try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, hno);
            rset = pstmt.executeQuery();
           
            while(rset.next()) {
               c = new ClassVo2();
               
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
         int result = 0;
         PreparedStatement pstmt = null;
         String sql = prop.getProperty("deleteClass");
         try {
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, cno);
            result=pstmt.executeUpdate();
            System.out.println(result);
         } catch(SQLException e) {
            e.printStackTrace();
         } finally {
            close(pstmt);
         }
         
         return result;
      }

	public ArrayList<ClassVo2> ClassScheduleList(Connection con, String mno) {
		ArrayList<ClassVo2> list = new ArrayList<>();
		ClassVo2 c = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("classSchedule");
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mno);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				c = new ClassVo2();
				c.setPayNo(rset.getString("PAY_NO"));
				c.setClassName(rset.getString("CLASS_NAME"));
				c.setClassDate(rset.getString("PS_DATE"));
				c.setClassStartTime(rset.getString("PS_STARTTIME"));
				c.setClassEndTime(rset.getString("PS_ENDTIME"));
				c.setClassTime(rset.getInt("CLASS_TIME"));
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

	public ArrayList<ClassVo2> MileageList(Connection con, String mno) {
		ArrayList<ClassVo2> list = new ArrayList<>();
		ClassVo2 c = null;
		int mile =0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql1 = prop.getProperty("mMileage");
		String sql2 = prop.getProperty("mileageList");
		try {
			
			pstmt = con.prepareStatement(sql1);
			pstmt.setString(1, mno);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				mile=rset.getInt("MILEAGE");
			}

			pstmt = con.prepareStatement(sql2);
			pstmt.setString(1, mno);
			rset = pstmt.executeQuery();
			while(rset.next()) {
				c = new ClassVo2();
				c.setM_mile(mile);
				c.setPayDate(rset.getDate("PAY_DATE"));
				c.setClassName(rset.getString("CLASS_NAME"));
				c.setM_pMile(rset.getInt("PAY_MILEAGE"));
				c.setM_pSaveMile(rset.getInt("PAY_SAVE_MILEAGE"));
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

	public ArrayList<ClassVo2> modifyClassList(Connection con, String cno) {
		ArrayList<ClassVo2> list = new ArrayList<>();
		ClassVo2 c = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("modifyClass");
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, cno);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				c = new ClassVo2();
				
				c.setClassName(rset.getString("CLASS_NAME"));
				c.setFirstCategory(rset.getString("FIRST_CATEGORY"));
				c.setSecondCategory(rset.getString("SECOND_CATEGORY"));
				c.setThirdCategory(rset.getString("THIRD_CATEGORY"));
				c.setClassType(rset.getString("CLASS_TYPE"));
				c.setClassTime(rset.getInt("CLASS_TIME"));
				c.setClassPrice(rset.getInt("CLASS_PRICE"));
				c.setClassMaxnum(rset.getInt("CLASS_MAXNUM"));
				c.setClassImg(rset.getString("CLASS_IMG"));
				c.setClassLocation(rset.getString("CLASS_LOCATION"));
				c.setClassIntro(rset.getString("CLASS_INTRO"));
				c.setClassTarget(rset.getString("CLASS_TARGET"));
				c.setClassCurriculum(rset.getString("CLASS_CURRICULUM"));
				c.setClassDate(rset.getString("CS_CLASS_DATE"));
				c.setClassStartTime(rset.getString("CS_STARTTIME"));
				c.setClassEndTime(rset.getString("CS_ENDTIME"));
				list.add(c);
			}
		} catch(SQLException e) {
			
		} finally {
			
		}
		
		return list;
	}

	public int updateClass(Connection con, ClassVo2 c) {
		int result1 = 0;
		int result2 = 0;
		int result3 = 0;
		
		PreparedStatement pstmt = null;
		String sql1 = prop.getProperty("updateClass");
		String sql2 = prop.getProperty("deleteClassSchedule");
		String sql3 = prop.getProperty("updateClassSchedule");
		
		try {
            pstmt = con.prepareStatement(sql1);
            pstmt.setString(1, c.getClassName());
            pstmt.setString(2, c.getFirstCategory());
            pstmt.setString(3, c.getSecondCategory());
            pstmt.setString(4, c.getThirdCategory());
            pstmt.setString(5, c.getClassType());
            pstmt.setInt(6, c.getClassTime());
            pstmt.setInt(7, c.getClassPrice());
            pstmt.setInt(8, c.getClassMaxnum());
            pstmt.setString(9, c.getClassImg());
            pstmt.setString(10, c.getClassLocation());
            pstmt.setString(11, c.getClassIntro());
            pstmt.setString(12, c.getClassTarget());
            pstmt.setString(13, c.getClassCurriculum());
            pstmt.setString(14, c.getClassNo());
            pstmt.setString(15, c.getHostNo());
            result1 = pstmt.executeUpdate();
            if(result1 > 0) {
            	System.out.println("클래스 수정 완료");
            }
            
            pstmt = con.prepareStatement(sql2);
            pstmt.setString(1, c.getClassNo());
            result2 = pstmt.executeUpdate();
            if(result2 > 0) {
            	System.out.println("클래스 스케줄 삭제 완료");
            }
            
            
//            System.out.println(result1);
            String[] cdate = c.getClassDate().split(",");
//            System.out.println(Arrays.toString(cdate));
            String[] cstime = c.getClassStartTime().split(",");
//            System.out.println(Arrays.toString(cstime));
            String[] cetime = c.getClassEndTime().split(",");
//            System.out.println(Arrays.toString(cetime));
            
            
            for(int i=0; i<cdate.length; i++) {
               pstmt = con.prepareStatement(sql3);
               pstmt.setString(1, c.getClassNo());
               pstmt.setString(2, cdate[i]);
               pstmt.setString(3, cstime[i]);
               pstmt.setString(4, cetime[i]);
               result3 = pstmt.executeUpdate();
            }
            
            if(result3 > 0) {
            	System.out.println("클래스스케줄 수정완료");
            }
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return result2;
	}

}