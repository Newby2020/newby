<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.kh.newby.inquiry.model.vo.*, java.util.*, com.kh.newby.notice.model.vo.*"%>
<%
	Inquiry i = (Inquiry) request.getAttribute("inquiry");
	Notice n = (Notice) request.getAttribute("notice");

	ArrayList<Inquiry> list = (ArrayList<Inquiry>) request.getAttribute("list");
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
				<a href="views/customer_report.jsp">신고</a> <a
					href="views/customer_refund.jsp">이용약관</a>
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

					<form id="updateForm" method="post">
						<table class="tbDetail">
							<tr>
								<td class="tdDetail">제목</td>
								<td class="tdDetail" colspan="5"><span class="spN2"><%=i.getItitle()%></span></td>
							</tr>
							<tr>
								<td class="tdDetail">작성자</td>
								<td class="tdSpan"><span class="spN2"><%=i.getIwno()%></span></td>
								<td class="tdDetail">작성일</td>
								<td class="tdSpan"><span class="spN2"><%=i.getIdate()%></span></td>
							<tr>
								<td class="tdDetail">내용</td>
								<td class="tbSpan2" colspan="5"></td>
							</tr>

							<tr>
								<td class="tdContent" colspan="6"><span class="spN2"><%=i.getIcontent()%></span></td>
							</tr>
									
									<!-- 댓글 관련 -->
									<tr>
										<td class="tdDetail">답변</td>
										<td class="tdTime"><input class="spN2" type="date" name="date"
											value="<%=i.getIcdate()%>" readonly></td>
										<%
											if (i.getIcomment() != null) { // 댓글의 내용이 있을 경우 댓글 내용이 textarea에 생성된다
										%>
										<td  class="tdDetail"><textArea class="spN2" rows="3" cols="80" id="replyContent" readonly
												style="resize: none;" name="comment"><%=i.getIcomment()%></textArea></td>

										<%
											} else { // 댓글의 내용이 없을 경우 textarea에 공백이 나타남
										%>
										<td  class="tdDetail"><textArea class="spN2" rows="3" cols="80" id="replyContent"
												style="resize: none;" name="comment"></textArea></td>
										<%
											}
										%>
										
										 <!-- 관리자계정으로 들어왔을 경우  -->
										<%
											if (m != null && m.getM_name().equals("관리자") ) { 
												if(i.getIcomment() != null){ // 댓글의 내용이 있을경우 댓글 수정 버튼이 생성됨
										%>
										
										<td> 
											<input type="button" class="join3"
												onclick="location.href='updateViewCom.io?ino=<%=i.getIno()%>'"
												value="댓글 수정">
										</td>				
										<%
												}else{ // 댓글의 내용이 없을 경우 답변하기 버튼이 생성된
										%>
										<td>
											<button type="submit" class="join3" id="replybtn" name="comment"
												onclick="reComment();">답변 하기</button>
										</td>									
										<script>
											function reComment(){
												$("#updateForm").attr("action","<%=request.getContextPath() %>/insertCom.io");
											}									
    									</script>

										<%
											} }
										%>
									</tr>
								</table>

							
							<div align="center">
							<!-- 문의글 내용 -->
							<!-- 사용자가계정으로  들어왔을 경우 -->
								<%
									if (i.getIwno().equals(m.getM_nick())) {  // 글쓴이와 사용자가 일치할때 글 수정 버튼이 생성된
								%><br>
								<input type="button" class="join1" onclick="location.href='updateViewCom.io?ino=<%=i.getIno()%>'" value="수정하기">
									<%@ include file="./common/footer.jsp"%>
								<%
									}
								%>
								<!-- 관리자계정으로 들어왔을 경우 -->
								<% if(m != null && m.getM_name().equals("관리자") ) { %>  
								
								<!-- 문의글 삭제 버튼이 생김 -->
									</div><div align="center">
										<button class="join1" onclick="deleteInquiry()">삭제하기</button>
									</div>	
								<script>
									function deleteInquiry(){
										$("#updateForm").attr("action","<%=request.getContextPath() %>/inquiryDelete.io");
									}
    							</script>
    						<% } %>
    						</div>

						</div>
						<input type="hidden" name="ino" value="<%= i.getIno() %>"/>
					</form>

				</div>


			<% if(m != null && m.getM_name().equals("관리자") ) { %>
			<%@ include file="./common/footer.jsp"%>
			<% } %>
	</div>
	<script>
		function complete() {

			$("#addReply").css('display', 'none');
		}
	</script>
</body>
</html>