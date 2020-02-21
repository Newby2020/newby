package com.kh.newby.host.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.newby.host.model.service.HostService;
import com.kh.newby.host.model.vo.Host;
import com.kh.newby.member.model.service.MemberService;
import com.kh.newby.member.model.vo.Member;

/**
 * Servlet implementation class InsertHost
 */
@WebServlet("/insert.ho")
public class InsertHost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertHost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String hostIntro=request.getParameter("hostIntro");
		String bank=request.getParameter("bank");
		String accountHolder=request.getParameter("accountHolder");
		String accountNum=request.getParameter("accountNum");
		
		HttpSession session = request.getSession(false);

		Member m = (Member)session.getAttribute("Member");
		
		String memberId= m.getM_id();
		
		Host h = new Host(bank,accountHolder, accountNum,hostIntro);
		
		
		
		System.out.println(h);
		
		HostService hs = new HostService();
		
		try {
			
			hs.insertHost(h,memberId);
			
			m = new MemberService().selectMember(m);
			session.setAttribute("Member", m);
			response.sendRedirect("index.jsp");
		}catch(Exception e) {
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
