package com.kh.newby.Class.model.service;

import static com.kh.newby.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.newby.Class.model.dao.ClassDao2;
import com.kh.newby.Class.model.vo.ClassVo;

public class ClassService2 {
   private ClassDao2 cDao = new ClassDao2();
   
   // 클래스 등록
   public int insertClass(ClassVo c) {
      
      Connection con = getConnection();
      
      System.out.println("service");
      
      int result = cDao.insertClass(con, c);
      if(result > 0) {
         commit(con);
      } else {
         rollback(con);
      }
      close(con);
      
      return result;
   }

   
   public ArrayList<ClassVo> selectHnoClassList(String hno) {
      Connection con = getConnection();
      
      ArrayList<ClassVo> list = new ArrayList<>();
      list = new ClassDao2().selectHnoClassList(con, hno);
      if(!list.isEmpty()) {
         commit(con);
      } else {
         rollback(con);
      }
      
      return list;
   }

   public int deleteClass(String cno) {
      int result = 0;
      Connection con = getConnection();
      ClassDao2 cd = new ClassDao2();
      result = cd.deleteClass(con,cno);
      
      if(result>0) {
         commit(con);
      } else {
         rollback(con);
      }
      
      close(con);
      
      return result;
   }
}
