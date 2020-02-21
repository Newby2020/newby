<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.kh.newby.claim.model.vo.*, 
    		 java.util.*, 
    		 com.kh.newby.common.PageInfo"%>
<% 
 ArrayList<Claim> list = (ArrayList<Claim>)request.getAttribute("list");
 PageInfo pi = (PageInfo)request.getAttribute("pi");
 int currentPage = pi.getCurrentPage();
 int startPage = pi.getStartPage();
 int endPage = pi.getEndPage();
 int maxPage = pi.getMaxPage();
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
<link rel="stylesheet" href="../resources/css/admin_basic.css">

<!-- Table & SearchBar-->
<link rel="stylesheet" href="../resources/css/admin_table&searchBar.css">

<!-- The Modal & CheckBox-->
<link rel="stylesheet" href="../resources/css/admin_modal&checkBox.css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<!-- TODO 왜 파일 분리해서 불러오면 실행이 안되는가.... -->
<!-- Modal js -->
<script src="../resources/js/admin_hostReport_modal.js"></script>
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
				<a href="views/customer_report.jsp">신고</a> <a
					href="customer_refund.jsp">이용약관</a>
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
					<% if( m.getM_name().equals("관리자")){ %>
					<table>
						<tr>
							<th>신고일</th>
							<th>클래스명</th>
							<th>호스트명</th>
							<th>내용</th>
							<th>처리</th>
							<th>신고처리일</th>
							<th>정지 기간</th>
						</tr>
						<% for(Claim c : list){ %>
						<tr>
							<td id="<%= c.getCmNo()%>"><%= c.getCmDate() %></td>
							<td id="<%= c.getCmNo()%>"><%= c.getCmTitle() %></td>
							<td id="<%= c.getCmNo()%>"><%= c.getCmNo() %></td>
							<td id="<%= c.getCmNo()%>"><%= c.getCmContent() %></td>
							<td id="<%= c.getCmNo()%>"><%= c.getStatus() %></td>
							<td>
								<button id="cotentsBtn">조회</button>
							</td>
							<td>
								<button id="confirmBtn">확인</button>
								<button id="suspendBtn">계정정지</button>
							</td>
						</tr>
						<% } %>

					</table>

					<div class="pagingArea" align="center">
						<button
							onclick="location.href='<%= request.getContextPath() %>/claimList.ad?currentPage = 1'"><<</button>
						<% if(currentPage <= 1){ %>
						<button disabled><</button>
						<% }else { %>
						<button
							onclick="location.href='<%= request.getContextPath() %>/claimList.ad?currentPage= <%= currentPage-1 %>'"><</button>
						<% } %>

						<% for(int p = startPage; p <= endPage; p++) { 
      				if(p == currentPage) {
      		%>
						<button disabled><%= p %></button>
						<%		}else { %>
						<button
							onclick="location.href='<%= request.getContextPath() %>/claimList.ad?currentPage=<%= p %>'"><%= p %></button>
						<%		} %>
						<%	} %>

						<% 	if(currentPage >= maxPage){%>
						<button disabled>></button>
						<% }else { %>
						<button
							onclick="location.href='<%= request.getContextPath() %>/claimList.ad?currentPage=<%= currentPage + 1 %>'">></button>
						<% } %>
						<button
							onclick="location.href='<%= request.getContextPath() %>/claimList.ad?currentPage=<%= maxPage %>'">>></button>
					</div>
					<!-- The Modal for 조회-->
					<div id="contentsOfReport" class="modal">
						<!-- Modal content -->
						<div class="modal-content">
							<span id="close1" class="close">&times;</span> <input type="text"
								size="20">
							<%-- <%= c.getCmContent() %> --%>
						</div>
					</div>

					<!-- The Modal for 계정 정지-->
					<div id="suspend" class="modal">

						<!-- Modal content -->
						<div class="modal-content">
							<span id="close2" class="close">&times;</span>
							<h1 align="center">사용자 계정 정지</h1>
							<form action="#" method="POST" onsubmit="return confirm();">
								<div>
									<h3>정지 기간</h3>

									<label class="container">30일 <input type="radio"
										name="radio" checked="checked"> <span
										class="checkmark"></span>
									</label> <label class="container">60일 <input type="radio"
										name="radio"> <span class="checkmark"></span>
									</label> <label class="container">90일 <input type="radio"
										name="radio"> <span class="checkmark"></span>
									</label> <label class="container">영구정지 <input type="radio"
										name="radio"> <span class="checkmark"></span>
									</label>
									<h3>사유</h3>
									<textarea name="" id="textarea" cols="100%" rows="20"
										style="resize: none; position: relative;"></textarea>
									<br> <br>
									<button class="modalBtn">적용</button>
									<!-- button의 경우 default type="submit" 이다.-->
									<button type="reset" class="modalBtn"
										onclick="$('#suspend').css('display','none')">취소</button>
								</div>
							</form>
						</div>

						<% } else{ %>
						<h5>
							신고할 클래스 <input type="text" id="input1">
						</h5>
						<div id="claim" class="modal">
							<div class="modal-content">
								<span id="close1" class="close"></span>

							</div>
						</div>
						<button class="btn1" id="claim" onclick="btn1();">찾기</button>

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

						<% } %>
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
        btn1.onclick = function () {
            contents.style.display = "block";
        }
        btn2.onclick = function () {
            suspend.style.display = "block";
        }

        // When the user clicks on <span> (x), close the modal
        close1.onclick = function () {
            contents.style.display = "none";
        }
        close2.onclick = function () {
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