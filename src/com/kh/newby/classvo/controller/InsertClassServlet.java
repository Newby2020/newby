package com.kh.newby.classvo.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.newby.classvo.model.service.ClassService2;
import com.kh.newby.classvo.model.vo.ClassVo2;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class ClassInsertServlet
 */
@WebServlet("/cInsert.do")
public class InsertClassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertClassServlet() {
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
				int maxSize = 1024 * 1024 * 20;
				
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
//				System.out.println(savePath);
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
				String[] cDate = mrequest.getParameterValues("classDate");
				String[] sTime = mrequest.getParameterValues("startTime");
				String[] addr = mrequest.getParameterValues("addr");
				
				// 속성값 삽입
				String cName = mrequest.getParameter("className");
				String category1 = mrequest.getParameter("category1");
				String category2 = mrequest.getParameter("category2");
				String category3 = mrequest.getParameter("category3");
				String cType = mrequest.getParameter("classType");
				int MaxNum = Integer.parseInt(mrequest.getParameter("MaxNum"));
				int cTime = Integer.parseInt(mrequest.getParameter("classTime"));
				int price = Integer.parseInt(mrequest.getParameter("price"));
				String addr1 = "";
				String obj = mrequest.getParameter("object");
				String curri = mrequest.getParameter("editor1");
				String intro = mrequest.getParameter("editor2");
				String img = mrequest.getFilesystemName("uploadImg");
				String cdate = "";
				String stime = "";
				String etime = "";

				for(int i=0; i<cDate.length; i++) {	
					if(i != cDate.length-1){						
						cdate += cDate[i]+",";
					} else {
						cdate += cDate[i];						
					}
				}
				
				for(int i=0; i<sTime.length; i++) {
					if(i != sTime.length-1) {
						stime += sTime[i]+",";						
					} else {
						stime += sTime[i];
					}
					
					String[] tArr = sTime[i].split(":");
					int hours = Integer.parseInt(tArr[0]);
					int mins = Integer.parseInt(tArr[1]);
					Calendar cal = Calendar.getInstance();
					cal.set(Calendar.HOUR, hours);
					cal.set(Calendar.MINUTE, mins);
					DateFormat df = new SimpleDateFormat("kk:mm");
					cal.add(Calendar.HOUR, cTime);
					if(i != sTime.length-1) {
						etime += df.format(cal.getTime())+",";					
					} else {
						etime += df.format(cal.getTime());										
					}
				}
				
				for(int i=0; i<addr.length; i++) {
					if(i != addr.length-1) {						
						addr1 += addr[i]+",";
					} else {
						addr1 += addr[i];						
					}
				}
				
				// 세션에 추가된 멤버객체의 정보 담기
//				HttpSession session = request.getSession(false);
//				Member m = (Member)session.getAttribute("member");
				
//				String hNo = m.getH_no();										/////////// 나중에 이걸로 바꿔줘야해
				String hNo = "H2";
				ClassVo2 c = new ClassVo2(cName, category1, category2, category3, cType, cTime,
						MaxNum, price, img, addr1, obj, curri, intro, cdate, stime, etime, hNo);
				
				//-------------------출력용----------------------
//				System.out.println("---------출력용 --------");
//				System.out.println(cName);
//				System.out.println(category1);
//				System.out.println(category2);
//				System.out.println(category3);
//				System.out.println(cType);
//				System.out.println(MaxNum);
//				System.out.println(cTime);
//				System.out.println(price);
//				System.out.println(addr1);
//				System.out.println(cdate);
//				System.out.println(stime);
//				System.out.println(etime);
//				System.out.println(obj);
//				System.out.println(curri);
//				System.out.println(intro);
//				System.out.println(img);
//				System.out.println("----------------------");
				//--------------------------------------------
				
				System.out.println("controll");
				int result = new ClassService2().insertClass(c);		// DB 연결
				
				//////////////////////////////////////////////////////////////////////////////
				System.out.println(result);
//				메인화면으로 이동해야함
				if(result > 0 ) {
					System.out.println("클래스가 등록되었습니다.");
					response.sendRedirect("/semi/views/mypage_Profile.jsp");
				} else {
					request.setAttribute("msg", "클래스 등록 실패하였습니다.");
					request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
