package com.kh.newby.Member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.newby.Member.model.exception.MemberException;
import com.kh.newby.Member.model.service.MemberService;
import com.kh.newby.Member.model.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8");
		String userId = request.getParameter("mainLoginId"); 
		String userPwd = request.getParameter("mainLoginPassword"); 
		
		System.out.println(userId);
		System.out.println(userPwd);
		
		Member m = new Member(userId,userPwd);
		
		MemberService ms = new MemberService();
		
		
		PrintWriter out = response.getWriter();
		
		try {// 로그인 성공했을 때
			m = ms.selectMember(m);
			
			System.out.println("회원 로그인 성공!");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("Member", m);
			
			// forword, sendredirect
			response.sendRedirect("index.jsp");
		} catch (MemberException e) {// 에러가 났을때
			
			out.println(
					"<html><script>"+
					"alert("+e.getMessage()+"');"+
					"</script></html>"
					);
			
//			response.sendRedirect("/semi/index.jsp");
//			request.setAttribute("msg", "아이디나 비밀번호를 잘못 입력하셨습니다");
//			request.setAttribute("exception", e);
			
			response.sendRedirect("index.jsp");
			
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
