<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.kh.newby.notice.model.vo.*, java.util.*, com.kh.newby.common.PageInfo"%>
<% ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list"); 
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	int currentPage = pi.getCurrentPage();
	int listCount = pi.getListCount();
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice</title>
<link rel="stylesheet" href="/semi/resources/css/joinModal.css">
<link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
<link rel="stylesheet" href="/semi/resources/css/Customer_table.css">
<link rel="stylesheet" href="/semi/resources/css/Customer_btn.css">
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
				<a href="/semi/noticeSelectList.no">공지사항</a>
				<button class="dropdown-btnqo">
					문의 <i id="ci22">≡</i>
				</button>
				<div class="dropdown-soxk">
					<a href="/semi/inquirySelectList.io?currentPage=1">문의 목록</a> <a
						href="views/customer_createInquiry.jsp">문의 작성</a>
				</div>
				<a href="views/customer_report.jsp">신고</a> <a href="views/customer_refund.jsp">이용약관</a>
			</div>

			<!--contents-->
			<div id="mn16s" align="center">


				<!-- 제목란이니깐 해당 제목 작성해서 하면 돼-->
				<br>
				<h2>공지사항</h2>
				<hr id="hrSet53">
				<br> <br>

				<div id="contentsDivSize29">
					<!-- 여기다가 너가 작업한거 넣으면 돼-->


					<!-- 페이징 처리 -->
					<table class="tbNo" id="listArea">
						<tr>
							<th colspan="1" class="tab1">번호</th>
							<th colspan="6" class="tab1">제목</th>
							<th colspan="1" class="tab1">작성자</th>
							<th colspan="1" class="tab1">작성일</th>
							<th colspan="1" class="tab1">조회수</th>
						</tr>
						<% for(Notice n : list){ %>
						<tr>
							<td colspan="1" width="100px" class="tb2" id=<%= n.getNno() %>><%= n.getNno() %></td>
							<td colspan="6" width="300px" class="tb3" id=<%= n.getNno() %>><%= n.getNtitle() %></td>
							<td colspan="1" width="150px" class="tb2" id=<%= n.getNno() %>><%= n.getNwriter() %></td>
							<td colspan="1" width="150px" class="tb2" id=<%= n.getNno() %>><%= n.getNdate() %></td>
							<td colspan="1" width="150px" class="tb2" id=<%= n.getNno() %>><%= n.getNcount() %></td>
						</tr>
						<% } %>
					</table>
					
					<br>
					
					<!-- 게시판 아래 페이지 이동 버튼  -->
					<div>
						<div style="display: inline-block">
							<button class="PaBtn" onclick="location.href='<%=request.getContextPath()%>/noticeSelectList.no?currentPage=1'"><<</button>
							<%	if (currentPage <= 1) { %>
							<button class="PaBtn" disabled><</button>
							<% } else { %>
							<button class="PaBtn" onclick="location.href='<%=request.getContextPath()%>/noticeSelectList.no?currentPage=<%=currentPage - 1%>'"><</button>
							<% } %>

							<% for (int p = startPage; p <= endPage; p++) { if (p == currentPage) { %>
							<button class="PaBtn" disabled><%=p%></button>
							<% } else { %>
							<button class="PaBtn" onclick="location.href='<%=request.getContextPath()%>/noticeSelectList.no?currentPage=<%=p%>'"><%=p%></button>
							<% } %>
							<% } %>
							<% if (currentPage >= maxPage) { %>
							<button class="PaBtn" disabled>></button>
							<% } else { %>
							<button class="PaBtn" onclick="location.href='<%=request.getContextPath()%>/noticeSelectList.no?currentPage=<%=currentPage + 1%>'">></button>
							<% } %>
							<button class="PaBtn" onclick="location.href='<%=request.getContextPath()%>/noticeSelectList.no?currentPage=<%=maxPage%>'">>></button>
							<% if(m != null && m.getM_name().equals("관리자")){ %>
							<button class="join3" onclick="location.href='/semi/views/customer_noticeInsert.jsp'">작성하기</button>
							<% } %>
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
			$(this).parent().css({"cursor":"pointer"});
		}).mouseout(function(){
			$(this).parent();
		}).click(function(e){
			var nno = e.target.id;
			location.href="<%=request.getContextPath()%>/noticeSelectOne.no?nno=" + nno;
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