<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Profile</title>
<link rel="stylesheet" href="/semi/resources/css/joinModal.css">
<link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
<link rel="stylesheet" href="/semi/resources/css/mypage_Profile.css">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap"
	rel="stylesheet">
<script src="/semi/views/resources/jquery/jquery-3.4.1.min.js"></script>
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
				<h2>프로필</h2>
				<hr id="hrSet53">
				<br><br><br>
				<div>
					<form>
						<table align="center">
							<tr>
								<td class="tline1">닉네임</td>
								<td class="tline2">
									<input class="input13" name="name" placeholder="입력" value="ㅇㅁㄴㅇ">&nbsp;&nbsp;&nbsp;&nbsp;
									<input class="modibtn1cw" type="button" value="수정하기">
								</td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td class="tline1">이름</td>
								<td class="tline2">
									<div class="modiX14" disabled>남지훈</div>
								</td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td class="tline1">비밀번호</td>

								<td colspan="2"><a id="pwdbtn1cke" onclick="pwdScreen();">비밀번호 수정</a>
									<div id="pwdbtn2cke" style="display: none;">
										<p>
											<span class="pwd1ds">기존의 비밀번호</span>&nbsp;&nbsp;
											<input class="pwd1ds" type="password">
										</p>
										<p>
											<span class="pwd1ds">새로운 비밀번호</span>&nbsp;&nbsp;
											<input class="pwd1ds" type="password">
										</p>
										<p>
											<span class="pwd1ds">비밀번호 재확인</span>&nbsp;&nbsp;
											<input class="pwd1ds" type="password">&nbsp;
											<input id="pwdchdoeoc" class="modibtn1cw" type="button" value="수정하기">
										</p>
									</div>
								</td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<div style="flex;">
									<td class="tline1">휴대폰 번호</td>
									<td class="tline2">
										<input id="tel1" name="phone" placeholder="입력" value="010">&nbsp;-&nbsp;
										<input id="tel2" name="phone" placeholder="입력" value="8838">&nbsp;-&nbsp;
										<input id="tel3" name="phone" placeholder="입력" value="6688">&nbsp;&nbsp;&nbsp;&nbsp;
										<input class="modibtn1cw" type="button" value="수정하기">
									</td>								
								</div>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>

		<script type="text/javascript"
			src="/semi/resources/js/mypage_Profile.js"></script>
		<br>
		<%@ include file="./common/footer.jsp"%>

	</div>
</body>
</html>