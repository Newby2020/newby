package com.kh.newby.category.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.category.model.service.categoryService;
import com.kh.newby.category.model.vo.categoryVo;
/**
 * Servlet implementation class ClassListServlet
 */
@WebServlet("/selectList.ca")
public class categoryListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public categoryListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// 카테고리별 클래스 리스트를 받아 데이터를 전달하는 서블릿
    	String caType = request.getParameter("caType");
    	
    	System.out.println(caType);
    	
    	
    	ArrayList<categoryVo> caList = new ArrayList<categoryVo>();

    	categoryService cs = new categoryService();

    	caList = cs.selectCaList(caType);

    	String page = "";

    	if(caList != null) {
    		
    		switch (caType) {
    		case "ca0": page = "views/category0_dynamic.jsp"; break;
    		case "ca1": page = "views/category1_static.jsp"; break;
    		case "ca2": page = "views/category2_activity.jsp"; break;
    		case "ca3": page = "views/category3_cooking.jsp"; break;
    		case "ca4": page = "views/category4_art.jsp"; break;
    		case "ca5": page = "views/category5_study.jsp"; break;
    		default: page = "views/common/errorPage.jsp"; break;
			}
    		System.out.println(page);
    		System.out.println("서브릿ㄱㄱ");
    		request.setAttribute("caList", caList);
    	}else {
    		page = "views/common/errorPage.jsp";
    		request.setAttribute("msg", "클래스 상세페이지 불러오기 실패");
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
