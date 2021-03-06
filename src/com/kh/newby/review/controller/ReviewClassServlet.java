package com.kh.newby.review.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.newby.common.PageInfo;
import com.kh.newby.member.model.vo.Member;
import com.kh.newby.review.model.service.ReviewService2;
import com.kh.newby.review.model.vo.Review2;

/**
 * Servlet implementation class ReviewClass
 */
@WebServlet("/review.do")
public class ReviewClassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewClassServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Review2> list = null;
		
		ReviewService2 rs = new ReviewService2();
		
		HttpSession session = request.getSession(false);
		Member m = (Member)session.getAttribute("Member");
		
		String mno = m.getM_no();
		
		// 페이징 처리/
				// 앞페이지
				int startPage;

				// 뒤 페이지
				int endPage;

				// 전체 페이지 중 가장 마지막 페이지
				int maxPage;

				// 사용자가 위치한 페이지
				int currentPage;

				// 총 페이지 수
				int limit;

				// 처음 접속시 페이지
				currentPage = 1;

				// 글 개수
				limit = 10;

				if(request.getParameter("currentPage") != null) {
					currentPage = Integer.parseInt(request.getParameter("currentPage"));
				}

				// 페이징 처리하기
				int listCount = rs.getListCount(mno);

				maxPage = (int)((double)listCount/limit + 0.9);

				// 시작 페이지와 마지막 페이지 계산하기
				startPage = ((int)((double)currentPage / limit + 0.9) -1) * limit +1;

				// 마지막 페이지
				endPage = startPage + limit -1;

				// 마지막 페이지가 10이 아닐경우
				if(endPage > maxPage) {
					endPage = maxPage;
				}
		
		list = rs.ReviewList(currentPage,limit,mno);
		String page = "";

		if(list != null) {
			page = "views/mypage_WritingReview1.jsp";
			request.setAttribute("list", list);
			PageInfo pi = new PageInfo(currentPage,listCount,limit,maxPage,startPage,endPage);
			request.setAttribute("pi", pi);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "해당 유저 리뷰 리스트 출력 실패!");
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
