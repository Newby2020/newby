package com.kh.newby.inquiry.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.inquiry.model.service.BoardCommentService;
import com.kh.newby.inquiry.model.service.BoardService;
import com.kh.newby.inquiry.model.vo.Board;

/**
 * Servlet implementation class BoardSelectOneServlet
 */
@WebServlet("/boardSelectOne.bo")
public class BoardSelectOneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardSelectOneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String bno = request.getParameter("bno");
		System.out.println(bno);
		
//		BoardService bs = new BoardService();
		
		// 게시글 보기
		Board b = new BoardService().boardSelectOne(bno);
		
		
		// 댓글 불러오기
		ArrayList<Board> clist = new BoardCommentService().selectList(bno);
		
		String page = "";
		if(b != null) {
			page="views/Customer_InquiryDetail.jsp";
			request.setAttribute("board", b);
			request.setAttribute("clist", clist);
		} else {
			page = "views/common/errorPage.jsp";
			request.setAttribute("msg", "게시글 목록 조회 실패!");
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
