package com.kh.newby.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.admin.service.AdminService;
import com.kh.newby.classvo.model.vo.ClassVo;
import com.kh.newby.common.PageInfo;

/**
 * Servlet implementation class ClassCancle
 */
@WebServlet("/classApplyList.ad")
public class ClassApplyListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClassApplyListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int listCount = 0;
		int currentPage = 1;
		int limit = 10;
		
		int startPage;
		int endPage;
		int maxPage;
		
		ArrayList<ClassVo> list = null;
		
		AdminService as = new AdminService();
			
		listCount = as.getClassApplyListCount();
//		System.out.println(listCount);
				
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		maxPage = (int)((double)listCount / limit + 0.9);
		startPage = ((int)((double)currentPage / limit + 0.9) -1) * limit + 1;
		endPage = startPage + limit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;			
		}
		
		list = as.selectClassApplyList(currentPage, limit);
//		System.out.println(list);
		
		String page = "";
		
		if(list != null) {
			page = "views/admin_classApplyList.jsp";
			request.setAttribute("list", list);
			
			PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
			request.setAttribute("pi", pi);
			
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "클래스 등록 신청 목록을 불러오는데 실패하였습니다.");
			
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









