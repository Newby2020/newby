package com.kh.newby.pay.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.classvo.model.service.ClassService;
import com.kh.newby.classvo.model.vo.ClassVo;

/**
 * Servlet implementation class classPaymentServlet
 */
@WebServlet("/classPay.cp")
public class classPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public classPaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cno = request.getParameter("cno");
		ClassService sc = new ClassService();
		// 결제를 위한 클래스 객체 가져오기
		ClassVo cv = sc.classPay(cno);
		// 결제를 위한 클래스 일정 불러오기
		ArrayList<ClassVo> csList = sc.classPayScheduleList(cno);
		System.out.println("클래스 paymentservlet : " + cv.getClassPrice());
		System.out.println("클래스 paymentservlet : " + csList.get(0).getClassStartTime());
		System.out.println(csList.toString());
		String page = "";
		if(cv != null) {
			page = "views/class_register.jsp";
			request.setAttribute("classVo", cv);
			request.setAttribute("csList", csList);
		}else {
			page = "views/errorPage.jsp";
			System.out.println("결제페이지 불러오기 실패");
			request.setAttribute("msg", "결제페이지 불러오기 실패");
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
