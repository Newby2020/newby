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
 * Servlet implementation class MemberMileageServelt
 */
@WebServlet("/mMile.do")
public class MemberMileageServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberMileageServelt() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<ClassVo2> list = null;
		
		ClassService2 cs = new ClassService2();
		
//		HttpSession session = request.getSession(false);
//		Member m = (Member)session.getAttribute("member");
		
		String mno = "M3"; //String mno = m.getM_no();						/////////////////////////////////수정해야됨////////////////////////////

		list = cs.MileageList(mno);
		String page = "";
		
		if(list != null) {
			page = "views/mypage_Mileage.jsp";
			request.setAttribute("list", list);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "마일리지 페이지 불러오기 실패!");
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
