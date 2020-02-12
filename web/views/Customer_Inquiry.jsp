<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.kh.newby.inquiry.model.vo.*, java.util.*"%>
<% 
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list"); 
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inquiry</title>
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
				<a href="views/Customer_Report.jsp">신고</a> <a href="views/Customer_Refund.jsp">이용약관</a>
			</div>

			<!--contents-->
			<div id="mn16s" align="center">


				<!-- 제목란이니깐 해당 제목 작성해서 하면 돼-->
				<br>
				<h2>문의 목록</h2>
				<hr id="hrSet53">
				<br> <br>

				<div id="contentsDivSize29">
					<!-- 여기다가 너가 작업한거 넣으면 돼-->
					<hr>

					<table class="tbNo">
						<tr>
							<th colspan="1" class="tab1">번호</th>
							<th colspan="6" class="tab1">제목</th>
							<th colspan="1" class="tab1">작성자</th>
							<th colspan="1" class="tab1">작성일</th>
						</tr>
						<%
						for(Board b : list){
						%>
						<tr>
							<td colspan="1" width="100px" class="tb2"><%= b.getIno() %></td>
							<td colspan="6" width="300px" class="tb3"><%= b.getItitle() %></td>
							<td colspan="1" width="150px" class="tb2"><%= b.getIwno() %></td>
							<td colspan="1" width="150px" class="tb2"><%= b.getIdate() %></td>
						</tr>
						<%
							}
						%>
					</table>
					<br>

					<div>
						<div style="display: inline-block">
							<button onclick="location.href='<%=request.getContextPath()%>/selectList.bo?currentPage=1'"><<</button>
							<%	if (currentPage <= 1) { %>
							<button disabled><</button>
							<% } else { %>
							<button onclick="location.href='<%=request.getContextPath()%>/selectList.bo?currentPage=<%=currentPage - 1%>'"><</button>
							<% } %>

							<% for (int p = startPage; p <= endPage; p++) { if (p == currentPage) { %>
							<button disabled><%=p%></button>
							<% } else { %>
							<button onclick="location.href='<%=request.getContextPath()%>/selectList.bo?currentPage=<%=p%>'"><%=p%></button>
							<% } %>
							<% } %>
							<% if (currentPage >= maxPage) { %>
							<button disabled>></button>
							<% } else { %>
							<button onclick="location.href='<%=request.getContextPath()%>/selectList.bo?currentPage=<%=currentPage + 1%>'">></button>
							<% } %>
							<button onclick="location.href='<%=request.getContextPath()%>/selectList.bo?currentPage=<%=maxPage%>'">>></button>

						</div>
					</div>

				</div>

			</div>
		</div>
		<%@ include file="./common/footer.jsp"%>
	</div>
	<script>
	$(function(){
		$("#listArea td").mouseenter(function(){
			$(this).parent().css({"background":"darkgray", "cursor":"pointer"});
		}).mouseout(function(){
			$(this).parent().css({"background":"black"});
		}).click(function(){
			var bno = $(this).parent().find("input").val();
			location.href="<%=request.getContextPath()%>/selectOne.bo?bno=" + bno;
		});
	});
		var dropdown = document.getElementsByClassName("dropdown-btnqo");
		var i;

		for (i = 0; i < dropdown.length; i++) {
			dropdown[i].addEventListener("click", function() {
				this.classList.toggle("activeCl");
				var dropdownContent = this.nextElementSibling;
				if (dropdownContent.style.display === "block") {
					dropdownContent.style.display = "none";
				} else {
					dropdownContent.style.display = "block";
				}
			});
		}
	</script>
</body>
</html>