package com.kh.newby.classvo.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.newby.classvo.model.service.ClassService2;
import com.kh.newby.classvo.model.vo.ClassVo2;
import com.kh.newby.member.model.vo.Member;

/**
 * Servlet implementation class ClassSelectHnoServlet
 */
@WebServlet("/cSelHno.do")
public class ClassManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClassManagerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<ClassVo2> list = null;
		
		ClassService2 cs = new ClassService2();
		
		HttpSession session = request.getSession(false);
		Member m = (Member)session.getAttribute("Member");
		
		String hno = m.getH_no();
		
		list = cs.ClassManagerList(hno);
		String page = "";
		if(list != null) {
			page = "views/mypage_ClassManager.jsp";
			request.setAttribute("list", list);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "등록한 클래스 목록 출력 실패!");
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
