<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Report</title>
<link rel="stylesheet" href="/semi/resources/css/joinModal.css">
<link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
<link rel="stylesheet" href="/semi/resources/css/main-atag.css">
<link rel="stylesheet" href="/semi/resources/css/main-footer.css">
<link rel="stylesheet" href="/semi/resources/css/main-headervar.css">
<link rel="stylesheet" href="/semi/resources/css/main-navibar.css">
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/h&j-frame.css">
<link rel="stylesheet" href="/semi/resources/css/Customer_btn.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Noto+Sans+KR&display=swap"
	rel="stylesheet">
<script src="./jquery/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div id="Allpanel" align="center">

		<div class="newby-header" id="newby-header-var">
			<img src="./resources/images/Logo(120x50px).png" alt="로고"
				width="120px" height="50px" id="newby-logo"
				style="margin-right: 500px;"> <label id="login"
				class="top-nav"> <a>로그인 |</a>
			</label> <label id="signIn" class="top-nav"> <a>회원가입 |</a>
			</label> <label id="toHost" class="top-nav"> <a href="hostJoin.jsp">호스트신청
					|</a>
			</label> <label id="customer" class="top-nav"> <a href="Notice.jsp">고객센터
					|</a>
			</label> <label id="myPage" class="top-nav"> <a href="Profile.jsp">마이페이지
					|</a>
			</label> <label id="AdminPage" class="top-nav"> <a
				href="./newbyAdmin/admin.jsp">관리자페이지 |</a>
			</label>
		</div>

		<!-- 작업하는 컨텐츠 -->
		<div id="newby-body-panel" class="contents-div123" align="left">

			<!--left sidebar-->
			<div class="sidenavsk">
				<div id="sidebar-titleso67" align="center">고객센터</div>
				<a href="Notice.jsp">공지사항</a>
				<button class="dropdown-btnqo">
					문의 <i id="ci22">≡</i>
				</button>
				<div class="dropdown-soxk">
					<a href="Inquiry.jsp">문의 목록</a> <a href="CreateInquiry.jsp">문의
						작성</a>
				</div>
				<a href="Report.jsp">신고</a> <a href="Refund.jsp">환불정책</a>
			</div>

			<!--contents-->
			<div id="mn16s" align="center">

				<br>
				<h2>신고</h2>
				<!-- 제목란이니깐 해당 제목 작성해서 하면 돼-->
				<br>
				<hr id="hrSet53">
				<br> <br>

				<div id="contentsDivSize29">
					<!-- 여기다가 너가 작업한거 넣으면 돼-->
						<h5>
							신고할 클래스 <input type="text" id="input1">
							<button class="btn1" onclick="btn1();">찾기</button>
						</h5>

						<br>

						<h5>
							신고이유 <select>
								<option>선택하세요.</option>
								<option>호스트가 준비를 안했습니다.</option>
								<option>호스트가 욕을 했습니다.</option>
								<option>호스트가 먹튀했습니다.</option>
								<option>호스트가 잠수탔습니다.</option>
								<option>기타</option>
							</select>
						</h5>

						<hr>

						<h5>
							신고 내용 <br>
							<br>
							<textarea rows="20" cols="80"
								style="resize: none; font-size: 15pt;"></textarea>
						</h5>

						<div>
							<input class="join2" type="submit" value="보내기"> <input
								class="join1" type="reset" value="취소">
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

        function btn1(){
            var width = screen.width;
            var height = screen.height;

            child = window.open(herf="Find.jsp","찾아보기","location=no,resizeable=no,width=500, height=300");
        }
    </script>

</body>
</html>