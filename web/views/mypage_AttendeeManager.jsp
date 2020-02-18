<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>AttendeeManager</title>
<link rel="stylesheet" href="/semi/resources/css/joinModal.css">
<link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
<link rel="stylesheet"
	href="/semi/resources/css/mypage_AttendeeManager.css">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
<script src="/semi/resources/jquery/jquery-3.4.1.min.js"></script>
<script src="../MainPage/js/mainPage.js"></script>
</head>

<body>
	<div id="Allpanel" align="center">

		<%@ include file="./common/header.jsp"%>

		<!-- 작업하는 컨텐츠 -->
		<div id="newby-body-panel" class="contents-div123" align="left">

			<!--left sidebar-->
			<%@ include file="./common/mypage_sidebar.jsp"%>

			<!--contents-->
			<div id="mn16s" align="center">
				<br>
				<h2>수강생 관리</h2>
				<hr id="hrSet53">
				<br> <br>
				<div id="contentsDivSize29">
					<div>
						<table>
							<tr align="center">
								<th style="width: 300px">클래스명</th>
								<th style="width: 200px">일정</th>
								<th style="width: 60px">인원수</th>
							</tr>
							<tr align="center">
                                <%-- <input class="hv1" type="hidden" value="<%=c.getPayNo() %>"> 	클래스 번호
                                <input class="hv2" type="hidden" value="<%=c.getPayNo() %>"> 		진행날짜
                                <input class="hv3" type="hidden" value="<%=c.getPayNo() %>"> 		진행시작시간
                                <input class="hv4" type="hidden" value="<%=c.getPayNo() %>"> 		진행마치는시간 --%>
								<td>길가다 쓰레기줍기</td>
								<td class="td19">
	                                <%-- <%=c.getClassDate() %>
	                                <span id="divider">|</span>
	                                <%=c.getClassStartTime() %>~<%=c.getClassEndTime() %>
	                                &nbsp;(<%=c.getClassTime() %>시간) --%>
                                </td>
								<td>15 /20</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>

		<script type="text/javascript" src="/semi/resources/js/mypage_AttendeeManager.js"></script>

		<%@ include file="./common/footer.jsp"%>

	</div>
</body>
</html>