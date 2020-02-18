<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.kh.newby.inquiry.model.vo.*, java.util.*, com.kh.newby.notice.model.vo.*"%>
<%
	Board b = (Board) request.getAttribute("board");
	Notice n = (Notice) request.getAttribute("notice");

	ArrayList<Board> clist = (ArrayList<Board>) request.getAttribute("clist");
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
					<a href="/semi/boardSelectList.bo?currentPage=1">문의 목록</a> <a
						href="views/Customer_CreateInquiry.jsp">문의 작성</a>
				</div>
				<a href="views/Customer_Report.jsp">신고</a> <a
					href="views/Customer_Refund.jsp">이용약관</a>
			</div>

			<!--contents-->
			<div id="mn16s" align="center">

				<% if (b != null) { %>
				<!-- 제목란이니깐 해당 제목 작성해서 하면 돼-->
				<br>
				<h2>문의 내용</h2>
				<hr id="hrSet53">
				<br> <br>

				<div id="contentsDivSize29">
					<!-- 여기다가 너가 작업한거 넣으면 돼-->

					<form>
						<table class="tbDetail">
							<tr>
								<td class="tdDetail">제목</td>
								<td class="tdDetail" colspan="5"><span class="spN2"><%=b.getItitle()%></span></td>
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
								<td class="tdContent" colspan="6"><span class="spN"><%=b.getIcontent()%></span></td>
							</tr>
						</table>
						<div id="replySelectArea">
							<!-- 게시글의 댓글들을 보여주는 부분  -->
							<%
								if (clist != null && m != null && m.getM_name().equals("관리자")) {
							%>
							<form action="boardComment.bo" method="post">
								<table id="replySelectTable">
									<tr>
										<td rowspan="1"></td>
										<td><%=m.getM_name()%></td>
										<td><%=b.getIdate()%></td>
										<td align="center"><input type="hidden" name="writer"
											value="<%=m.getM_name()%>"> <input type="hidden"
											name="refcno"> <textarea class="reply-content"
												cols="80" rows="3" style="resize: none;"></textarea>
											<button type="button" class="insertBtn"
												onclick="reComment(this);">댓글 달기</button></td>
									</tr>
								</table>
							</form>
							<%
								}
							%>

						</div>
						<% if( b.getIwno().equals(m.getM_nick())) { %>
						<div align="center">
							<button onclick="noticeUpdate();">수정</button>
							<button onclick="noticeDelete()">삭제</button>
						</div>
						<% } } %>
						<script>
							function noticeUpdate(){
								$("#updateForm").attr("action","<%=request.getContextPath() %>/boardUpdate.no");
							}
						
							function noticeDelete(){
								$("#updateForm").attr("action","<%=request.getContextPath() %>/boardDelete.no");
							}
					
        				
    					</script>
					</form>

				</div>
	
			</div>

		</div>
		<%@ include file="./common/footer.jsp"%>
	</div>
	<script>
	function reComment(obj){
		$(obj).siblings('.insertConfirm').css('display','inline');
		
		$(obj).css('display', 'none');
		
		$(obj).parents('table').append(htmlForm);
		
	}
	
	</script>
</body>
</html>