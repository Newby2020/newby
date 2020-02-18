package com.kh.newby.classvo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.classvo.model.service.ClassService2;

/**
 * Servlet implementation class DeleteClassServlet
 */
@WebServlet("/delClass.do")
public class DeleteClassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteClassServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cno = request.getParameter("cno");
		ClassService2 cs = new ClassService2();
		int result = cs.deleteClass(cno);
		
		if(result > 0) {
			response.sendRedirect("/semi/cSelHno.do");
////			request.getRequestDispatcher("/selectList.no").forward(request, response);
		} else {
			request.setAttribute("msg", "공지사항 수정 실패 !!");
			request.getRequestDispatcher("/semi/views/common/errorPage.jsp").forward(request, response);
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
