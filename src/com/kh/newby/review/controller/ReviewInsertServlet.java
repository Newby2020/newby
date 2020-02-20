package com.kh.newby.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.review.model.service.ReviewService3;
import com.kh.newby.review.model.vo.Review3;

/**
 * Servlet implementation class reviewInsertServlet
 */
@WebServlet("/rInsert.rv")
public class ReviewInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewInsertServlet() {	
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//리뷰 작성 및 작성여부 호스트 평점 업데이트 Servlet
		Review3 rv = new Review3();
		
//		HttpSession session = request.getSession(false);
//		Member m = (Member)session.getAttribute("member");
		String cno = request.getParameter("cno");
//		String mno = m.getM_no();
//		
		String mno = "M7";
		
		rv.setcNo(cno);
		rv.setmNo(mno);
		rv.setrPoint(Integer.parseInt(request.getParameter("rate")));
		rv.setrContent(request.getParameter("contents"));
		
		String psNo = request.getParameter("psno");
		
		ReviewService3 rs = new ReviewService3();
		// 리뷰작성
		int rResult = rs.insertReview(rv);
		
		if(rResult > 0 ) {
			
			//리뷰 작성여부 업데이트(ps테이블)
			int revYN = rs.updateRevYN(psNo);
			
			if(revYN > 0 ) {
				System.out.println("리뷰 등록여부 업데이트 완료");

				// 호스트 평점 업데이트 
				int updHpt = rs.updateHostPoint(cno);
				if(updHpt > 0 ) System.out.println("호스트 평점 업데이트 완료");
				else System.out.println("호스트 평점 업데이트 실패");
			}else {
				System.out.println("리뷰 등록여부 업데이트 실패");
			}
			
			
			response.sendRedirect("review.do");
		}else {
			request.setAttribute("msg", "리뷰 등록 실패!");
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