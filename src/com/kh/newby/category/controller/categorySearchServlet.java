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
 * Servlet implementation class categorySearchServlet
 */
@WebServlet("/searchList.ca")
public class categorySearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public categorySearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//카테고리 검색 서블릿
		String keyword = request.getParameter("keyword");
		
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
		int listCount = cs.getSearchCount(keyword);
		maxPage = (int)((double)listCount/limit +0.9);

		// 시작 페이지와 마지막 페이지 계산
		startPage = ((int)((double)currentPage / limit +0.9)-1) *limit + 1;

		endPage = startPage + limit -1;

		// 만약 마이막 페이지보다 현재 게시글이 끝나는 페이지가 적다면
		if(endPage > maxPage) {
			endPage = maxPage;
		}

		caList = cs.selectSearchList(keyword, currentPage, limit);

		String page = "";

		if(caList != null) {

			page = "views/category1st.jsp?caType=ca0"; 
			
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
