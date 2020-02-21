package com.kh.newby.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.member.model.exception.MemberException;
import com.kh.newby.member.model.service.MemberService;
import com.kh.newby.member.model.vo.Member;


/**
 * Servlet implementation class FindIdServlet
 */
@WebServlet("/findId.me")
public class FindIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindIdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		String name = request.getParameter("memberFindName");
		String phone = request.getParameter("phone");
		
		System.out.println(name);
		System.out.println(phone);
		
		MemberService ms = new MemberService();
		
		PrintWriter out = response.getWriter();
		
		Member result=null;
		try {
			result = ms.searchId(name,phone);
			if(result.getM_id() != null) {
				// 있는거 
				// alert(result.get.k.k)
				out.println("<script language='javascript'>");
				out.println("alert('찾으시는 아이디는 "+result.getM_id()+ " 입니다.');");
				out.println("location.href = '/semi/views/findIdnPwd.jsp';"); 
				out.println("</script>"); 
				out.close();

			}else {
				//없는거
				System.out.println("정보 없음!!!!!");
				out.println("<script language='javascript'>");
				out.println("alert('찾으시는 아이디가 존재하지 않습니다');");
				out.println("location.href = '/semi/views/findIdnPwd.jsp';");
				out.println("</script>"); 
				out.close();
			}
		} catch (MemberException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
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
