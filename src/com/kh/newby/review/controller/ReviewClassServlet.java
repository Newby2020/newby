package com.kh.newby.review.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.Class.model.service.ClassService2;
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
		
//		HttpSession session = request.getSession(false);
//		Member m = (Member)session.getAttribute("member");
		
		String mno = "M7"; //String hno = m.getM_no();						/////////////////////////////////수정해야됨////////////////////////////
		
		list = rs.ReviewList(mno);
		
		String page = "";

		if(list != null) {
			page = "views/mypage_WritingReview1.jsp";
			request.setAttribute("list", list);
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
