<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				<a href="Customer_Notice.jsp">공지사항</a>
				<button class="dropdown-btnqo">
					문의 <i id="ci22">≡</i>
				</button>
				<div class="dropdown-soxk">
					<a href="/semi/selectList.bo?currentPage=1">문의 목록</a> <a
						href="Customer_CreateInquiry.jsp">문의 작성</a>
				</div>
				<a href="Customer_Report.jsp">신고</a> <a href="Customer_Refund.jsp">이용약관</a>
			</div>

			<!--contents-->
			<div id="mn16s" align="center">

				
				<!-- 제목란이니깐 해당 제목 작성해서 하면 돼-->
				<br>
				<h2>신고</h2>
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
						신고 내용 <br> <br>
						<textarea rows="20" cols="80"
							style="resize: none; font-size: 15pt;"></textarea>
					</h5>

					<div>
						<input class="join2" type="submit" value="보내기"> <input
							class="join1" type="reset" value="취소">
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

        function btn1(){
            var width = screen.width;
            var height = screen.height;

            child = window.open(herf="Find.jsp","찾아보기","location=no,resizeable=no,width=500, height=300");
        }
    </script>

</body>
</html>