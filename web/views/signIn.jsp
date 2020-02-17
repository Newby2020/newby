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
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

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
			<form id="joinForm" action='<!-- /semi/insert.me -->' class="joinForm" onsubmit="return validate();">
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
								name="confirm_password" onkeyup="pwdCheck();" maxlength=100;
								placeholder="비밀번호 확인">
								<span id="checkpwd" style="color:red; font-weight:bold; font-size: small;"></span>
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
							<span onclick="secureButton();" id="secureButton"
								class="secureButton" onsubmit="return false" style="background-color: lightgray; font-size: small">인증</span>
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
					<!-- <button onclick="buttonJoin();" id="buttonJoin" class="buttonJoin">가입하기</button> -->
					<input type="submit" id="buttonJoin" class="buttonJoin" value="가입하기">
					
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
		
		
		function pwdCheck(){
			var pwd1 = $('#password').val();
			var pwd2 = $('#confirm_password').val();
			
			if(pwd1 != pwd2){
				$('#checkpwd').html("비밀번호 불일치");
			}else{
				$('#checkpwd').html("비밀번호 일치");
			}
		}
		
		
		function chk(re, ele, msg){
            if(!re.test(ele.value)){ 
                alert(msg);
                ele.select();
                console.log("체크함수 작동시작");
                return false;
            }
            return true;
        }
		
		
		
		function validate(){
			//아이디-닉네임-비번-이름-휴대폰-약관체크
			console.log("유효성체크 시작");
			var id = document.getElementById("user_Id");
			var nick = document.getElementById("user_Nickname");
			var pwd = document.getElementById("password");
			var pwd2 = document.getElementById("confirm_password");
			var phone = document.getElementById("phone");
			var name = document.getElementById("user_name");
			var agree= document.getElementById("agree");
			
			
			//아이디 미입력
			if ((id.value) == ""){
                alert("아이디를 입력하지 않았습니다.");
                id.focus();
                return false;
            }
			
			//이메일 형식
			if(!chk(/^[\w]{4,}@[\w]+(\.[\w]+){1,2}$/, id, "아이디(이메일) 형식에 어긋납니다.")){
           		 return false;
      	    }
			
			// 닉네임 미입력시 알림               
            if ((nick.value) == ""){
               alert("닉네임을 입력하지 않았습니다.");
               nick.focus();
               return false;
           } 
			
			
			
           // 비밀번호 미입력시 알림
           if ((pwd.value) == "" || (pwd2.value)==""){
                alert("비밀번호를 입력하지 않았습니다.");
                pwd.focus();
                return false;
            }
           
           if(pwd.value != pwd2.value){
        	   alert("비밀번호가 일치하지 않습니다.");
        	   pwd.focus();
        	   return false;
           }
           
           
           //비밀번호 영어,숫자 포함 6~20자
           if(!chk(/^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/),pwd,"비밀번호는 영문,숫자 포함 6~20자리로 입력해주세요"){
        	   return false;
           }

        
           
			
			 // 이름 미입력시 알림               
            if ((name.value) == ""){
               alert("이름을 입력하지 않았습니다.");
               name.focus();
               return false;
           }   
			//이름 유효성체크
			if(!chk(/^[가-힣]{2,}/, name, "이름은 한글로 2글자 이상을 넣으세요~")){
                 return false;
             }
			 
			//약관 체크
			if(agree.checked == false){
				alert("약관에 동의해주세요");
				return false;
			}
			
			
			
		}
		</script>
		
		
		
		
		<script type="text/javascript">
		//본인인증 api 스크립트
		
		function secureButton(){
		//var IMP = window.IMP; // 생략해도 괜찮습니다.
		IMP.init("imp77723554"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.
		
		IMP.certification({ // param
		    merchant_uid: "NEWBY_"
		}, function (rsp) { // callback
			if(rsp.success){
				alert("성공");
			}else{
				alert("실패");
			}
		   /*  if (rsp.success) {
		      //인증 성공 시
		      console.log(rsp.imp_uid);
		      console.log(rsp.merchant_uid);
		      
		      $.ajax({
		    	  type : 'POST',
		    	  url : '/certifications/confirm',
	                dataType : 'json',
	                data : {
	                    imp_uid : rsp.imp_uid
	                }
		      }).done(function(){
		    	  takeResponseAndHandle(rsp)
		      }); */
		      
		  /*   } else {
		      // 인증 실패 시 로직,
		      var msg = '인증에 실패하였습니다';
		      
		      msg += '에러내용 : ' + rsp.error_msg;
		      
		      alert(msg);
		    } */
		  });
		
		 function takeResponseAndHandle(rsp) {
		    if ( rsp.success ) {
		        // 인증성공
		        console.log(rsp.imp_uid);
		        console.log(rsp.merchant_uid);
		    } else {
		         // 인증취소 또는 인증실패
		        var msg = '인증에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;

		        alert(msg);
		    }
		 }
		}
		</script>
	
</body>
</html>