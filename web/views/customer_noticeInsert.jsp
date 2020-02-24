<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.kh.newby.notice.model.vo.*, java.util.*"
%>
<% ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list"); 
	Notice n = (Notice)request.getAttribute("notice");
	 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoticeInsert</title>
<link rel="stylesheet" href="/semi/resources/css/joinModal.css">
<link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
<link rel="stylesheet" href="/semi/resources/css/Customer_table.css">
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
				<a href="/semi/reportSelectList.ro">신고</a> <a href="customer_refund.jsp">이용약관</a>
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
					
					<form action="<%= request.getContextPath() %>/noticeInsert.no" method="post">
					
						<table class="tbDetail">
							<tr>
								<td class="tdDetail">제목</td>
								<td class="tdDetail" colspan="5"><input class="spN2" type="text" size="50" name="title"></td>
							</tr>
							<tr>
								<td class="tdDetail">작성자</td>
								<td class="tdSpan">
									<input class="spN2" type="text" value="관리자" name="writer" readonly>
								
								<td class="tdDetail">작성일</td>
								<td class="tdSpan"><input class="spN2" type="date" name="date"></td>
							</tr>
							<tr>
								<td class="tdDetail">내용</td>
								<td class="tbSpan2" colspan="5"></td>
							</tr>
							<tr>
								<td colspan="6">
									<textarea class="tdContent" name="content" cols="100" rows="30" style="resize:none;"></textarea>
								</td>
							</tr>
						</table>
						<br>
						<div align="center">
							<button class="join1" type="submit">등록하기</button>
							<button class="join1" type="reset">취소하기</button>
						</div>

					</form>
					
				</div>
			</div>
				
		</div>
		
		<%@ include file="./common/footer.jsp"%>
	</div>

	<script>
        
    </script>

</body>
</html>