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
		//페이지 처리에 필요한 변수들
		//한번에 표시할 페이지들 중 가장 앞의 페이지
		int startPage;
		// 한번에 표시할 페이지 중에 가장 뒤의 페이지
		int endPage;
		// 전체 페이지의 가장 마지막 페이지
		int maxPage;
		//사용자가 위치한 현재 페이지
		int currentPage;
		// 총 페이지 수 (한페이지당 보여줄 게시글 수)
		int limit;
		//처음 첩속 시 페이지는 1 페이지 부터 시작한다.
		currentPage = 1;
		// 글 개수 및 페이지 수 10개로 제한 하기
		limit = 6;
		// 만약에 사용자가 현재 페이지의 정보를 들고 왔다면
		// 현재 페이지의 정보를 1에서 특정 페이지로 수정해줘야 한다.
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		// 페이징 처리
		int listCount = cs.getListCount(caType);

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
