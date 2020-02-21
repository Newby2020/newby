package com.kh.newby.pay.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.classvo.model.vo.ClassVo3;
import com.kh.newby.pay.model.service.PaymentService2;

/**
 * Servlet implementation class CancelPayment
 */
@WebServlet("/cancelPay.do")
public class CancelPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CancelPayment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// ==== 결제 취소를 결제로부터 가져오기  ===============================
//		String psno = request.getParameter("psno");
		String psno = "PS3";	// 나중에 위의 것으로 고쳐야 한다.
		
		PaymentService2 ps = new PaymentService2();
		
		ClassVo3 cvPsno = ps.getPsno(psno);
		String page = "";
		
		page = "/views/cancelOrder.jsp";
		request.setAttribute("cvPsno", cvPsno);
		
		// ==== 취소 클래스 카운트  ========================================
		int cancelCount = 0;
		
		cancelCount = ps.getCancelCount(psno);
		
		page = "/views/cancelOrder.jsp";
		request.setAttribute("cancelCount", cancelCount);
		
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
