<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.kh.newby.claim.model.vo.*, java.util.*, com.kh.newby.common.PageInfo"%>
<%
	ArrayList<Claim> list = (ArrayList<Claim>) request.getAttribute("list");
	Claim c = (Claim) request.getAttribute("claim");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Report</title>
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


<style>
</style>
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

				<div style="overflow-x: auto;">
					<!-- 제목란이니깐 해당 제목 작성해서 하면 돼-->
					<br>
					<h2>신고</h2>
					<br> <br>

					<div id="contentsDivSize29">
						<!-- 여기다가 너가 작업한거 넣으면 돼-->
						<%
							if (m != null && m.getM_name().equals("관리자")) {
						%>

						<!-- The Modal for 조회-->
						회원만 이용 가능합니다.<br> <br> <br>
						<button onclick="location.href='./index.jsp'">메인페이지로</button>

						<%
							} else {
						%>
						<form <%-- action="<%=request.getContextPath()%>/reportInsert.ro" --%>
							method="post">
							<table class="tbDetail">
								<tr>
									<td class="tdDetail">신고할 클래스</td>
									<td class="tdDetail"></td>
									<td><button class="btn1" id="myBtn" onclick="btn1();">찾기</button></td>
								</tr>
								<tr>
									<td class="tdDetail">작성자</td>
									<td class="tdSpan"><input class="spN2" type="text"
										value="<%=m.getM_nick()%>" readonly name="writer"></td>
								<tr>
									<td class="tdDetail">신고이유</td>
									<td class="tdSpan"><input class="spN2" type="text"
										id="claimEu" name="title"></td>
								</tr>
								<tr>
									<td class="tdDetail">작성일</td>
									<td class="tdSpan"><input class="spN2" type="date"
										id="date" name="date"></td>
								</tr>
								<tr>
									<td class="tdDetail">신고 내용</td>
									<td class="tbSpan2" colspan="5"></td>
									<td>
								</tr>
								<tr>
									<td colspan="6"><textarea class="tdContent" name="content"
											cols="100" rows="30" style="resize: none;"></textarea></td>
								</tr>
							</table>

							<div>
								<button class="join2" type="submit">등록하기</button>
								<button class="join1" type="reset">취소하기</button>
							</div>
						</form>
						<%@ include file="./common/footer.jsp"%>
					</div>
					<%
						}
					%>
				</div>
			</div>

			<%
				if (m != null && m.getM_name().equals("관리자")) {
			%>
			<%@ include file="./common/footer.jsp"%>
			<%
				}
			%>
		</div>
	</div>

	<script>
		function btn1() {

            window.open('/semi/reportSelectList.ro','신고리스트','location=no,resizeable=no,width=500,height=300');
		}

		/* // ------------------ Modal--------------------------------
		// Get the modal
		var contents = document.getElementById("contentsOfReport");
		var suspend = document.getElementById("suspend");

		// Get the button that opens the modal
		var btn1 = document.getElementById("cotentsBtn");
		var btn2 = document.getElementById("suspendBtn");

		// Get the <span> element that closes the modal
		// var span = document.getElementsByClassName("close")[0];
		var close1 = document.getElementById('close1');
		var close2 = document.getElementById('close2');

		// When the user clicks the button, open the modal 
		btn1.onclick = function() {
			contents.style.display = "block";
		}
		btn2.onclick = function() {
			suspend.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		close1.onclick = function() {
			contents.style.display = "none";
		}
		close2.onclick = function() {
			suspend.style.display = "none";
		}

		// --------------- submit 조건문 ---------------
		function confirm() {
			if (document.getElementById('textarea').value == "") {
				alert("정지 사유를 입력해 주세요.");
				return false;
			}
			return true;
		} */
	</script>
</body>
</html>