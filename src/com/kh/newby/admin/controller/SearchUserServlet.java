package com.kh.newby.admin.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.Member.model.vo.Member;
import com.kh.newby.admin.service.AdminService;

/**
 * Servlet implementation class SearchUserServlet
 */
@WebServlet("/serchUser.ad")
public class SearchUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchValue = request.getParameter("searchValue");
		System.out.println("검색 값 : " + searchValue);
		
		ArrayList<Member> list = null;
		AdminService as = new AdminService();
		
		int startPage;
		int endPage;
		int maxPage;
		int currentPage;
		int limit;
		
		currentPage = 1;
		limit = 10;
		
		if(request.getParameter("currentPage")!= null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		int listCount = as.getSearchedUserListCount(searchValue);
		System.out.println("검색된 행의 수 : " + listCount);
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
//		String page = "";
//		
//		if(list != null) {
//			page = "userList.ad";
//			
//		} else {
//			page = "views/common/errorPage.jsp";
//			request.setAttribute("msg", "검색된 리스트 출력에 실패하였습니다.");
//		}
//		request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
