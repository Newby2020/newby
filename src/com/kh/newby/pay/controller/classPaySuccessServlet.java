package com.kh.newby.pay.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.classvo.model.service.ClassService;
import com.kh.newby.classvo.model.vo.ClassVo3;

/**
 * Servlet implementation class classPaySuccessServlet
 */
@WebServlet("/paySuccess.cp")
public class classPaySuccessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public classPaySuccessServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cno = request.getParameter("cno");
		String mno = request.getParameter("mno");
		int millage = Integer.parseInt(request.getParameter("millage"));
		double saveMillage = Double.parseDouble(request.getParameter("saveMillage"));
		String csNo = request.getParameter("csNo");
		
		// 받은 값 디비에 저장하기
		int result = new ClassService().insertClassPay(cno, mno, millage, saveMillage, csNo);
		
		String page = "";
		if(result > 0) {
			page = "views/paySuccess.jsp";
			request.setAttribute("cno", cno);
			request.setAttribute("mno", mno);
			request.setAttribute("millage", millage);
			request.setAttribute("saveMillage", saveMillage);
			request.setAttribute("csNo", csNo);
		}else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "결제 완료 실패");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
		
		/*System.out.println(millage);
		System.out.println(saveMillage);
		System.out.println(mno);
		System.out.println(cno);
		System.out.println(csNo);*/
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}