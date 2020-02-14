package com.kh.newby.Class.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.newby.Class.model.service.ClassService2;
import com.kh.newby.Class.model.vo.ClassVo2;
import com.kh.newby.Member.model.vo.Member;

/**
 * Servlet implementation class ClassSelectHnoServlet
 */
@WebServlet("/cshs.do")
public class ClassSelectHnoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClassSelectHnoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 게시판 페이징 처리하기
		// 페이징 처리 : 
		// 	대용량의 데이터를 한 번에 처리하지 않고
		//	특정 개수만큼 끊어서 표현하는 기술
		
		ArrayList<ClassVo2> list = null;
		
		ClassService2 cs = new ClassService2();
		
		HttpSession session = request.getSession(false);
		Member m = (Member)session.getAttribute("member");
		String hno = "H2"; //String hno = m.getH_no();						/////////////////////////////////수정해야됨////////////////////////////
		// 해당 호스트의 등록한 클래스를 출력
		System.out.println("cS");
		list = cs.selectHnoClassList(hno);
		System.out.println("sE");
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
