<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inquiry</title>
<link rel="stylesheet" href="/semi/resources/css/joinModal.css">
<link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
<link rel="stylesheet" href="/semi/resources/css/main-atag.css">
<link rel="stylesheet" href="/semi/resources/css/main-footer.css">
<link rel="stylesheet" href="/semi/resources/css/main-headervar.css">
<link rel="stylesheet" href="/semi/resources/css/main-navibar.css">
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
<link rel="stylesheet" href="/semi/resources/css/Customer_table.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Noto+Sans+KR&display=swap"
	rel="stylesheet">
<script src="semi/jquery/jquery-3.4.1.min.js"></script>
</head>
<body>

	<div id="Allpanel" align="center">

		<div class="newby-header" id="newby-header-var">
			<img src="/semi/resources/images/Logo(120x50px).png" alt="로고"
				width="120px" height="50px" id="newby-logo"
				style="margin-right: 500px;"> <label id="login"
				class="top-nav"> <a>로그인 |</a>
			</label> <label id="signIn" class="top-nav"> <a>회원가입 |</a>
			</label> <label id="toHost" class="top-nav"> <a href="hostJoin.jsp">호스트신청
					|</a>
			</label> <label id="customer" class="top-nav"> <a href="Customer_Notice.jsp">고객센터
					|</a>
			</label> <label id="myPage" class="top-nav"> <a href="Profile.jsp">마이페이지
					|</a>
			</label> <label id="AdminPage" class="top-nav"> <a
				href="/semi/newbyAdmin/admin.jsp">관리자페이지 |</a>
			</label>
		</div>


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
					<a href="Customer_Inquiry.jsp">문의 목록</a> <a href="Customer_CreateInquiry.jsp">문의
						작성</a>
				</div>
				<a href="Customer_Report.jsp">신고</a> <a href="Customer_Refund.jsp">이용약관</a>
			</div>

			<!--contents-->
			<div id="mn16s" align="center">

				<br>
				<h2>문의 목록</h2>
				<!-- 제목란이니깐 해당 제목 작성해서 하면 돼-->
				<br>
				<hr id="hrSet53">
				<br> <br>

				<div id="contentsDivSize29">
					<!-- 여기다가 너가 작업한거 넣으면 돼-->
					<hr>

					<table>
						<tr>
							<th colspan="1" class="tab1">번호</th>
							<th colspan="6" class="tab1">제목</th>
							<th colspan="1" class="tab1">작성자</th>
							<th colspan="1" class="tab1">작성일</th>
							<th colspan="1" class="tab1">조회수</th>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">15</td>
							<td colspan="6" width="300px" class="tb3">문의15</td>
							<td colspan="1" width="150px" class="tb2">user15</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>
						<tr>
							<td colspan="1" width="100px" class="tb2">14</td>
							<td colspan="6" width="300px" class="tb3">문의14</td>
							<td colspan="1" width="150px" class="tb2">user14</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">13</td>
							<td colspan="6" width="300px" class="tb3">문의13</td>
							<td colspan="1" width="150px" class="tb2">user13</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">12</td>
							<td colspan="6" width="300px" class="tb3">문의12</td>
							<td colspan="1" width="150px" class="tb2">user12</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">11</td>
							<td colspan="6" width="300px" class="tb3">문의11</td>
							<td colspan="1" width="150px" class="tb2">user11</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">10</td>
							<td colspan="6" width="300px" class="tb3">문의10</td>
							<td colspan="1" width="150px" class="tb2">user10</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">9</td>
							<td colspan="6" width="300px" class="tb3">문의9</td>
							<td colspan="1" width="150px" class="tb2">user9</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">8</td>
							<td colspan="6" width="300px" class="tb3">문의8</td>
							<td colspan="1" width="150px" class="tb2">user8</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">7</td>
							<td colspan="6" width="300px" class="tb3">문의7</td>
							<td colspan="1" width="150px" class="tb2">user7</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">6</td>
							<td colspan="6" width="300px" class="tb3">문의6</td>
							<td colspan="1" width="150px" class="tb2">user6</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">5</td>
							<td colspan="6" width="300px" class="tb3">문의5</td>
							<td colspan="1" width="150px" class="tb2">user5</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">4</td>
							<td colspan="6" width="300px" class="tb3">문의4</td>
							<td colspan="1" width="150px" class="tb2">user4</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">3</td>
							<td colspan="6" width="300px" class="tb3">문의3</td>
							<td colspan="1" width="150px" class="tb2">user3</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">2</td>
							<td colspan="6" width="300px" class="tb3">문의2</td>
							<td colspan="1" width="150px" class="tb2">user2</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>

						<tr>
							<td colspan="1" width="100px" class="tb2">1</td>
							<td colspan="6" width="300px" class="tb3">문의1</td>
							<td colspan="1" width="150px" class="tb2">user1</td>
							<td colspan="1" width="150px" class="tb2">2020-01-14</td>
							<td colspan="1" width="150px" class="tb2">0</td>
						</tr>
					</table>
					<br>

					<div>
						<div style="display: inline-block">
							<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#"
									style="color: #0981F1;">Previous</a></li>
								<li class="page-item"><a class="page-link" href="#"
									style="color: #0981F1;">1</a></li>
								<li class="page-item"><a class="page-link" href="#"
									style="color: #0981F1;">2</a></li>
								<li class="page-item"><a class="page-link" href="#"
									style="color: #0981F1;">3</a></li>
								<li class="page-item"><a class="page-link" href="#"
									style="color: #0981F1;">Next</a></li>
							</ul>
						</div>
					</div>

				</div>

			</div>
			<div id="newby-footer">
				<p id="newby-copyright">Copyright &copy; Your Website 2020</p>
			</div>
		</div>
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