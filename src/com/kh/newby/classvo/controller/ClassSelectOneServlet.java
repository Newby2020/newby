package com.kh.newby.classvo.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.classvo.model.service.ClassService;
import com.kh.newby.classvo.model.vo.ClassVo;
import com.kh.newby.review.model.service.ReviewService;
import com.kh.newby.review.model.vo.Review;

/**
 * Servlet implementation class ClassSelectOneServlet
 */
@WebServlet("/selectOne.ci")
public class ClassSelectOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClassSelectOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//최종본
		String cno = request.getParameter("cno");
		System.out.println("cno : " + cno);
		ClassService sc = new ClassService();
		
		// 클래스 상세정보
		ClassVo cv = sc.selectOne(cno);
		
		// 댓글 불러오기
		ArrayList<Review> rList = new ReviewService().selectList(cno);
		
		// 클래스 일정 불러오기
		ArrayList<ClassVo> csList = sc.classScheduleList(cno);
		
		String page = "";
		if(cv != null) {
			page = "views/class_information.jsp";
			request.setAttribute("class", cv);
			request.setAttribute("rList", rList);
			request.setAttribute("csList", csList);
		}else {
			page = "views/errorPage.jsp";
			System.out.println("classSelectOne 서블릿 : 에러" );
			request.setAttribute("msg", "클래스 상세페이지 불러오기 실패");
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
