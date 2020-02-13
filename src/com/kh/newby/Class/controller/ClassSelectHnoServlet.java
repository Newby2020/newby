package com.kh.newby.Class.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.Class.model.service.ClassService;
import com.kh.newby.Class.model.vo.ClassVo;

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
//		// 1. 게시판 페이징 처리하기
//		// 페이징 처리 : 
//		// 	대용량의 데이터를 한 번에 처리하지 않고
//		//	특정 개수만큼 끊어서 표현하는 기술
//		
//		ArrayList<ClassVo> list = null;
//		
//		ClassService bs = new ClassService();
//		
//		// 페이징 처리에 필요한 변수들
//		// 한 번에 표시할 페이지들 중 가장 앞의 페이지
//		// 1, 2, 3, 4, 5   --> 1 // 6, 7, 8, 9, 10 --> 6
//		int startPage;
//		
//		// 한번에 표시할 페이지들 중 가장 뒤의 페이지
//		int endPage;
//		
//		// 전체 페이지의 가장 마지막 페이지
//		int maxPage;
//		
//		// 사용자가 위치한 현재 페이지
//		int currentPage;
//		
//		// 총 페이지 수(한 페이지당 보여줄 게시글 수)
//		int limit;
//		
//		// 처음에 접속 시 페이지는 1페이지부터 시작한다.
//		currentPage = 1; 
//		
//		// 글 개수 및 페이지수 10개로 제한하기
//		limit = 10;
//		
//		// 만약에 사용자가 현재 페이지의 정보를 들고 왔다면
//		// 현재 페이지의 정보들 1에서 특정 페이지 수정해주어야한다.
//		if(request.getParameter("currentPage") != null ) {
//			currentPage = Integer.parseInt(request.getParameter("currentPage"));
//		}
//		
//		// 페이징 처리
//		int listCount = bs.getListCount();/////////////////////////////////////
//		
//		System.out.println("총 페이지 수 : " + listCount);
//		
//		// 총 250개
//		// 25개
//		// 만약 전체 게시글 수가 13개라면
//		// 페이지는 1,2가 나와야한다.
//		// ** 짜투리 게시글도 하나의 페이지로 처리해야한다.
//		// 13 --> 1.3 --> 2.2
//		// 11 --> 1.1 --> 2
//		// 19 --> 1.9 --> 2.8 --> 2
//		maxPage = (int)((double)listCount / limit + 0.9);
//		
//		// 시작 페이지
//		startPage = ((int)((double)currentPage / limit + 0.9 ) - 1 ) * limit + 1;
//		
//		// 마지막 페이지
//		//  1 ~ 10 : 10
//		// 11 ~ 20 : 20
//		endPage = startPage + limit - 1;
//		
//		// 만약 마지막 페이지보다 현재 게시글이 끝나는 페이지가 적다면
//		// 1~10 : 7
//		if(endPage > maxPage) {
//			endPage = maxPage;
//		}
//		
//		list = bs.selectList(currentPage, limit);/////////////////////////////////////
//		
//		String page = "";
//		
//		if(list != null) {
//			page = "views/board/boardList.jsp";					// jsp 넘길때 정보   				수정
//			request.setAttribute("list", list);					// 1 : list
//			PageInfo ss= new PageInfo();
//			PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage);
//			request.setAttribute("pi", pi);						// 2 : paging
//			
//		} else {
//			page = "views/common/errorPage.jsp";				// 수정
//			request.setAttribute("msg", "게시글 목록 조회 실패!");
//		}
//		request.getRequestDispatcher(page).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
