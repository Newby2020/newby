package com.kh.newby.notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.notice.model.service.NoticeService;
import com.kh.newby.notice.model.vo.Notice;
import com.kh.newby.notice.model.vo.PageInfo;

/**
 * Servlet implementation class NoticeListServlet
 */
@WebServlet("/selectList.no")
public class NoticeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 게시판 페이징 처리
		ArrayList<Notice> list = null;
		NoticeService ns = new NoticeService();
		
		// 페이징 처리에 필요한 변수
		// 시작 페이지
		int startPage;
		
		// 마지막 페이지
		int endPage;
		
		// 전체 페이지중 마지막 페이지
		int maxPage;
		
		// 사용자가 위치한 현재 페이지
		int currentPage;
		
		// 총 페이지 수
		int limit;
		
		// 처음 접속시 페이지
		currentPage = 1;
		
		// 글 개수 제한
		limit = 10;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		// 페이징 처리
		int listCount = ns.getListCount();
		
		maxPage = (int)((double)listCount/limit + 0.9);
		
		// 시작 페이지와 마지막 페이지 계산
		startPage = ((int)((double)currentPage / limit + 0.9) -1) * limit + 1;
		
		// 마지막 페이지
		endPage = startPage + limit -1;
		
		// 페이지가 1~10 이하일때
		if(endPage > maxPage) {
			endPage = maxPage;
		}
		
		list = ns.selectList(currentPage,limit);
		
		String page = "";
		
		if(list != null) {
			page = "views/Customer_Notice.jsp";
			request.setAttribute("list", list);
			
			PageInfo pi = new PageInfo(currentPage,listCount,limit,maxPage,startPage,endPage);
			request.setAttribute("pi", pi);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시글 조회 실패");
			
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
