package com.kh.newby.member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.kh.newby.member.model.exception.MemberException;
import com.kh.newby.member.model.service.MemberService;
import com.kh.newby.member.model.vo.Member;

/**
 * Servlet implementation class CheckIdandSendMail
 */
@WebServlet("/checkmail.me")
public class CheckIdandSendMail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckIdandSendMail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json; charset=UTF-8");
		System.out.println("서블릿 호출");
		String name = request.getParameter("memberFindName");
		String mail = request.getParameter("memberFindEmail");
		
		System.out.println(name);
		System.out.println(mail);
		
		Member m = null;
		
		MemberService ms = new MemberService();
		
		PrintWriter out = response.getWriter();
		
		try {
			m = ms.checkNameAndId(name,mail);
			
			if(m.getM_id() != null) {
				Map fulling = new HashMap();
				
				fulling.put("mem", m);
				fulling.put("1","성공");
				
				new Gson().toJson(fulling, response.getWriter());
								
			}else {
				System.out.println("정보 없음!!!!!");
				
			}
			
			
		}catch(MemberException e) {
			e.getStackTrace();
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
