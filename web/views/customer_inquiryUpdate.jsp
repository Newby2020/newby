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
				<!-- 문의글 수정 내용 -->
				<!-- 글쓴이와 사용자계정이 같을 경우 -->
				<% if( i.getIwno().equals(m.getM_nick())) { %>
					<form id="updateForm" method="post">
						<table class="tbDetail">
							<tr>
								<td class="tdDetail">제목</td>
								<td class="tdDetail" colspan="5"><input class="spN2" type="text"name="title" value="<%= i.getItitle() %>"></td>
							</tr>
							<tr>
								<td class="tdDetail">작성자</td>
								<td class="tdSpan"><input class="spN2" type="text" name="wno" value="<%=i.getIwno()%>" readonly></td>
								<td class="tdDetail">작성일</td>
								<td class="tdSpan"><input class="spN2" type="date" name="date" value="<%= i.getIdate() %>"></td>
							<tr>
								<td class="tdDetail">내용</td>
								<td class="tbSpan2" colspan="5"></td>
							</tr>
							<tr>
								<td class="tdContent" colspan="6"><textarea class="spN2" name="content" cols="130" rows="30" style="resize:none;"><%= i.getIcontent() %>
								</textarea></td>
							</tr>
						</table>
						<div align="center">
							<div class="replyWriteArea">
							</div>
						</div>
						<div id="replySelectArea">
						</div>
						<div align="center">
							<button class="join1" onclick="deleteInquiry()">삭제하기</button>
							<button class="join1" onclick="complete()">완료하기</button>
						</div>
						<input type="hidden" name="ino" value="<%= i.getIno() %>"/>
						<script>
							function complete(){
								$("#updateForm").attr("action","<%=request.getContextPath() %>/inquiryUpdate.io");
							}
							function deleteInquiry(){
								$("#updateForm").attr("action","<%=request.getContextPath() %>/inquiryDelete.io");
							}
    					</script>
					</form>
					
					<!-- 글쓴이와 사용자계정이 다를 경우 -->
					<% } else{ %>
					<form id="updateForm" method="post">
						<table class="tbDetail">
							<tr>
								<td class="tdDetail">제목</td>
								<td class="tdDetail" colspan="5"><input class="spN2" type="text"name="title" value="<%= i.getItitle() %>" readonly>
							       		</td>
							</tr>
							<tr>
								<td class="tdDetail">작성자</td>
								<td class="tdSpan"><input class="spN2" type="text" name="wno" value="<%=i.getIwno()%>" readonly></td>
								<td class="tdDetail">작성일</td>
								<td class="tdSpan"><input class="spN2" type="date" name="date" value="<%= i.getIdate() %>" readonly></td>
							<tr>
								<td class="tdDetail">내용</td>
								<td class="tbSpan2" colspan="5"></td>
							</tr>

							<tr>
								<td class="tdContent" colspan="6"><textarea class="spN3" name="content" cols="100" rows="30" style="resize:none;" readonly><%= i.getIcontent() %>
								</textarea></td>
							</tr>
					
									<tr >
										<td class="tdDetail">답변</td>
										<td class="tdTime"><input class="spN2" type="date" name="date"
											value="<%=i.getIcdate()%>" readonly></td>
											
										<!--  답변 내용 관련 -->
										<!--  댓글의 내용이 있을경우 -->
										<!--  댓글의 내용이 보임 -->
										<%
											if (i.getIcomment() != null) {
										%>
										<td class="tdDetail"><textArea class="spN2" rows="3" cols="70" id="replyContent" 
												style="resize: none;" name="comment"><%=i.getIcomment()%></textArea></td>
												
										<!--  댓글의 내용이 없을 경우 -->
										<!--  댓글창에 아무것도 생성되지 않음 -->
										<%
											} else {
										%>
										<td class="tdDetail"><textArea class="spN2" rows="3" cols="70" id="replyContent"
												style="resize: none;" name="comment"></textArea></td>
										<%
											}
										%>
										<!-- 관리자계정으로 들어올 경우 -->
										<!-- 댓글에 내용이 없을 경우  -->
										<!-- 수정완료 삭제하기 버튼이 생성됨 -->
										<%
											if (m != null && m.getM_name().equals("관리자") ) {
												if(i.getIcomment() != null){
										%>
										<td>
											<button class="join3" onclick="updateCom()">수정완료</button>
											<button class="join3" onclick="deleteCom()">삭제하기</button>
										</td>
										<script>
											function updateCom(){
												$("#updateForm").attr("action","<%=request.getContextPath() %>/updateCom.io");
											}
											function deleteCom(){
												$("#updateForm").attr("action","<%=request.getContextPath() %>/deleteCom.io");
											}
    									</script>
    									<!-- 댓글에 내용이 있을 경우 답변하기 버튼이 생성됨 -->
										<%
											}else{
										%>
										<td>
											<button type="submit" class="join1" id="replybtn" name="comment"
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
						<input class="spN2" type="hidden" name="ino" value="<%= i.getIno() %>"/>
								</form>
					<% } %>

				</div>
			</div>

		</div>
		<%@ include file="./common/footer.jsp"%>
	</div>
	<script>
	
	</script>
</body>
</html>