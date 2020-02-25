package com.kh.newby.inquiry.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.inquiry.model.service.InquiryService;
import com.kh.newby.inquiry.model.vo.Inquiry;

/**
 * Servlet implementation class BoardUpdateServlet
 */
@WebServlet("/inquiryUpdate.io")
public class InquiryUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InquiryUpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 게시글 제목
		String title = request.getParameter("title");
		// 게시글 내용
		String content = request.getParameter("content");
		// 게시글 번호
		String ino = request.getParameter("ino");

		System.out.println(title);
		System.out.println(content);
		System.out.println(ino);
		
		Inquiry i = new Inquiry();
		i.setItitle(title);
		i.setIcontent(content);
		i.setIno(ino);

		int result = new InquiryService().inquiryUpdate(i);

		if(result > 0) {
			response.sendRedirect("inquirySelectOne.io?ino="+ino);
			System.out.println(result);
		} else {
			request.setAttribute("msg", "문의 수정 실패");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
//			System.out.println("오류발생");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
