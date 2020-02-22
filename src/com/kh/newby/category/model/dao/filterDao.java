package com.kh.newby.category.model.dao;

import java.util.ArrayList;
import java.util.List;

import com.kh.newby.category.model.vo.filterVo;

public class filterDao {
	
	public StringBuilder fQueryMaker (filterVo ft) {

		StringBuilder sql = new StringBuilder();

		int loPrice =Integer.parseInt(ft.getAmount().split(" - ")[0].split("원")[0]); 
		int hiPrice =Integer.parseInt(ft.getAmount().split(" - ")[1].split("원")[0]); 
		
		sql.append("SELECT RNO, CNO, CNAME, LOCA, CP, CIMG, AVGR, FC, SC, TC\r\n" + 
				"FROM (SELECT ROWNUM RNO, CLASS_NO CNO, CLASS_NAME CNAME, FIRST_CATEGORY FC,\r\n" + 
				"SECOND_CATEGORY SC,THIRD_CATEGORY TC, CLASS_PRICE CP, CLASS_IMG, AVERAGE_REVIEW, \r\n" + 
				"CS_CLASS_DATE,TO_CHAR(TO_DATE(CS_CLASS_DATE,'YYYY-MM-DD'),'DY') SDAY, \r\n" + 
				"CLASS_LOCATION LOCA, CLASS_TYPE CT, CLASS_IMG CIMG, AVERAGE_REVIEW AVGR\r\n" + 
				" FROM CLASS C JOIN CLASS_SCHEDULE CS ON (CLASS_NO = CS_CLASS_NO)\r\n" + 
				"JOIN HOST H ON (CLASS_HOST_NO = HOST_NO) \r\n" + 
				"WHERE ROWNUM <= ? AND CLASS_STATUS='승인' ) CA"
				+ " WHERE CP BETWEEN "+loPrice+" AND "+hiPrice
				+ " AND LOCA LIKE '%"+ft.getfLoca()+"%'");
		
		// 수업 방식 필터링
		switch (ft.getfType()) {
		case "2": sql.append(" AND CT = '그룹'"); break;
		case "5": sql.append(" AND CT = '1:1'"); break;
		case "7": sql.append(" AND (CT = '1:1' OR CT = '그룹')"); break;
		default:break;
		}

		//요일 필터링
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

		// 3차 카테고리 필터링
		if(!ft.getfCate().isEmpty()) {
			String [] caFilter = ft.getfCate().split(",");

			sql.append(" AND (");

			for (int i = 0; i < caFilter.length; i++) {
				if(i != caFilter.length - 1) {
					sql.append("TC ='" +caFilter[i]+"' OR ");
				} else {
					sql.append("TC ='" +caFilter[i]+"')");
				}
			}
		}
		
		// 1차 카테고리 선택
		switch (ft.getCaType()) {
		case "ca0": sql.append(" AND FC='신나는' "); break;
		case "ca1": sql.append(" AND FC='차분한' "); break;
		default:break;
		}
		
		//ROWNUM 설정
		sql.append(" AND RNO>= ?");
		
		return sql;
	}
	
	public StringBuilder fListCounter (filterVo ft) {

		StringBuilder sql = new StringBuilder();

		int loPrice =Integer.parseInt(ft.getAmount().split(" - ")[0].split("원")[0]); 
		int hiPrice =Integer.parseInt(ft.getAmount().split(" - ")[1].split("원")[0]); 

		sql.append("SELECT COUNT(*)\r\n" + 
				"FROM (SELECT ROWNUM RNO, CLASS_NO CNO, CLASS_NAME CNAME, FIRST_CATEGORY FC, SECOND_CATEGORY SC," +
				"THIRD_CATEGORY TC, CLASS_PRICE CP, CLASS_IMG, AVERAGE_REVIEW, "+ 
				"CS_CLASS_DATE,TO_CHAR(TO_DATE(CS_CLASS_DATE,'YYYY-MM-DD'),'DY') SDAY, CLASS_LOCATION LOCA,\r\n"
				+ " CLASS_TYPE CT " + 
				"FROM CLASS C JOIN CLASS_SCHEDULE CS ON (CLASS_NO = CS_CLASS_NO)\r\n" + 
				"JOIN HOST H ON (CLASS_HOST_NO = HOST_NO) \r\n" + 
				"WHERE ROWNUM <= 100 AND CLASS_STATUS='승인' ) CA"
				+ " WHERE CP BETWEEN "+loPrice+" AND "+hiPrice
				+ " AND LOCA LIKE '%"+ft.getfLoca()+"%'");

		// 수업 방식 필터링
		switch (ft.getfType()) {
		case "2": sql.append(" AND CT = '그룹'"); break;
		case "5": sql.append(" AND CT = '1:1'"); break;
		case "7": sql.append(" AND (CT = '1:1' OR CT = '그룹')"); break;
		default:break;
		}

		//요일 필터링
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

		// 3차 카테고리 필터링
		if(!ft.getfCate().isEmpty()) {
			String [] caFilter = ft.getfCate().split(",");

			sql.append(" AND (");

			for (int i = 0; i < caFilter.length; i++) {
				if(i != caFilter.length - 1) {
					sql.append("TC ='" +caFilter[i]+"' OR ");
				} else {
					sql.append("TC ='" +caFilter[i]+"')");
				}
			}
		}
				
		// 1차 카테고리 선택
		switch (ft.getCaType()) {
		case "ca0": sql.append(" AND FC='신나는' "); break;
		case "ca1": sql.append(" AND FC='차분한' "); break;
		default: break;
		}
		return sql;
	}
	
}
