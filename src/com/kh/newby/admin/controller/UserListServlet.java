package com.kh.newby.admin.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.kh.newby.member.model.vo.Member;
import com.kh.newby.admin.service.AdminService;
import com.kh.newby.common.PageInfo;

/**
 * Servlet implementation class User
 */
@WebServlet("/userList.ad")
public class UserListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		response.setContentType("application/json; charset=UTF-8");
		
		
		// 1. 페이징 처리하기
		ArrayList<Member> list = null;
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
		
		int listCount = as.getUserListCount();
//		System.out.println("총 사용자 수 : " + listCount);
		
		maxPage = (int)((double)listCount / limit + 0.9);
		startPage = ((int)((double)currentPage / limit + 0.9) -1) * limit + 1;
//				                     ((1.0     /  10   + 0.9) -1) * 10   + 1
//				                     (      0.1        + 0.9) -1) * 10   + 1
//				                     (            1           -1) * 10   + 1
//				                                  0               * 10   + 1	
//        										               0         + 1	 = 1		
		
		endPage = startPage + limit - 1;
		
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		list = as.selectUserList(currentPage, limit);
		System.out.println("유저 리스트 : " + list);
		
		String page = "";
		
//		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
		
		if(list != null) {
			page = "views/admin_userList.jsp";
			request.setAttribute("list", list);
			
			PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
			request.setAttribute("pi", pi);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "유저 목록 조회 실패!");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
		
//		Map fulling = new HashMap();
//		fulling.put("data",list);
//		fulling.put("page",pi);
//		new Gson().toJson(fulling, response.getWriter());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
