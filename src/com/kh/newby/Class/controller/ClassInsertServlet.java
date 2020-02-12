package com.kh.newby.Class.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class ClassInsertServlet
 */
@WebServlet("/cis.do")
public class ClassInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClassInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 파일 처리용 서블릿
				// MultipartRequest
				// cos.jar 라이브러리를 WEB-INF/lib에 추가를 해줘야하는데
				// 해당 라이브러리는 http://servlets.com/cos에서 다운받아서 추가해준다.
				// 1. 전송할 최대 크기 설정하기
				// 10MB -> (Byte 크기로 변환하기)
				// (1MB -> 1024 KB / 1KB -> 1024 Byte)
				int maxSize = 1024 * 1024 * 2;
				
				// 2. multipart/form-data형식으로 전송되었는지 확인!
				if(!ServletFileUpload.isMultipartContent(request)) {
					// 올바른 multipart/form-data로 전송되지 않았을 경우
					// 에러페이지로 즉시 이동시킨다.
					request.setAttribute("msg", "multipart를 통한 전송이 아닙니다.");
					request.getRequestDispatcher("/semi/views/common/errorPage.jsp").forward(request, response);
				}
				
				// 3. 웹 상의 루트(최상위 경로) 경로를 활용하여 저장할 폴더 위치 지정하기
				String root = request.getServletContext().getRealPath("/");
				
				// 게시판의 첨부파일을 저장할 폴더 이름 지정하기
				String savePath = root + "resources/uploadImg";
				
				// 4. 실제 담아온 파일 기타 정보들을 활용하여
				//	  MultipartRequest 객체 생성하기
				//	  request --> MultipartRequest
				MultipartRequest mrequest = new MultipartRequest(
													request,	// 변경하기 위한 원본 객체
													savePath,	// 파일 저장 경로
													maxSize,	// 저장할 파일의 최대 크기
													"UTF-8",	// 지정할 문자셋 설정
													new DefaultFileRenamePolicy()
															//만약 동일한 이름의 파일을 저장 했을 경우
															//기존의 파일과 구분하기 위해 새로운 파일명 뒤에
															//숫자를 붙이는 규칙
												);
				
				// -- 파일 업로드 실시
				// 5-1 기본 전송값 처리하기

				String cName = mrequest.getParameter("className");
				String category1 = mrequest.getParameter("category1");
				String category2 = mrequest.getParameter("category2");
				String category3 = mrequest.getParameter("category3");
				String cType = mrequest.getParameter("classType");
				String MaxNum = mrequest.getParameter("MaxNum");
				String cTime = mrequest.getParameter("classTime");
				String price = mrequest.getParameter("price");
				String[] cDate = mrequest.getParameterValues("classDate");
				String[] sTime = mrequest.getParameterValues("startTime");
				String[] addr = mrequest.getParameterValues("addr");
				String obj = mrequest.getParameter("object");
				String edit1 = mrequest.getParameter("editor1");
				String edit2 = mrequest.getParameter("editor2");
				
				System.out.println(cName);
				System.out.println(category1);
				System.out.println(category2);
				System.out.println(category3);
				System.out.println(cType);
				System.out.println(MaxNum);
				System.out.println(cTime);
				System.out.println(price);
				for(int i=0; i<cDate.length; i++) {
					System.out.println(cDate[i]);					
				}
				for(int i=0; i<sTime.length; i++) {
					System.out.println(sTime[i]);					
				}
				for(int i=0; i<addr.length; i++) {
					System.out.println(addr[i]);					
				}
				System.out.println(obj);
				System.out.println(edit1);
				System.out.println(edit2);
				
				
				
//				// 5-2. 전송된 파일 처리
//				// 전달받은 파일을 먼저 저장하고, 그 파일의 이름을 가져오는 메소드
//				String fileName = mrequest.getFilesystemName("file");
//				System.out.println(fileName);
//				// 6. 전송된 파일 VO에 담아 서비스로 보내기
//				Board b = new Board();
//				
//				b.setBtitle(title);
//				b.setBcontent(content);
//				b.setBwriter(writer);
//				b.setBoardfile(fileName);
//				
//				// 7. 서비스 결과 처리하기
//				int result = new BoardService().insertBoard(b);
//				
//				if(result > 0 ) {
//					response.sendRedirect("selectList.bo");
//				} else {
//					request.setAttribute("msg", "게시글 작성 실패!");
//					request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
//				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
