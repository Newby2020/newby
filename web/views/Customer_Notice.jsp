<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notice</title>
<link rel="stylesheet" href="/semi/resources/css/joinModal.css">
<link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
<link rel="stylesheet" href="/semi/resources/css/main-atag.css">
<link rel="stylesheet" href="/semi/resources/css/main-footer.css">
<link rel="stylesheet" href="/semi/resources/css/main-headervar.css">
<link rel="stylesheet" href="/semi/resources/css/main-navibar.css">
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
<link rel="stylesheet" href="/semi/resources/css/Customer_table.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
<script src="/semi/jquery/jquery-3.4.1.min.js"></script>
</head>
<body>

	<div id="Allpanel" align="center">

		<%@ include file="./common/header.jsp"%>

		<!-- 작업하는 컨텐츠 -->
		<div id="newby-body-panel" class="contents-div123" align="left">

			<!--left sidebar-->
			<div class="sidenavsk">
				<div id="sidebar-titleso67" align="center">고객센터</div>
				<a href="Customer_Notice.jsp">공지사항</a>
				<button class="dropdown-btnqo">
					문의 <i id="ci22">≡</i>
				</button>
				<div class="dropdown-soxk">
					<a href="Customer_Inquiry.jsp">문의 목록</a> <a
						href="Customer_CreateInquiry.jsp">문의 작성</a>
				</div>
				<a href="Customer_Report.jsp">신고</a> <a href="Customer_Refund.jsp">이용약관</a>
			</div>

			<!--contents-->
			<div id="mn16s" align="center">

				
				<!-- 제목란이니깐 해당 제목 작성해서 하면 돼-->
				<br>
				<h2>공지사항</h2>
				<hr id="hrSet53">
				<br> <br>

				<div id="contentsDivSize29">
					<!-- 여기다가 너가 작업한거 넣으면 돼-->

					<hr>

					<table class="tbNo">
						<tr>
							<th colspan="1" class="tab1">번호</th>
							<th colspan="6" class="tab1">제목</th>
							<th colspan="1" class="tab1">작성자</th>
							<th colspan="1" class="tab1">작성일</th>
							<th colspan="1" class="tab1">조회수</th>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">15</td>
							<td colspan="6" width="300px" class="tb3">공지15</td>
							<td colspan="1" width="150px" class="tb2">Manager</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>
						<tr>
							<td colspan="1" width="100px" class="tb2">14</td>
							<td colspan="6" width="300px" class="tb3">공지14</td>
							<td colspan="1" width="150px" class="tb2">Manager</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">13</td>
							<td colspan="6" width="300px" class="tb3">공지13</td>
							<td colspan="1" width="150px" class="tb2">Manager</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">12</td>
							<td colspan="6" width="300px" class="tb3">공지12</td>
							<td colspan="1" width="150px" class="tb2">Manager</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">11</td>
							<td colspan="6" width="300px" class="tb3">공지11</td>
							<td colspan="1" width="150px" class="tb2">Manager</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">10</td>
							<td colspan="6" width="300px" class="tb3">공지10</td>
							<td colspan="1" width="150px" class="tb2">Manager</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">9</td>
							<td colspan="6" width="300px" class="tb3">공지9</td>
							<td colspan="1" width="150px" class="tb2">Manager</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">8</td>
							<td colspan="6" width="300px" class="tb3">공지8</td>
							<td colspan="1" width="150px" class="tb2">Manager</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">7</td>
							<td colspan="6" width="300px" class="tb3">공지7</td>
							<td colspan="1" width="150px" class="tb2">Manager</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">6</td>
							<td colspan="6" width="300px" class="tb3">공지6</td>
							<td colspan="1" width="150px" class="tb2">Manager</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">5</td>
							<td colspan="6" width="300px" class="tb3">공지5</td>
							<td colspan="1" width="150px" class="tb2">Manager</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">4</td>
							<td colspan="6" width="300px" class="tb3">공지4</td>
							<td colspan="1" width="150px" class="tb2">Manager</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">3</td>
							<td colspan="6" width="300px" class="tb3">공지3</td>
							<td colspan="1" width="150px" class="tb2">Manager</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">2</td>
							<td colspan="6" width="300px" class="tb3">공지2</td>
							<td colspan="1" width="150px" class="tb2">Manager</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">1</td>
							<td colspan="6" width="300px" class="tb3">공지1</td>
							<td colspan="1" width="150px" class="tb2">Manager</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

					</table>
					<br>

					<div>
						<div style="display: inline-block">
							<button onclick="asd"><<</button>						
							<button onclick="asd"><</button>						
							<button onclick="num">1</button>						
							<button onclick="num2">2</button>					
							<button onclick="asd">></button>			
							<button onclick="asd">>></button>
						</div>
					</div>

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
	</script>
</body>
</html>