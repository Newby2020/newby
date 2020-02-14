package com.kh.newby.Class.model.dao;

import static com.kh.newby.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.newby.Class.model.vo.ClassVo;

public class ClassDao2 {

   private Properties prop;

   public ClassDao2() {
      prop = new Properties();

      String filePath = ClassDao.class.getResource("/config/class-query.properties").getPath();

      try {
         prop.load(new FileReader(filePath));
      } catch (IOException e) {
         e.printStackTrace();
      }
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