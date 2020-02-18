package com.kh.newby.inquiry.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.inquiry.model.service.BoardService;
import com.kh.newby.inquiry.model.vo.Board;

/**
 * Servlet implementation class BoardInsertServlet
 */
@WebServlet("/boardInsert.bo")
public class BoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BoardInsertServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 제목 
		String btitle = request.getParameter("title");
		// 작성자
		String writer = request.getParameter("writer");
		// 내용
		String content = request.getParameter("content");
		// 날짜
		String date = request.getParameter("date");

		System.out.println(btitle);
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
		
		Board b = new Board();
		b.setItitle(btitle);
		b.setIwno(writer);
		b.setIcontent(content);
		b.setIdate(writeDate);
		
		BoardService bs = new BoardService();
		
		int result = bs.boardInsert(b);
		
		if(result > 0) {
			response.sendRedirect("boardSelectList.bo");
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
