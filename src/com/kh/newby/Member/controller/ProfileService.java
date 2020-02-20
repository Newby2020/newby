package com.kh.newby.Member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.newby.Member.model.service.MemberService2;
import com.kh.newby.Member.model.vo.Member;
import com.kh.newby.Member.model.vo.Member3;

/**
 * Servlet implementation class ProfileService
 */
@WebServlet("/profile.do")
public class ProfileService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileService() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		HttpSession session = request.getSession();
//		Member3 m = (Member3)session.getAttribute("member");
		String mno = "M7";
		
		Member3 m = new MemberService2().profile(mno);
		
		String page = "";

		if(m != null) {
			page = "views/mypage_Profile.jsp";
			request.setAttribute("member3", m);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "해당 유저가 결제한 클래스 목록 출력 실패!");
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