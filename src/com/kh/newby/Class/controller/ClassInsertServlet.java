package com.kh.newby.Class.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

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
				int maxSize = 1024 * 1024 * 10;
				
				// 2. multipart/form-data형식으로 전송되었는지 확인!
				if(!ServletFileUpload.isMultipartContent(request)) {
					// 올바른 multipart/form-data로 전송되지 않았을 경우
					// 에러페이지로 즉시 이동시킨다.
					/*request.setAttribute("msg", "multipart를 통한 전송이 아닙니다.");
					request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);*/
				}
				
				// 3. 웹 상의 루트(최상위 경로) 경로를 활용하여 저장할 폴더 위치 지정하기
				String root = request.getServletContext().getRealPath("/");
				
				// 게시판의 첨부파일을 저장할 폴더 이름 지정하기
				String savePath = root + "resources/uploadFiles";
				
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
				
				ArrayList<String> filename = new ArrayList<String>();
				
				Enumeration<String> files = mrequest.getFileNames();
				while(files.hasMoreElements()){
				String name = files.nextElement();
				filename.add(mrequest.getFilesystemName(name));
				System.out.println(filename.toString());
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
