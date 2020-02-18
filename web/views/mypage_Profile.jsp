<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.kh.newby.Member.model.vo.*, java.util.*"%>
<%
	Member3 m3 = (Member3)request.getAttribute("member3");
	String mno = m3.getM_no();
	String nick = m3.getM_nick();
	String id = m3.getM_id();
	String name = m3.getM_name();
	String pwd = m3.getM_pwd();
	String t1 = m3.getTel1();
	String t2 = m3.getTel2();
	String t3 = m3.getTel3();

%>
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

        <%@include file="./common/header.jsp" %>

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
				<div style="margin-left: 120px;">
					<form>
						<table align="center">
							<tr>
								<td class="tline1">닉네임</td>
								<td class="tline2">
									<input id="mno" type="hidden" value="<%=mno %>">
									<input id="exNick" type="hidden" value="<%=nick %>">
									<input id="nick" name="nick" class="input13" placeholder="입력" value="<%=nick%>">&nbsp;&nbsp;&nbsp;&nbsp;
									<input id="nickBtn" class="modibtn1cw" type="button" value="수정하기">
								</td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<td class="tline1">아이디</td>
								<td class="tline2">
									<div name="id" class="modiX14" disabled><%=id %></div>
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
									<div class="modiX14" disabled><%=name %></div>
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

								<td class="tline2"><a id="pwdbtn1cke" onclick="pwdScreen();">비밀번호 수정</a>
									<div id="pwdbtn2cke" style="display: none;">
										<p>
											<span class="pwd1ds">기존의 비밀번호</span>&nbsp;&nbsp;
											<input name="exPwd"class="pwd1ds" type="password">
										</p>
										<p>
											<span class="pwd1ds">새로운 비밀번호</span>&nbsp;&nbsp;
											<input id="newPwd" name="newPwd" class="pwd1ds" type="password">
										</p>
										<p>
											<span class="pwd1ds">비밀번호 재확인</span>&nbsp;&nbsp;
											<input id="newPwd2" name="newPwd2" class="pwd1ds" type="password">&nbsp;&nbsp;
											<input align="right" id="pwdchdoeoc" class="modibtn1cw" type="button" value="수정하기">
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
										<input id="exTel1" type="hidden" value="<%=t1 %>">
										<input id="exTel2" type="hidden" value="<%=t2 %>">
										<input id="exTel3" type="hidden" value="<%=t3 %>">
										<input id="tel1" name="phone" maxlength="3" placeholder="입력" value="<%=t1%>">&nbsp;-&nbsp;
										<input id="tel2" name="phone" maxlength="4" placeholder="입력" value="<%=t2%>">&nbsp;-&nbsp;
										<input id="tel3" name="phone" maxlength="4" placeholder="입력" value="<%=t3%>">&nbsp;&nbsp;&nbsp;&nbsp;
										<input id="telBtn" class="modibtn1cw" type="button" value="수정하기">
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