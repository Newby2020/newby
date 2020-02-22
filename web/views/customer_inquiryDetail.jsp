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

					<form>
						<table class="tbDetail">
							<tr>
								<td class="tdDetail">제목</td>
								<td class="tdDetail" colspan="5"><span class="spN2"><%=i.getItitle()%></span></td>
							</tr>
							<tr>
								<td class="tdDetail">작성자</td>
								<td class="tdSpan"><span class="spN"><%=i.getIwno()%></span></td>
								<td class="tdDetail">작성일</td>
								<td class="tdSpan"><span class="spN"><%=i.getIdate()%></span></td>
							<tr>
								<td class="tdDetail">내용</td>
								<td class="tbSpan2" colspan="5"></td>
							</tr>

							<tr>
								<td class="tdContent" colspan="6"><span class="spN"><%=i.getIcontent()%></span></td>
							</tr>
						</table>
						<div align="center">
							<div class="replyWriteArea">

								<table align="center">
									<tr>
										<td>관리자</td>
										<td><input type="date" name="date"
											value="<%=i.getIcdate()%>" readonly></td>
										<%
											if (i.getIcomment() != null) {
										%>
										<td><textArea rows="3" cols="80" id="replyContent"
												style="resize: none;" name="replycontent"><%=i.getIcomment()%></textArea></td>
												
										<%
											} else {
										%>
										<td><textArea rows="3" cols="80" id="replyContent"
												style="resize: none;" name="replyContent"></textArea></td>
										<%
											}
										%>
										<%
											if (m != null && m.getM_name().equals("관리자") ) {
												if(i.getIcomment() != null){
										%>
										<td>
											<button type="submit" class="insertBtn"
												onclick="change(this);">수정하기</button>
										</td>
										<td>
											<button type="reset" class="insertBtn"
												onclick="change(this);">삭제하기</button>
										</td>
										<%
												}else{
										%>
										<td>
											<button type="submit" class="insertBtn" id="replybtn"
												onclick="reComment(this);">댓글 달기</button>
										</td>

										<%
											} }
										%>
									</tr>
								</table>

							</div>
							<div align="center">
								<%
									if (i.getIwno().equals(m.getM_nick()) || m != null && m.getM_name().equals("관리자")) {
								%>
								<input type="button"
									onclick="location.href='inquiryUpdateView.io?ino=<%=i.getIno()%>'"
									value="수정하기">
								<%
									}
								%>
							</div>

						</div>

					</form>

				</div>

			</div>

		</div>
		<%@ include file="./common/footer.jsp"%>
	</div>
	<script>
		function complete() {

			$("#addReply").css('display', 'none');
		}
		/* function reComment(obj) {
			$("#replyContent").prop('readonly', true);
			// 클릭한 버튼 숨기기
			$(obj).css('display', 'none');

			$(obj).parents('table').append(htmlForm);

		} */
		/* $(document).ready(function(){
			$("#insertCom").clck(function(){
				var replytext=$("#")
			})
		}) */
		
		$("#replybtn").click(function(){
	    	if($("#replycontent").val().trim() === ""){
	    		alert("댓글을 입력하세요.");
	    		$("#replycontent").val("").focus();
	    	}else{
	    		$.ajax({
	    			url: "views/customer_inquiryDetail.jsp"
	                type: "POST",
	                data: {
	                    no : $("#no").val(),
	                    id : $("#id").val(),
	                    reply_content : $("#replycontent").val()
	                },
	                success: function () {
	                	alert("댓글 등록 완료");
	                	$("#replycontent").val("");
	                	getReply();
	                },
	    		})
	    	}
	    })
		
	</script>
</body>
</html>