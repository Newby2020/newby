<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.kh.newby.notice.model.vo.*, java.util.*"
%>
<% ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list"); 
	Notice n = (Notice)request.getAttribute("notice");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoticeInsert</title>
<link rel="stylesheet" href="/semi/resources/css/joinModal.css">
<link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
<link rel="stylesheet" href="/semi/resources/css/Customer_btn.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
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
						href="customer_createInquiry.jsp">문의 작성</a>
				</div>
				<a href="customer_report.jsp">신고</a> <a href="customer_refund.jsp">이용약관</a>
			</div>

			<!--contents-->
			<div id="mn16s" align="center">

				
				<!-- 제목란이니깐 해당 제목 작성해서 하면 돼-->
				<br>
				<h2>공지사항 등록</h2>
				<hr id="hrSet53">
				<br> <br>
				<div id="contentsDivSize29">
					<!-- 여기다가 너가 작업한거 넣으면 돼-->
					
					<form id="updateForm" method="post">>
					
						<table class="tbDetail">
							<tr>
								<td class="tdDetail">제목</td>
								<td class="tdDetail" colspan="5">
									<input type="text" size="50" name="title" 
							       		value="<%= n.getNtitle() %>">
									<input type="hidden" name="nno" value="<%= n.getNno() %>"></td>
							</tr>
							<tr>
								<td class="tdDetail">작성자</td>
								<td class="tdSpan">
									<input type="text" value="관리자" name="writer" readonly>
								
								<td class="tdDetail">작성일</td>
								<td class="tdSpan"><input type="date" name="date" value="<%= n.getNdate() %>"></td>
							</tr>
							<tr>
								<td class="tdDetail">내용</td>
								<td class="tbSpan2" colspan="5"></td>
							</tr>
							<tr>
								<td colspan="4">
									<textarea name="content" cols="60" rows="15" style="resize:none;"><%= n.getNcontent() %></textarea>
								</td>
							</tr>
						</table>
						<br>
						<div align="center">
							<button onclick="deleteNotice()">삭제하기</button>
							<button onclick="complete();">완료하기</button>
						</div>
						<script>
							function complete(){
								$("#updateForm").attr("action","<%=request.getContextPath() %>/noticeUpdate.no");
							
							}
						
							function deleteNotice(){

								$("#updateForm").attr("action","<%=request.getContextPath() %>/noticeDelete.no");
							}
					
        				
    					</script>
							
					</form>
					
				</div>
			</div>
				
		</div>
		
		<%@ include file="./common/footer.jsp"%>
	</div>

	
</body>
</html>