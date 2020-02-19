package com.kh.newby.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.admin.service.AdminService;
import com.kh.newby.classvo.model.vo.ClassVo;

/**
 * Servlet implementation class ClassDetailServlet
 */
@WebServlet("/classDetail.ad")
public class ClassDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClassDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cno = request.getParameter("cno");
		
		ClassVo c = new AdminService().selectOne(cno);
		System.out.println(c);
		
		System.out.println(c);
		String page = "";
		
		if(c != null) {
			page = "views/admin_classDetail.jsp";
			request.setAttribute("c", c);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "클래스 정보를 불러오는데 오류가 발생하였습니다.");
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
