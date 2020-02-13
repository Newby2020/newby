<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.kh.newby.inquiry.model.vo.*, java.util.*"%>
<%
	Board b = (Board)request.getAttribute("board");

	ArrayList<Board> list
	= (ArrayList<Board>)request.getAttribute("list");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InquiryDetail</title>
<link rel="stylesheet" href="/semi/resources/css/joinModal.css">
<link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
<link rel="stylesheet" href="/semi/resources/css/Customer_table.css">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap"
	rel="stylesheet">
<script src="/semi/resources/js/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div id="Allpanel" align="center">

		<%@ include file="./common/header.jsp"%>

		<!-- 작업하는 컨텐츠 -->
		<div id="newby-body-panel" class="contents-div123" align="left">

			<!--left sidebar-->
			<div class="sidenavsk">
				<div id="sidebar-titleso67" align="center">고객센터</div>
				<a href="views/Customer_Notice.jsp">공지사항</a>
				<button class="dropdown-btnqo">
					문의 <i id="ci22">≡</i>
				</button>
				<div class="dropdown-soxk">
					<a href="/semi/selectList.bo?currentPage=1">문의 목록</a> <a
						href="views/Customer_CreateInquiry.jsp">문의 작성</a>
				</div>
				<a href="views/Customer_Report.jsp">신고</a> <a
					href="views/Customer_Refund.jsp">이용약관</a>
			</div>

			<!--contents-->
			<div id="mn16s" align="center">


				<!-- 제목란이니깐 해당 제목 작성해서 하면 돼-->
				<br>
				<h2>문의 내용</h2>
				<hr id="hrSet53">
				<br> <br>

				<div id="contentsDivSize29">
					<!-- 여기다가 너가 작업한거 넣으면 돼-->
					<% if(b != null){ %>
					<form>
						<table class="tbDetail">
							<tr>
								<td class="tdDetail">제목</td>
								<td class="tdDetail" colspan="5"><span class="spN2"><%= b.getItitle() %></span></td>
							</tr>
							<tr>
								<td class="tdDetail">작성자</td>
								<td class="tdSpan"><span class="spN"><%= b.getIwno() %></span></td>
								<td class="tdDetail">작성일</td>
								<td class="tdSpan"><span class="spN"><%= b.getIdate() %></span></td>
							<tr>
								<td class="tdDetail">내용</td>
								<td class="tbSpan2" colspan="5"><span class="spN"><%= b.getIcontent() %></span></td>
							</tr>

							<tr>
								<td class="tdContent" colspan="6"></td>
							</tr>
						</table>





					</form>

				</div>

			</div>

		</div>
		<%@ include file="./common/footer.jsp"%>
	</div>
	<script>
	
	
	
</script>
</body>
</html> --%>