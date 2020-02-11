package com.kh.newby.Class.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.Class.model.service.ClassService;
import com.kh.newby.Class.model.vo.ClassVo;

/**
 * Servlet implementation class ClassSelectOneServlet
 */
@WebServlet("/selectOne.ci")
public class ClassSelectOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClassSelectOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cno = "C" + request.getParameter("cno");
		
		ClassService sc = new ClassService();
		
		ClassVo cv = new ClassVo();
		
		String page = "";
		
		// 클래스 상세정보
		cv = sc.selectOne(cno);
		
		if(cv != null) {
			page = "views/class_information.jsp";
			request.setAttribute("class", cv);
		}else {
			page = "views/errorPage.jsp";
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
