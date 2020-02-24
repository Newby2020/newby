package com.kh.newby.pay.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class classPayDicisionServlet
 */
@WebServlet("/finalPay.cp")
public class classPayDicisionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public classPayDicisionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String className = request.getParameter("className");
		String classNo = request.getParameter("classNo");
		int finalPay = Integer.parseInt(request.getParameter("finalPay"));
		int millage = Integer.parseInt(request.getParameter("millage"));
		String csNo = request.getParameter("csNo");
		/*String[] csNo = request.getParameterValues("cl_date");*/
//		System.out.println(csNo[0]);
		request.setAttribute("className", className);
		request.setAttribute("finalPay", finalPay);
		request.setAttribute("classNo", classNo);
		request.setAttribute("millage", millage);
		request.setAttribute("csNo", csNo);
		
		request.getRequestDispatcher("/views/payApiTest.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}