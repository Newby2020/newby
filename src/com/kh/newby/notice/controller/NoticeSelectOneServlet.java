package com.kh.newby.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.notice.model.service.NoticeService;
import com.kh.newby.notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeSelectOneServlet
 */
@WebServlet("/noticeSelectOne.no")
public class NoticeSelectOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeSelectOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nno = request.getParameter("nno");
		System.out.println(nno);
		
		// 게시글 보기
		Notice n = new NoticeService().noticeSelectOne(nno);
		
		String page = "";
		if(n != null) {
			page="views/Customer_NoticeDetail.jsp";
			request.setAttribute("notice", n);
		} else {
			page="views/common/errorPage.jsp";
			request.setAttribute("msg", "게시글 목록 조회 실패!");
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
