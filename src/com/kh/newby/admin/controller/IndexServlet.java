package com.kh.newby.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.admin.service.AdminService2;

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
		AdminService2 as2 = new AdminService2();
		
		userCount = as2.getUserCount();
		
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
		
		hostCount = as2.getHostCount();
		
		if(hostCount > 0) {
			page = "/views/admin_index.jsp";
			request.setAttribute("hostCount", hostCount);
		} else {
			page = "/views/common/errorPage.jsp";
			request.setAttribute("msg", "호스트 수 불러오기 실패");
		}
		
		// ==== 클래스 수 가져오기 ================================
		int classCount = 0;
		
		classCount = as2.getClassCount();
		
		if(classCount > 0) {
			page = "/views/admin_index.jsp";
			request.setAttribute("classCount", classCount);
		} else {
			page = "/views/common/errorPage.jsp";
			request.setAttribute("msg", "클래스 수 불러오기 실패");
		}
		
		// ==== 클래스 개설 신청 수 가져오기 ================================
		int approvalClassCount = 0;
		
		approvalClassCount = as2.getApprovalClassCount();
		
		page = "/views/admin_index.jsp";
		request.setAttribute("approvalClassCount", approvalClassCount);
		
		
		// ==== 호스트 신고 수 가져오기 ================================
		int notifiedHostCount = 0;
		
		notifiedHostCount = as2.getNotifiedHostCount();
		
		page = "/views/admin_index.jsp";
		request.setAttribute("notifiedHostCount", notifiedHostCount);

		
		// ==== 송금해야 할 인원 수 가져오기 ================================	
		int refundMoneyCount = 0;
		
		refundMoneyCount = as2.getRefundMoneyCount();
		
		page = "/views/admin_index.jsp";
		request.setAttribute("refundMoneyCount", refundMoneyCount);
		
		
		// ==== 문의 글 수 가져오기 ================================
		int newInquiryCount = 0;
		
		newInquiryCount = as2.getNewInquiryCount();
		
		page = "views/admin_index.jsp";
		request.setAttribute("newInquiryCount", newInquiryCount);
		
		
		
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
