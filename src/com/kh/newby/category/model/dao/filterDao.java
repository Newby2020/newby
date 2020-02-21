package com.kh.newby.category.model.dao;

import java.util.ArrayList;
import java.util.List;

import com.kh.newby.category.model.vo.filterVo;

public class filterDao {
	
	  public static void main(String[] args) {
	      
		  filterVo ft = new filterVo();
		  
		  System.out.println(fQueryMaker(ft).toString());
		  
	  }
	  
	  public static StringBuilder fQueryMaker (filterVo ft) {
		  
	      ft.setfLoca("");
	      ft.setAmount("103000원 - 300000원"); 
	      ft.setfDay("화목금토");
	      ft.setfType("7");

		  StringBuilder sql = new StringBuilder();
	      	      
	      int loPrice =Integer.parseInt(ft.getAmount().split(" - ")[0].split("원")[0]); 
	      int hiPrice =Integer.parseInt(ft.getAmount().split(" - ")[1].split("원")[0]); 
	      
	      sql.append("SELECT CA.* \r\n" + 
	            "FROM (SELECT ROWNUM RNO, CLASS_NO CNO, CLASS_NAME CNAME, FIRST_CATEGORY FC, SECOND_CATEGORY SC," +
	            "THIRD_CATEGORY TC, CLASS_PRICE CP, CLASS_IMG, AVERAGE_REVIEW, "+ 
	            "CS_CLASS_DATE,TO_CHAR(TO_DATE(CS_CLASS_DATE,'YYYY-MM-DD'),'DY') SDAY, CLASS_LOCATION LOCA,\r\n"
	            + " CLASS_TYPE CT " + 
	            "FROM CLASS C JOIN CLASS_SCHEDULE CS ON (CLASS_NO = CS_CLASS_NO)\r\n" + 
	            "JOIN HOST H ON (CLASS_HOST_NO = HOST_NO) \r\n" + 
	            "WHERE ROWNUM <= 100 AND CLASS_STATUS='승인' ) CA"
	            + " WHERE CP BETWEEN "+loPrice+" AND "+hiPrice
	            + " AND LOCA LIKE '%"+ft.getfLoca()+"%'");
	      
	      switch (ft.getfType()) {
	      case "2": sql.append(" AND CT = '그룹'"); break;
	      case "5": sql.append(" AND CT = '1:1'"); break;
	      case "7": sql.append(" AND (CT = '1:1' OR CT = '그룹')"); break;
	      default:break;
	      }
	      
	      
	      if(!ft.getfDay().isEmpty()) {
	         
	         sql.append(" AND (");
	         List<Character> daylist = new ArrayList<>();
	         
	         for (int i = 0; i < ft.getfDay().length(); i++) {
	            if(i != ft.getfDay().length() - 1) {
	               sql.append("SDAY ='" +ft.getfDay().charAt(i)+"' OR ");
	               
	            } else {
	               sql.append("SDAY ='" +ft.getfDay().charAt(i)+"')");
	               
	            }
	         }
	         
	      }
	      
	   
	      
	      
	      return sql;
	   }
	  

}
