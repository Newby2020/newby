package com.kh.newby.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.admin.service.AdminService;

/**
 * Servlet implementation class Index
 */
@WebServlet("/index.ad")
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// ==== 이용자 수 가져오기 ================================
		int userCount = 0;
		AdminService as = new AdminService();
		
		userCount = as.getUserCount();
		
		String page = "";
		
		if(userCount > 0) {
			page = "/views/admin_index.jsp";
			request.setAttribute("userCount", userCount);
		} else {
			page = "/views/common/errorPage.jsp";
			request.setAttribute("msg", "이용자 수 불러오기 실패");
		}
		
		// ==== 호스트 수 가져오기 ================================
		int hostCount = 0;
		
		hostCount = as.getHostCount();
		
		if(hostCount > 0) {
			page = "/views/admin_index.jsp";
			request.setAttribute("hostCount", hostCount);
		} else {
			page = "/views/common/errorPage.jsp";
			request.setAttribute("msg", "호스트 수 불러오기 실패");
		}
		
		// ==== 클래스 수 가져오기 ================================
		int classCount = 0;
		
		classCount = as.getClassCount();
		
		if(classCount > 0) {
			page = "/views/admin_index.jsp";
			request.setAttribute("classCount", classCount);
		} else {
			page = "/views/common/admin_index.jsp";
			request.setAttribute("msg", "클래스 수 불러오기 실패");
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
