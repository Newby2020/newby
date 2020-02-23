<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.kh.newby.claim.model.vo.*, java.util.*, com.kh.newby.common.PageInfo"%>
<%
	ArrayList<Claim> list = (ArrayList<Claim>) request.getAttribute("list");
	
	PageInfo pi = (PageInfo) request.getAttribute("pi");
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
 /* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 50%; /* Could be more or less, depending on screen size */                          
        }
        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

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
						<%
							if (m.getM_name().equals("관리자")) {
						%>
						<table>
							<tr>
								<th>신고일</th>
								<th>신고 번호</th>
								<th>신고자 번호</th>
								<th>신고 이유</th>
								<th>상태</th>
								<th>신고처리일</th>
								<th>정지 기간</th>
								<th>정지 시작일</th>
								<th>정지 만료일</th>
							</tr>
							<%
								for (Claim c : list) {
							%>
							<tr>
								<td id="<%=c.getCmNo()%>"><%=c.getCmDate()%></td>
								<td id="<%=c.getCmNo()%>"><%=c.getCmTitle()%></td>
								<td id="<%=c.getCmNo()%>"><%=c.getCmNo()%></td>
								<td id="<%=c.getCmNo()%>"><%=c.getCmContent()%></td>
								<td id="<%=c.getCmNo()%>"><%=c.getStatus()%></td>
								<td>
									<%
										if (c.getHandledDate() != null) {
									%> <%=c.getHandledDate()%> <% 	} else {
										%> <%='-'%> <% 	} %>
								</td>
								<td>
									<%
										if (c.getSuspensionPeriod() != 100000) { %> <%
											if (c.getSuspensionPeriod() == 0) { %> <%='-'%> <%
											} else { %> <%=c.getSuspensionPeriod()%> <%	}
										%> <%} else { %> <%="무기한"%> <%	} %>
								</td>
								<td>
									<%
										if (c.getSuspensionStartDate() != null) {
									%> <%=c.getSuspensionStartDate()%> <%
										} else {
									%> <%='-'%> <%	} %>
								</td>
								<td>
									<%
										if (c.getSuspensionEndDate() != null) {
									%> <%=c.getSuspensionEndDate()%> <%
										} else {
									%> <%='-'%> <% 	} %>
								</td>

							</tr>
							<%
								}
							%>
						</table>
						

						<div class="pagingArea" align="center">
							<button
								onclick="location.href='<%=request.getContextPath()%>/creportSelectList.ro?currentPage = 1'"><<</button>
							<%
								if (currentPage <= 1) {
							%>
							<button disabled><</button>
							<%
								} else {
							%>
							<button
								onclick="location.href='<%=request.getContextPath()%>/reportSelectList.ro?currentPage= <%=currentPage - 1%>'"><</button>
							<%
								}
							%>
							<%
								for (int p = startPage; p <= endPage; p++) {
										if (p == currentPage) {
							%>
							<button disabled><%=p%></button>
							<%
								} else {
							%>
							<button
								onclick="location.href='<%=request.getContextPath()%>/reportSelectList.ro?currentPage=<%=p%>'"><%=p%></button>
							<%
								}
							%>
							<%
								}
							%>

							<%
								if (currentPage >= maxPage) {
							%>
							<button disabled>></button>
							<%
								} else {
							%>
							<button
								onclick="location.href='<%=request.getContextPath()%>/reportSelectList.ro?currentPage=<%=currentPage + 1%>'">></button>
							<%
								}
							%>
							<button
								onclick="location.href='<%=request.getContextPath()%>/reportSelectList.ro?currentPage=<%=maxPage%>'">>></button>
						</div>
						<!-- The Modal for 조회-->
						<div id="contentsOfReport" class="modal">
							<!-- Modal content -->
							<%-- <div class="modal-content">
								<span id="close1" class="close">&times;</span> <input
									type="text" size="20">
								<%= c.getCmContent() %>
							</div> --%>
						</div>

						<!-- The Modal for 계정 정지-->
						<div id="suspend" class="modal">

							<!-- Modal content -->
							<!-- <div class="modal-content">
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
									button의 경우 default type="submit" 이다.
									<button type="reset" class="modalBtn"
										onclick="$('#suspend').css('display','none')">취소</button>
								</div>
							</form>
						</div> -->

							<%
								} else {
							%>
							<% Claim c = (Claim) request.getAttribute("claim"); %>
							<h5>
								신고할 클래스 <input type="text" id="input1">
							</h5>
							<div id="claim" class="modal">
								<div class="modal-content">
									<span id="close1" class="close"></span>

								</div>
							</div>
							<button class="btn1" id="myBtn" onclick="btn1();">찾기</button>
							<div id="myModal" class="modal">
								<!-- Modal content -->
								<div class="modal-content">
									<span class="close">&times;</span>                                                               
        							<p>Some text in the Modal..</p>
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
								신고이유 <input type="text" id="claimEu">
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
							<%@ include file="./common/footer.jsp"%>
							<%
								}
							%>
						</div>

					</div>
				</div>

			</div>
		</div>
		<% if (m.getM_name().equals("관리자")) { %>
		<%@ include file="./common/footer.jsp"%>
		<% } %>
		<script>
		$(function(){
			
			$("#listArea td").mouseenter(function(){
				$(this).parent().css({"cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent();
			}).click(function(e){
				var nno = e.target.id;
				location.href="<%=request.getContextPath()%>/reportSelectOne.no?nno="+ nno;
				});
			});
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