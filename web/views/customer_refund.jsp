<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Refund</title>
<link rel="stylesheet" href="/semi/resources/css/joinModal.css">
<link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
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
						href="customer_createInquiry.jsp">문의 작성</a>
				</div>
				<a href="/semi/reportSelectList.ro">신고</a> <a href="customer_refund.jsp">이용약관</a>
			</div>

			<!--contents-->
			<div id="mn16s" align="center">
				
				<!-- 제목란이니깐 해당 제목 작성해서 하면 돼-->
				<br>
				<h2>이용 약관</h2>
				<hr id="hrSet53">
				<br> <br>

				<div id="contentsDivSize29">
					<!-- 여기다가 너가 작업한거 넣으면 돼-->

					<form>
						<h4>이용 약관</h4>

						

						<p>
							여러분은 본 약관을 읽고 동의하신 후 회원 가입을 신청하실 수 있으며, <br> 이에 대한 승낙을 통해 회원
							가입 절차를 완료하고 여러분께 서비스 이용 계정(이하 ‘계정’)을 부여합니다. <br> 계정이란 회원이
							로그인한 이후 이용하는 각종 서비스 이용 이력을 회원 별로 관리하기 위해 설정한 회원 식별 단위를 말합니다.<br>
							<br> 첫 클래스를 시작하기 24시간 이전에 취소요청을 하는 경우에는 결제대금이 100% 환불됩니다. <br>
							단, 호스트에게 먼저 취소,환불 의사를 유선,SMS등의 수단으로 통보한 후에 환불 접수가 가능합니다. <br>
							<br> 만일 첫 수업시작까지 24시간 이내에 취소 의사를 밝히거나 첫 수업 진행 후 환불을 요청하더라도 첫
							수업료로 결제한 1시간의 금액은 환불 받을 수 없으며, <br> 시범강의비 명목으로 호스트에게 귀속됩니다.
							마찬가지로 전체 결제를 진행한 경우에는 등록된 커리큘럼의 1시간 수업료가 차감된 금액이 환불 됩니다. <br>



						</p>

					</form>

				</div>

			</div>

		</div>
		<%@ include file="./common/footer.jsp"%>
	</div>
	<script>
		var dropdown = document.getElementsByClassName("dropdown-btnqo");
		var i;

		for (i = 0; i < dropdown.length; i++) {
			dropdown[i].addEventListener("click", function() {
				this.classList.toggle("activeCl");
				var dropdownContent = this.nextElementSibling;
				if (dropdownContent.style.display === "block") {
					dropdownContent.style.display = "none";
				} else {
					dropdownContent.style.display = "block";
				}
			});
		}

		function btn1() {
			var width = screen.width;
			var height = screen.height;

			child = window.open(herf = "Find.jsp", "찾아보기",
					"location=no,resizeable=no,width=500, height=300");
		}
	</script>
</body>
</html>