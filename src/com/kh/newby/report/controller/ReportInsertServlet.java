package com.kh.newby.report.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.newby.claim.model.vo.Claim;
import com.kh.newby.report.model.service.ReportService;

/**
 * Servlet implementation class ReportInsertServlet
 */
@WebServlet("/reportInsert.ro")
public class ReportInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String cno = request.getParameter("cno");
		
		String title = request.getParameter("title");
		
		String ctitle = request.getParameter("ctitle");
		
		String writer = request.getParameter("writer");
		
		String content = request.getParameter("content");
		
		String date = request.getParameter("date");
		
		Date writeDate = null;
		
		
		
		if(date != "" && date != null) {
			String[] dateArr = date.split("-");
			int[] intArr = new int[dateArr.length];
			
			for(int i=0; i<dateArr.length; i++) {
				intArr[i] = Integer.parseInt(dateArr[i]);
			}
			
			writeDate = new Date(new GregorianCalendar(
						intArr[0],intArr[1]-1,intArr[2]
					).getTimeInMillis());
		} else {
			writeDate = new Date(new GregorianCalendar().getTimeInMillis());
		}
		
		Claim c = new Claim();
//		c.setCmNo(cno);
		c.setCmClassNo(ctitle);
		c.setCmWriterNo(writer);
		c.setCmTitle(title);
		c.setCmContent(content);
		c.setCmDate(writeDate);
		
		ReportService sc = new ReportService();
		
		int result = sc.reportInsert(c);
		
		if(result > 0) {
			response.sendRedirect("claimList.ad");
			System.out.println(title);
			System.out.println(ctitle);
			System.out.println(writer);
			System.out.println(content);
			System.out.println(date);
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
