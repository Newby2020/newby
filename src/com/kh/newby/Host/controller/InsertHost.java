package com.kh.newby.Host.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.newby.Host.model.service.HostService;
import com.kh.newby.Host.model.vo.Host;
import com.kh.newby.Member.model.vo.Member;

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
		
		HttpSession session = request.getSession();

		Member m = (Member)session.getAttribute("Member");
		
		String memberId= m.getM_id();
		
		Host h = new Host(bank,accountHolder, accountNum,hostIntro);
		
		
		
		System.out.println(h);
		
		HostService hs = new HostService();
		
		try {
			
			hs.insertHost(h,memberId);
			
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
