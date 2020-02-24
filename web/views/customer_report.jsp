<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.kh.newby.claim.model.vo.*, java.util.*, com.kh.newby.common.PageInfo"%>
<%
	ArrayList<Claim> list = (ArrayList<Claim>) request.getAttribute("list");
	Claim c = (Claim)request.getAttribute("claim");
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
<link rel="stylesheet" href="/semi/resources/css/Customer_btn.css">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap"
	rel="stylesheet">
<script src="/semi/resources/js/jquery-3.4.1.min.js"></script>
<!-- Load icon libarary -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Sidebar & Footer : Basic-->
<link rel="stylesheet" href="/semi/resources/css/admin_basic.css">

<!-- Table & SearchBar-->
<link rel="stylesheet"
	href="/semi/resources/css/admin_table&searchBar.css">

<!-- The Modal & CheckBox-->
<link rel="stylesheet"
	href="/semi/resources/css/admin_modal&checkBox.css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<!-- TODO 왜 파일 분리해서 불러오면 실행이 안되는가.... -->
<!-- Modal js -->
<script src="../resources/js/admin_hostReport_modal.js"></script>

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
				<a href="/semi/reportSelectList.ro">신고</a> <a
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
						<% if(m != null && m.getM_name().equals("관리자")){ %>
						
						<!-- The Modal for 조회-->
						회원만 이용 가능합니다.<br>
						<br>
						<br>
						<button onclick="location.href='../index.jsp'">메인페이지로</button> 

						<% } else {%>
						<form action="<%= request.getContextPath() %>/reportInsert.ro"method="post">
							
							<h5>
								신고할 클래스 <input type="text" id="input1" name="ctitle">
								<button class="btn1" id="myBtn" onclick="btn1();">찾기</button>
							</h5>
							<div id="claim" class="modal">
								<div class="modal-content">
									<span id="close1" class="close"></span> <input type="button">
									
								</div>
							</div>
							<div id="myModal" class="modal">
								<!-- Modal content -->
								<div class="modal-content">
									<span class="close">&times;</span>
									
								</div>
							</div>
							<script>
							// Get the modal
					        var modal = document.getElementById('myModal');
					 
					        // Get the button that opens the modal
					        var btn = document.getElementById("myBtn");
					 
					        // Get the <span> element that closes the modal
					        var span = document.getElementsByClassName("close")[0];                                          
					 
					        // When the user clicks on the button, open the modal 
					        btn.onclick = function() {
					            modal.style.display = "block";
					        }
					 
					        // When the user clicks on <span> (x), close the modal
					        span.onclick = function() {
					            modal.style.display = "none";
					        }
					 
					        // When the user clicks anywhere outside of the modal, close it
					        window.onclick = function(event) {
					            if (event.target == modal) {
					                modal.style.display = "none";
					            }
					        }


							
							</script>
							<br>
							<h5>
								작성자
								<input type="text" value="<%= m.getM_nick() %>" readonly
									name="writer">
							</h5>

							<h5>
								신고이유 <input type="text" id="claimEu" size="50" name="title">
							</h5>
							
							<h5>
								신고날짜 <input type="date" id="date" size="50" name="date">
							</h5>


							<h5>
								신고 내용 <br> <br>
								<textarea rows="20" cols="80" name="content"
									style="resize: none; font-size: 15pt;"></textarea>
							</h5>

							<div>
								<button class="join2" type="submit">등록하기</button>
								<button class="join1" type="reset">취소하기</button>
							</div>
						</form>
						<%@ include file="./common/footer.jsp"%>
					</div>
					<% } %>
				</div>
			</div>

		<% if(m != null && m.getM_name().equals("관리자")){ %>
			<%@ include file="./common/footer.jsp"%>
		<% } %>
		</div>
	</div>

	<script>
		
			function btn1() {
				var width = screen.width;
				var height = screen.height;

				var contents = document.getElementById("claim");
			}

			// ------------------ Modal--------------------------------
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
			}
		</script>
</body>
</html>