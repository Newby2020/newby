package com.kh.newby.pay.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.classvo.model.vo.ClassVo;
import com.kh.newby.classvo.model.vo.ClassVo3;
import com.kh.newby.pay.model.service.PaymentService2;

/**
 * Servlet implementation class ClassPayment
 */
@WebServlet("/classPay.do")
public class ClassPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClassPayment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//String cno = request.getParameter("cno");
		String cno = "C1";

		PaymentService2 ps2 = new PaymentService2();
		
		ClassVo3 cvCno = ps2.getCno(cno);
		
		System.out.println(cvCno);
		
		String page = "";
		
		page = "/views/payment.jsp";
		request.setAttribute("cvCno", cvCno);
		
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
