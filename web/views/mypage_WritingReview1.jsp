<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.kh.newby.review.model.vo.*, java.util.*, com.kh.newby.common.PageInfo"%>
	
<%
	ArrayList<Review2> list = (ArrayList<Review2>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();

%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>새로운 취미를 찾아서 NEWBY</title>
<link rel="stylesheet" href="/semi/resources/css/joinModal.css">
<link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
<link rel="stylesheet"
	href="/semi/resources/css/mypage_WritingReview1.css">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap"
	rel="stylesheet">
<script src="/semi/resources/jquery/jquery-3.4.1.min.js"></script>
</head>

<body>
	<div id="Allpanel" align="center">

		<%@ include file="./common/header.jsp"%>

		<!-- 작업하는 컨텐츠 -->
		<div id="newby-body-panel" class="contents-div123" align="left">

			<!--left sidebar-->
			<%@ include file="./common/mypage_sidebar.jsp"%>

			<!--contents-->
			<div id="mn16s" align="center">
				<br>
				<h2>후기 작성</h2>
                <hr id="hrSet53">
                <h4 align="center" style="color: gray; font-weight: normal;">후기는 클래스의 진행날짜로부터 14일 후까지만 작성하실 수 있습니다. </h4>
                <br>
				<div id="contentsDivSize29">
					<div>
						<table>
							<tr align="center">
								<th style="width: 300px">클래스명</th>
								<th style="width: 200px">일정</th>
								<th style="width: 60px">후기</th>
							</tr>
							
							<%for(Review2 r : list){ %>
							<tr align="center">             
								<input name="cno" class="cno" type="hidden" value="<%=r.getcNo()%>">
								<input name="psno" class="psno" type="hidden" value="<%=r.getPsNo()%>">
								<input name="cname" class="cname" type="hidden" value="<%=r.getcName()%>">
								<input name="psDate" class="psDate" type="hidden" value="<%=r.getPsDate()%>">
								<input name="cStart" class="cStart" type="hidden" value="<%=r.getPsStartTime()%>">
								<input name="cEnd" class="cEnd" type="hidden" value="<%=r.getPsEndTime()%>">
								<%  
									SimpleDateFormat dateForm = new SimpleDateFormat("yyyy-MM-dd"); 
									Date today = new Date();
									Date psDate = dateForm.parse(r.getPsDate());
									Date psDatePlus = dateForm.parse(r.getPsDatePlus10());
									
									
									int result1 = today.compareTo(psDate);
									int result2 = today.compareTo(psDatePlus);
								%>
								<td><%=r.getcName()%></td>
								<td><%=r.getPsDate() %><span id="divider">|</span><%=r.getPsStartTime() %>~<%=r.getPsEndTime() %>&nbsp;(<%=r.getcTime() %>시간)</td>
								<%if(result1 == 1 && result2 ==-1){ %>
								<td>
									<button class="writeBtn reviewBtn">작성</button>
								</td>
								<%} else { %>
								<td>작성 완료</td>
								<%} %>
							</tr>
							<%} %>
						</table>
						<br>
                        <div>
							<div style="display: inline-block">
								<button class="paging" onclick="location.href='<%=request.getContextPath()%>/review.do?currentPage=1'"><<</button>
								<%	if (currentPage <= 1) { %>
								<button class="paging" disabled><</button>
								<% } else { %>
								<button class="paging" onclick="location.href='<%=request.getContextPath()%>/review.do?currentPage=<%=currentPage - 1%>'"><</button>
								<% } %>
		
								<% for (int p = startPage; p <= endPage; p++) { if (p == currentPage) { %>
								<button class="paging" disabled><%=p%></button>
								<% } else { %>
								<button class="paging" onclick="location.href='<%=request.getContextPath()%>/review.do?currentPage=<%=p%>'"><%=p%></button>
								<% } %>
								<% } %>
								<% if (currentPage >= maxPage) { %>
								<button class="paging" disabled>></button>
								<% } else { %>
								<button class="paging" onclick="location.href='<%=request.getContextPath()%>/review.do?currentPage=<%=currentPage + 1%>'">></button>
								<% } %>
								<button class="paging" onclick="location.href='<%=request.getContextPath()%>/review.do?currentPage=<%=maxPage%>'">>></button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript"
			src="/semi/resources/js/mypage_WritingReview1.js"></script>

		<%@ include file="./common/footer.jsp"%>

	</div>
</body>
</html>