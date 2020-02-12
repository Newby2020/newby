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
					<a href="/semi/selectList.bo?currentPage=1">문의 목록</a> <a
						href="Customer_CreateInquiry.jsp">문의 작성</a>
				</div>
				<a href="Customer_Report.jsp">신고</a> <a href="Customer_Refund.jsp">이용약관</a>
			</div>

			<!--contents-->
			<div id="mn16s" align="center">


				<!-- 제목란이니깐 해당 제목 작성해서 하면 돼-->
				<br>
				<h2>공지 내용</h2>
				<hr id="hrSet53">
				<br> <br>

				<div id="contentsDivSize29">
					<!-- 여기다가 너가 작업한거 넣으면 돼-->

					<form>
						<table class="tbDetail">
							<tr>
								<td class="tdDetail">제목</td>
								<td class="tdDetail" colspan="5"><span class="spN2">123</span></td>
							</tr>
							<tr>
								<td class="tdDetail">작성자</td>
								<td class="tdSpan"><span class="spN">123</span></td>
								<td class="tdDetail">작성일</td>
								<td class="tdSpan"><span class="spN">123</span></td>
								<td class="tdDetail">조회수</td>
								<td class="tdSpan"><span class="spN">123</span></td>
							</tr>
							<tr>
								<td class="tdDetail">내용</td>
								<td class="tbSpan2" colspan="5"><span class="spN">123</span></td>
							</tr>

							<tr>
								<td class="tdContent" colspan="6"></td>
							</tr>
						</table>

						<table align="center">
							<tr>
								<td>댓글 작성</td>
								<td><textArea rows="3" cols="80" id="replyContent"
										name="replyContent"></textArea></td>
								<td><button type="submit" id="addReply">댓글 등록</button></td>
							</tr>
						</table>




					</form>

				</div>

			</div>

		</div>
		<%@ include file="./common/footer.jsp"%>

	</div>

</body>
</html>