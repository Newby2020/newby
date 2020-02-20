<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.kh.newby.inquiry.model.vo.*, java.util.*, com.kh.newby.notice.model.vo.*"%>
<%
	Inquiry b = (Inquiry) request.getAttribute("inquiry");
	Notice n = (Notice) request.getAttribute("notice");

	ArrayList<Inquiry> clist = (ArrayList<Inquiry>) request.getAttribute("clist");
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
				<a href="/semi/noticeSelectList.no">공지사항</a>
				<button class="dropdown-btnqo">
					문의 <i id="ci22">≡</i>
				</button>
				<div class="dropdown-soxk">
					<a href="/semi/inquirySelectList.io?currentPage=1">문의 목록</a> <a
						href="views/customer_createInquiry.jsp">문의 작성</a>
				</div>
				<a href="views/customer_report.jsp">신고</a> <a
					href="views/customer_refund.jsp">이용약관</a>
			</div>

			<!--contents-->
			<div id="mn16s" align="center">

				<% if( b.getIwno().equals(m.getM_nick())) { %>
				<!-- 제목란이니깐 해당 제목 작성해서 하면 돼-->
				<br>
				<h2>문의 내용</h2>
				<hr id="hrSet53">
				<br> <br>

				<div id="contentsDivSize29">
					<!-- 여기다가 너가 작업한거 넣으면 돼-->

					<form id="updateForm" method="post">
						<table class="tbDetail">
							<tr>
								<td class="tdDetail">제목</td>
								<td class="tdDetail" colspan="5"><input type="text"name="title" value="<%= b.getItitle() %>">
							       		</td>
							</tr>
							<tr>
								<td class="tdDetail">작성자</td>
								<td class="tdSpan"><span class="spN"><%=b.getIwno()%></span></td>
								<td class="tdDetail">작성일</td>
								<td class="tdSpan"><span class="spN"><%=b.getIdate()%></span></td>
							<tr>
								<td class="tdDetail">내용</td>
								<td class="tbSpan2" colspan="5"></td>
							</tr>

							<tr>
								<td class="tdContent" colspan="6"><textarea name="content" cols="100" rows="30" style="resize:none;"><%= b.getIcontent() %>
								</textarea></td>
							</tr>
						</table>
						<div id="replySelectArea">
							
						</div>
						<div align="center">
							<button onclick="inquiryUpdate();">수정하기</button>
							<button onclick="inquiryDelete()">삭제하기</button>
						</div>
				
						<script>
							function inquiryUpdate(){
								$("#updateForm").attr("action","<%=request.getContextPath() %>/inquiryUpdate.io");
							}
						
							function inquiryDelete(){
								$("#updateForm").attr("action","<%=request.getContextPath() %>/inquiryDelete.io");
							}
					
        				
    					</script>
					</form>

				</div>
					<% } else {
					request.setAttribute("msg", "작성자 외에 접근이 불가능한 페이지입니다.");
					request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
				} %>
			</div>

		</div>
		<%@ include file="./common/footer.jsp"%>
	</div>
	<script>
	
	
	</script>
</body>
</html>