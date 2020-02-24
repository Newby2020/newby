package com.kh.newby.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.newby.member.model.service.MemberService;
import com.kh.newby.member.model.vo.Member;

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
			
			if(m.getM_id() != null) {
			System.out.println("회원 로그인 성공!");
			
			HttpSession session = request.getSession();
			
			session.setAttribute("Member", m);
			}
			// forword, sendredirect
			response.sendRedirect("index.jsp");
			//test용 임시
//			response.sendRedirect("/semi/selectOne.ci?cno=C7");
//			request.getRequestDispatcher("selectOne.ci?cno='C6'").forward(request, response);
		} catch (Exception e) {// 에러가 났을때
			System.out.println("아이디 비번 틀림!!!");
			out.println("<script language='javascript'>");
			out.println("alert('아이디/비밀번호를 확인해주세요');");
			out.println("location.href = '/semi/index.jsp';");
			out.println("</script>"); 
			out.close();

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
