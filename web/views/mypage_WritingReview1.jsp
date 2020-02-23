<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.kh.newby.review.model.vo.*, java.util.*"%>
	
<%
	ArrayList<Review2> list = (ArrayList<Review2>)request.getAttribute("list");
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
                <h4 align="center" style="color: gray; font-weight: normal;">후기는 클래스의 진행날짜로부터 3일전까지만 작성하실 수 있습니다. </h4>
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
								<td><%=r.getcName()%></td>
								<td><%=r.getPsDate() %><span id="divider">|</span><%=r.getPsStartTime() %>~<%=r.getPsEndTime() %>&nbsp;(<%=r.getcTime() %>시간)</td>
								<td>
									<button class="writeBtn reviewBtn">작성</button>
								</td>
							</tr>
							<%} %>
						</table>
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