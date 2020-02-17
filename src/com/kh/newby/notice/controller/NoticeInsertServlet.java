package com.kh.newby.notice.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.notice.model.service.NoticeService;
import com.kh.newby.notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeInsertServlet
 */
@WebServlet("/noticeInsert.no")
public class NoticeInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 제목
		String ntitle = request.getParameter("title");
		// 작성자
		String nwriter = request.getParameter("writer");
		// 내용
		String ncontent = request.getParameter("content");
		// 날짜
		String date = request.getParameter("date");
		
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
		
		Notice n = new Notice();
		n.setNtitle(ntitle);
		n.setNwriter(nwriter);
		n.setNcontent(ncontent);
		n.setNdate(writeDate);
		
		NoticeService ns = new NoticeService();
		
		int result = ns.noticeInsert(n);
		
		if(result > 0) {
			response.sendRedirect("noticeSelectList.no");
			
		} else {
			request.setAttribute("msg", "공지사항 등록 오류");
			request.getRequestDispatcher("views/common.errorPage.jsp").forward(request, response);
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
