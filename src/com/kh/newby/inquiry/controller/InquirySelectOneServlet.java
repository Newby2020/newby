package com.kh.newby.inquiry.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.inquiry.model.service.InquiryCommentService;
import com.kh.newby.inquiry.model.service.InquiryService;
import com.kh.newby.inquiry.model.vo.Inquiry;

/**
 * Servlet implementation class BoardSelectOneServlet
 */
@WebServlet("/inquirySelectOne.io")
public class InquirySelectOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquirySelectOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 게시글 번호 
		String ino = request.getParameter("ino");
		System.out.println(ino);
		
		
		// 게시글 보기
		Inquiry i = new InquiryService().inquirySelectOne(ino);
		System.out.println("게시글 보기" + i);
		
		String page = "";
		if(i != null) {
			page="views/customer_inquiryDetail.jsp";
			request.setAttribute("inquiry", i);
//			request.setAttribute("list", list);
		} /*else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시글 목록 조회 실패!");
		}
		*/
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
