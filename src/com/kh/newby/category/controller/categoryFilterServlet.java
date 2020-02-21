package com.kh.newby.category.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.category.model.service.categoryService;
import com.kh.newby.category.model.vo.filterVo;
import com.kh.newby.category.model.vo.categoryVo;
import com.kh.newby.common.PageInfo;

/**
 * Servlet implementation class categoryFilterServlet
 */
@WebServlet("/filterList.ca")
public class categoryFilterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public categoryFilterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		caType=ca2&fLoca=anywhere&amount=103000원+-+300000원&fCate=스포츠&fDay=화목&fType=5
//		caType=ca0&fLoca=anywhere&amount=112000원+-+300000원&fCate=&fDay=화목&fType=7
		
		String fLoca = request.getParameter("fLoca");
		String fCate = request.getParameter("fCate");
		String fType = request.getParameter("fType");
		String  fDay = request.getParameter("fDay");
		String amount = request.getParameter("amount");
		String keword = request.getParameter("keword");
		
		filterVo ft = new filterVo(fLoca, fCate, fType, fDay, amount, keword);
		
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
		int listCount = cs.getFilteCount(ft);

		// 총 250개
		// 25개
		// 만약 전체 게시글 수가 13개라면
		// 페이지는 1, 2가 나와야 한다.
		// ** 짜투리 게시글도 하나의 페이지로 처리해야 한다.
		// 13 --> 1.3 + 0.9(무조건) --> 2.2에서 double 에서 int 형태로  변형하면 2


		maxPage = (int)((double)listCount/limit +0.9);

		// 시작 페이지와 마지막 페이지 계산
		startPage = ((int)((double)currentPage / limit +0.9)-1) *limit + 1;

		// 1 page = 1 ~ 1
		// 2 page = 11 ~ 20

		endPage = startPage + limit -1;

		// 만약 마이막 페이지보다 현재 게시글이 끝나는 페이지가 적다면
		if(endPage > maxPage) {
			endPage = maxPage;
		}

//		caList = cs.selectFiList(ft, currentPage, limit);

		String page = "";

		if(caList != null) {
//
//			switch (ft.getc) {
//			case "ca0": page = "views/category0_dynamic.jsp"; break;
//			case "ca1": page = "views/category1_static.jsp"; break;
//			case "ca2": page = "views/category2_activity.jsp?caType=ca2"; break;
//			case "ca3": page = "views/category2_activity.jsp?caType=ca3"; break;
//			case "ca4": page = "views/category2_activity.jsp?caType=ca4"; break;
//			case "ca5": page = "views/category2_activity.jsp?caType=ca5"; break;
//			default: page = "views/common/errorPage.jsp"; break;
//			}
//			switch (caType) {
//			case "ca0": page = "views/category0_dynamic.jsp"; break;
//			case "ca1": page = "views/category1_static.jsp"; break;
//			case "ca2": page = "views/category2_activity.jsp"; break;
//			case "ca3": page = "views/category3_cooking.jsp"; break;
//			case "ca4": page = "views/category4_art.jsp"; break;
//			case "ca5": page = "views/category5_study.jsp"; break;
//			default: page = "views/common/errorPage.jsp"; break;
//			}
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
