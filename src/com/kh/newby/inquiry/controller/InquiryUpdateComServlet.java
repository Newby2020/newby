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
 * Servlet implementation class InquiryUpdateComServlet
 */
@WebServlet("/updateCom.io")
public class InquiryUpdateComServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InquiryUpdateComServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 댓글 내용
		String comment = request.getParameter("comment");
		// 댓글 등록 날짜
		String date = request.getParameter("date");
		// 글 번호
		String ino = request.getParameter("ino");
		
		
		Date writeDate = null;
		// 날짜 처리
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
		i.setIno(ino);
		
		System.out.println("수정할 com : " + i.getIcomment());
		System.out.println("수정할 com : " + comment);
		System.out.println("수정된 날짜 : " + writeDate);
		System.out.println("수정할 ino : " + ino);
		int result = new InquiryCommentService().updateCom(i);
		
		if(result > 0) {
			response.sendRedirect("inquirySelectOne.io?ino="+ino);
			
		}else {
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
