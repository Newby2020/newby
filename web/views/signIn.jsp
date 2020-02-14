<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignIn</title>
<link rel="stylesheet" href="/semi/resources/css/joinModal.css">
<link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/header.css">
<link rel="stylesheet" href="/semi/resources/css/footer.css">

<link rel="stylesheet" href="/semi/resources/css/signIn.css">
<script src="/semi/resources/js/jquery-3.4.1.min.js"></script>
<style>
html {
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
</head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<div id="Allpanel" align="center">
		<%@ include file="./common/header.jsp"%>
		<br>
		<br>
		<div id="signIn-panel">
			<form id="joinForm" action='/semi/insert.me' class="joinForm" onsubmit="validate();">
				<div class="guideSentence">
					<label style="margin-bottom: 3px;"><b>회원가입</b></label> <br>
					<hr style="margin-top: 10px;">
					<br>
				</div>
				<div align="center">
					<div id="requiredWrap">
						<div class="required">
							<input type="email" class="joinInfo" id="user_Id" name="user_Id"
								value="" maxlength=100; placeholder="이메일 주소 입력"> <input
								type="button" id="checkId" onsubmit="return false" value="중복 확인"></input>
						</div>
						<div class="required">
							<input type="text" class="joinInfo" id="user_Nickname"
								name="user_Nickname" value="" maxlength=100;
								placeholder="닉네임 입력"> <input type="button"
								id="checkNick" onsubmit="return false" value="중복 확인"></input>
						</div>
						<div class="required">
							<input type="password" class="joinInfo" id="password"
								name="password" value="" maxlength=100; placeholder="비밀번호 입력">
						</div>
						<div class="required">
							<input type="password" class="joinInfo" id="confirm_password"
								name="confirm_password" value="" maxlength=100;
								placeholder="비밀번호 확인">
						</div>
						<div class="required">
							<input type="text" class="joinInfo" id="user_name"
								name="user_name" value="" maxlength=100; placeholder="이름 입력">
						</div>
						<div class="required">
							<input type="text" class="joinInfo" id="phone" name="phone"
								value="" maxlength=100; placeholder="휴대폰 번호 입력"> <input
								type="text" class="joinInfo" id="securePhone" name="securePhone"
								maxlength=4 style="width: 60px;" placeholder="인증코드">
							<button onclick="secureButton();" id="secureButton"
								class="secureButton">인증</button>
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="announce" align="center">
					<input type="checkbox" id="agree" name="agree"> <label>이용약관,
						개인정보 처리방침, 위치기반 서비스 이용약관에 동의합니다.</label>
				</div>
				<div class="announce" align="center">
					<br>
					<br> <label>NewBy는 만 18세 이상 회원만 이용 가능합니다.</label> <br>
					<br>
				</div>
				<br>
				<br>
				<div align="center">
					<button onclick="buttonJoin();" id="buttonJoin" class="buttonJoin">가입하기</button>
				</div>
			</form>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<%@ include file="./common/footer.jsp"%>

	</div>

	<script>
		/*아이디 중복 체크*/
		$('#checkId').click(function() {
			$.ajax({
				url : "/semi/idDup.me",
				type : "post",
				data : {
					user_Id : $('#user_Id').val()
				},
				success : function(data) {
					console.log(data);
					if(data==""){
						alert("아이디를 입력해주세요");
					}else if (data == 'ok') {
						alert("사용 가능한 아이디입니다.");
					}else {
						alert("이미 사용중인 아이디입니다.");
						$('#user_Id').select();
					}
				},
				error : function() {
					console.log("---Error---");
				}

			});
		});

		/*닉네임 중복체크*/
		$('#checkNick').click(function() {
			$.ajax({
				url : "/semi/nickDup.me",
				type : "post",
				data : {
					user_Nickname : $('#user_Nickname').val()
				},
				success : function(data) {
					console.log(data);

					if (data == 'ok') {
						alert("사용 가능한 닉네임입니다.");
					} else {
						alert("이미 사용중인 닉네임입니다.");
						$('#user_Id').select();
					}
				},
				error : function() {
					console.log("---Error---");
				}

			});
		});
	</script>
</body>
</html>