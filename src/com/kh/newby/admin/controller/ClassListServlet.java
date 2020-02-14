package com.kh.newby.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.Class.model.vo.ClassVo;
import com.kh.newby.admin.service.AdminService;

/**
 * Servlet implementation class ClassApply
 */
@WebServlet("/classList.ad")
public class ClassListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClassListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 페이징 처리하기
		ArrayList<ClassVo> list = null;
		AdminService as = new AdminService();
		
		int startPage;
		int endPage;
		int maxPage;
		int currentPage;
		int limit;
		
		currentPage = 1;
		limit = 10;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		//==== 클래스 개설 정보 to 관리자 =======================================================
		
		int acc = Integer.parseInt(request.getParameter("acc"));
		
		list = as.selectClassList(acc);
		
		String page = "";
		
		if(list != null) {
			page = "views/admin_classList.jsp";
			request.setAttribute("list", list);
		} else {
			page = "views/admin_classList.jsp";
			request.setAttribute("msg", "신규 클래스 개설 리스트 불러오기 실패");
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
