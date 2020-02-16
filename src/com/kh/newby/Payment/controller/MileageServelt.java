package com.kh.newby.Payment.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.Payment.model.service.PaymentService;
import com.kh.newby.Payment.model.vo.Payment;

/**
 * Servlet implementation class MemberMileageServelt
 */
@WebServlet("/mMile.do")
public class MileageServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MileageServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Payment> list = null;
		
//		HttpSession session = request.getSession(false);
//		Member m = (Member)session.getAttribute("member");
		
		String mno = "M3"; //String mno = m.getM_no();						/////////////////////////////////수정해야됨////////////////////////////

		list = new PaymentService().MileageList(mno);
		String page = "";
		
		if(list != null) {
			page = "views/mypage_Mileage.jsp";
			request.setAttribute("list", list);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "마일리지 페이지 불러오기 실패!");
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
