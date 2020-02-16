<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Review</title>
<link rel="stylesheet" href="/semi/resources/css/joinModal.css">
<link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
<link rel="stylesheet"
	href="/semi/resources/css/mypage_WritingReview1.css">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap"
	rel="stylesheet">
<script src="/semi/resources/jquery/jquery-3.4.1.min.js"></script>
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
				<h2>후기 작성</h2>
				<hr id="hrSet53">
				<br> <br>
				<div id="contentsDivSize29">
					<div>
						<table>
							<tr align="center">
								<th style="width: 150px">날짜</th>
								<th style="width: 300px">클래스명</th>
								<th style="width: 150px">후기</th>
							</tr>
							<tr align="center">
								<td>2020-01-02</td>
								<td>길가다 쓰레기줍기</td>
								<td><input type="button" class="reviewBtn" value="작성"
									onclick="reviewOpen();"></td>
							</tr>
							<tr align="center">
								<td>2020-01-02</td>
								<td>길가다 쓰레기줍기</td>
								<td><input type="button" class="reviewBtn" value="작성"
									onclick="reviewOpen();"></td>
							</tr>
						</table>
						<!-- 페이징 넣어야할 부분 -->
						<div></div>
					</div>
				</div>
			</div>
		</div>

		<script type="text/javascript"
			src="/semi/resources/js/mypage_WritingReview1.js"></script>

		<%@ include file="./common/footer.jsp"%>

	</div>
</body>
</html>