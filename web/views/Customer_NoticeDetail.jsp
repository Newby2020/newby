<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice Detail</title>
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
				<a href="Customer_Notice.jsp">공지사항</a>
				<button class="dropdown-btnqo">
					문의 <i id="ci22">≡</i>
				</button>
				<div class="dropdown-soxk">
					<a href="Customer_Inquiry.jsp">문의 목록</a> <a
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

				<div id="contentsDivSize29">
					<!-- 여기다가 너가 작업한거 넣으면 돼-->

					<form>
						<table class="tbDetail">
							<tr>
								<td class="tdDetail">제목</td>
								<td colspan="6"><span class="spN">123</span></td>
							</tr>
							<tr>
								<td class="tdDetail">작성자</td>
								<td class="tdSpan"><span class="spN">123</span></td>
								<td class="tdDetail">작성일</td>
								<td class="tdSpan"><span class="spN">123</span></td>
								<td class="tdDetail">조회수</td>
								<td class="tdSpan"><span class="spN">123</span></td>
							</tr>
						
						</table>
						
						<h5>
							<textarea rows="20" cols="80" style="resize: none; font-size: 15pt;"></textarea>
						</h5>

					</form>

				</div>

			</div>

		</div>
		<%@ include file="./common/footer.jsp"%>

	</div>

</body>
</html>