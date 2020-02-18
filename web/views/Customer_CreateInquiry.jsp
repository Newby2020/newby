<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.kh.newby.inquiry.model.vo.*, java.util.*"%>
<%
	ArrayList<Board> list = (ArrayList<Board>) request.getAttribute("list");
	Board b = (Board) request.getAttribute("board");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CreateInquiry</title>
<link rel="stylesheet" href="/semi/resources/css/joinModal.css">
<link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
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
					<a href="/semi/boardSelectList.bo?currentPage=1">문의 목록</a> <a
						href="Customer_CreateInquiry.jsp">문의 작성</a>
				</div>
				<a href="Customer_Report.jsp">신고</a> <a href="Customer_Refund.jsp">이용약관</a>
			</div>

			<!--contents-->
			<div id="mn16s" align="center">


				<!-- 제목란이니깐 해당 제목 작성해서 하면 돼-->
				<br>
				<h2>문의 작성</h2>
				<hr id="hrSet53">
				<br> <br>

				<%
					if (m != null) {
				%>
				<div id="contentsDivSize29">
					<!-- 여기다가 너가 작업한거 넣으면 돼-->

					<form action="<%=request.getContextPath()%>/boardInsert.bo"
						method="post">
						<tr>
							<td class="tdDetail">제목</td>
							<td class="tdDetail" colspan="5"><input type="text" name="title"></td>
						</tr>
						<tr>
							<td class="tdDetail">작성자</td>
							<td class="tdSpan"><input type="text"name="writer" readonly value="<%= m.getM_nick() %>"></td>

								<td class="tdDetail">작성일</td>
								<td class="tdSpan"><input type="date" name="date"></td>
						</tr>
						<h4>
									문의 내용 <br> <br>
							<textarea rows="20" cols="80" name="content"
										style="resize: none; font-size: 15pt;"></textarea>
						</h4>
						<div>
							<input class="join2" type="submit" value="보내기"> <input
										class="join1" type="reset" value="취소">
						</div>

					
							</form>

				</div>
				<%
					} else {
						request.setAttribute("msg", "관계자 외에 접근이 불가능한 페이지입니다.");
						request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
					}
				%>

			</div>

		</div>
		<%@ include file="./common/footer.jsp"%>

	</div>
	<script>
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

		function btn1() {
			var width = screen.width;
			var height = screen.height;

			child = window.open(herf = "Find.jsp", "찾아보기",
					"location=no,resizeable=no,width=500, height=300");
		}
	</script>


</body>
</html>