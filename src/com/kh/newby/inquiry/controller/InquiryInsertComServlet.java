package com.kh.newby.inquiry.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.inquiry.model.service.InquiryCommentService;
import com.kh.newby.inquiry.model.vo.Inquiry;

/**
 * Servlet implementation class InquiryInsertComServlet
 */
@WebServlet("/insertCom.io")
public class InquiryInsertComServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquiryInsertComServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String comment = request.getParameter("comment");
		String date = request.getParameter("date");
		
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
		i.setIcomment(comment);
		i.setIcdate(writeDate);
		
		InquiryCommentService ics = new InquiryCommentService();
		
		int result = ics.insertCom(i);
		
		if(result > 0) {
			response.sendRedirect("inquirySelectList.io");
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
