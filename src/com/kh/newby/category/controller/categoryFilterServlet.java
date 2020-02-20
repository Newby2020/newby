package com.kh.newby.category.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class categoryFilterServlet
 */
@WebServlet("/filterList.ca")
public class categoryFilterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public categoryFilterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		caType=ca2&fLoca=anywhere&amount=103000원+-+300000원&fCate=스포츠&fDay=화목&fType=5
//		caType=ca0&fLoca=anywhere&amount=112000원+-+300000원&fCate=&fDay=화목&fType=7
		
		String fLoca = request.getParameter("fLoca");
		String fCate = request.getParameter("fCate");
		String fType = request.getParameter("fType");
		String  fDay = request.getParameter("fDay");
		String amount = request.getParameter("amount");
		
	
		System.out.println("지역: "+ fLoca);
		System.out.println("상세카테고리: "+ fCate);
		System.out.println(fCate.isEmpty());
		System.out.println("수업방식: "+ fType);
		System.out.println("수업요일: "+ fDay);
		System.out.println("가격: "+ amount);
		
		
		
		request.getRequestDispatcher("/selectList.ca?caType=ca1").forward(request, response);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
