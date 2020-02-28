package com.kh.newby.report.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.claim.model.vo.Claim;
import com.kh.newby.common.PageInfo;
import com.kh.newby.report.model.service.ReportService;

/**
 * Servlet implementation class ReportListServlet
 */
@WebServlet("/reportSelectList.ro")
public class ReportListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReportListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Claim> list = null;

		ReportService rs = new ReportService();
		
		// 페이징 하기
		// 첫번째 페이지
		int startPage;

		// 마지막 페이지
		int endPage;

		// 전체 페이지 중 마지막 페이지
		int maxPage;

		// 사용자가 위치한 현재 페이지
		int currentPage;

		// 총 페이지 수
		int limit;

		// 처음 접속시 페이지 
		currentPage = 1;

		// 글 갯수 제한
		limit = 10;

		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		int listCount = rs.getListCount();

		maxPage = (int)((double)listCount/limit + 0.9);

		startPage = ((int)((double)currentPage / limit + 0.9) -1) * limit +1;

		endPage = startPage + limit -1;

		if(endPage > maxPage) {
			endPage = maxPage;
		}

		list = rs.reportSelectList(currentPage,limit);
		
		String page = "";
		System.out.println(list);
		if(list != null) {
			page = "views/customer_report2.jsp";
			request.setAttribute("list", list);
			
			PageInfo pi = new PageInfo(currentPage,listCount,limit,maxPage,startPage,endPage);
			System.out.println(list);
			
			request.setAttribute("pi", pi);
		}
		
		request.getRequestDispatcher(page).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
