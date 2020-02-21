package com.kh.newby.inquiry.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.inquiry.model.service.InquiryService;
import com.kh.newby.inquiry.model.vo.Inquiry;

/**
 * Servlet implementation class BoardInsertServlet
 */
@WebServlet("/inquiryInsert.io")
public class InquiryInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InquiryInsertServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 제목 
		String title = request.getParameter("title");
		// 작성자
		String writer = request.getParameter("writer");
		// 내용
		String content = request.getParameter("content");
		// 날짜
		String date = request.getParameter("date");

		System.out.println(title);
		System.out.println(writer);
		System.out.println(content);
		System.out.println(date);

		Date writeDate = null;

		if(date != "" && date != null) {
			String[] dateArr = date.split("-");
			int[] intArr = new int[dateArr.length];

			for(int i=0; i<dateArr.length; i++) {
				intArr[i] = Integer.parseInt(dateArr[i]);
			}

			writeDate = new Date(new GregorianCalendar(
					intArr[0],intArr[1]-1,intArr[2]
					).getTimeInMillis());
		} else {
			writeDate = new Date(new GregorianCalendar().getTimeInMillis());
		}
		
		Inquiry i = new Inquiry();
		i.setItitle(title);
		i.setIwno(writer);
		i.setIcontent(content);
		i.setIdate(writeDate);
		
		InquiryService is = new InquiryService();
		
		int result = is.inquiryInsert(i);
		
		if(result > 0) {
			response.sendRedirect("inquirySelectList.io");
		} else {
			request.setAttribute("msg", "문의 등록 오류");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
