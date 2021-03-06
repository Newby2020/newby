package com.kh.newby.category.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.category.model.service.categoryService;
import com.kh.newby.category.model.vo.categoryVo;
import com.kh.newby.common.PageInfo;
/**
 * Servlet implementation class ClassListServlet
 */
@WebServlet("/selectList.ca")
public class categoryListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public categoryListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 카테고리별 클래스 리스트를 받아 데이터를 전달하는 서블릿
		String caType = request.getParameter("caType");

		ArrayList<categoryVo> caList = new ArrayList<categoryVo>();

		categoryService cs = new categoryService();

		//페이지 처리
		int startPage;
		int endPage;
		int maxPage;
		int currentPage;
		int limit;
		currentPage = 1;
		limit = 6;
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		// 페이징 처리
		int listCount = cs.getListCount(caType);

		maxPage = (int)((double)listCount/limit +0.9);

		startPage = ((int)((double)currentPage / limit +0.9)-1) *limit + 1;

		endPage = startPage + limit -1;

		// 만약 마이막 페이지보다 현재 게시글이 끝나는 페이지가 적다면
		if(endPage > maxPage) {
			endPage = maxPage;
		}

		caList = cs.selectCaList(caType, currentPage, limit);

		String page = "";

		if(caList != null) {

			switch (caType) {
			case "ca0": page = "views/category1st.jsp?caType=ca0"; break;
			case "ca1": page = "views/category1st.jsp?caType=ca1"; break;
			case "ca2": page = "views/category2nd.jsp?caType=ca2"; break;
			case "ca3": page = "views/category2nd.jsp?caType=ca3"; break;
			case "ca4": page = "views/category2nd.jsp?caType=ca4"; break;
			case "ca5": page = "views/category2nd.jsp?caType=ca5"; break;
			default: page = "views/common/errorPage.jsp"; break;
			}
			
			request.setAttribute("caList", caList);
			
			PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
			request.setAttribute("pi", pi);
			
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "클래스 상세페이지 불러오기 실패");
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
