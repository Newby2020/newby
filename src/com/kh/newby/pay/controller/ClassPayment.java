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

		ArrayList<ClassVo> classInfoList = null;
		//String cno = request.getParameter("cno");
		String cno = "C1";
		String[] scheduleList = request.getParameterValues("받았다 -");	// db에 정보를 넣을 필요가 없으므로 놔 두자

		PaymentService2 ps2 = new PaymentService2();
		
		ClassVo3 cv = ps2.getClassVo(cno);
		
		System.out.println(cv);
		
		String page = "";
		
		page = "/views/payment.jsp";
		request.setAttribute("cv", cv);
		request.setAttribute("scheduleList", scheduleList);
		
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
