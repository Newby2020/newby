package com.kh.newby.Member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.Member.model.exception.MemberException;
import com.kh.newby.Member.model.service.MemberService;
import com.kh.newby.Member.model.vo.Member;

/**
 * Servlet implementation class InsertMemberServlet
 */
@WebServlet("/insert.me")
public class InsertMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 인코딩 -> 필터에 되있음
		
				// 2. 사용자 페이지(회원가입페이지)에서 전달받은 값을 가져오기
				
				String memberId=request.getParameter("user_Id");
				String memberPwd=request.getParameter("password");
				String memberNick=request.getParameter("user_Nickname");
				String memberName=request.getParameter("user_name");
				String phone=request.getParameter("phone");
				
				Member m = new Member(memberId,memberPwd,memberNick,memberName,phone);
				
				System.out.println("가입회원 정보 확인 : " + m);
				
				// 회원 가입 서비스 실행
				MemberService ms = new MemberService();
				
				try {
					
					ms.insertMember(m);
					System.out.println("회원 가입 완료!");
					
					response.sendRedirect("index.jsp");
				} catch (MemberException e) {
						request.setAttribute("msg", "회원 가입 중 에러 발생!");
						request.setAttribute("exception", e);
						
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
