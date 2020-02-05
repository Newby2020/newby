<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>header</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    
</head>
<body>
	<div class="newby-header" id="newby-header-var">

	  <img src="/semi/resources/images/Logo(120x50px).png" alt="로고"  height="50px" id="newby-logo" onclick="newbyMain();">  


	  <div id="header-navibar23" align="right">
	    <label id="login" class="top-nav">
	        <a>로그인 </a>
	    </label>
		<span class="divider1">|</span>
	    <label id="signIn" class="top-nav">
	        <a>회원가입</a>
	    </label>
		<span class="divider1">|</span>
	    <label id="toHost" class="top-nav">
	        <a href="Host_SignIn.html">호스트신청</a>
	    </label>
		<span class="divider1">|</span>
	    <label id="customer" class="top-nav">
	        <a href="Notice.html">고객센터</a>
	    </label>
		<span class="divider1">|</span>
	    <label id="myPage" class="top-nav">
	        <a href="./MyPage/Profile.html">마이페이지</a>
	    </label>
		<span class="divider1">|</span>
	    <label id="AdminPage" class="top-nav">
	        <a href="./newbyAdmin/admin.html">관리자페이지</a>
	    </label>
	  </div>
	</div>
	
	
	   <!-- 로그인 코드 -->
  <div id="LoginModal" class="LoginModal">

    <div class="LoginModal_Content">
      <span class="loginClose">&times;</span>                                                               
      
          <form id="mainLoginForm">
              <div class="guideSentence">
                  <label style="line-height: 2em;"><b>&nbsp;&nbsp;&nbsp;로그인</b></label><br>
                  <hr style="width: 310px;"> 
                  <br>
              </div>
              <div class="mainLoginWrap">
                  <div class="mainLogin">
                      <input type="text" class="mainLoginText" id="mainLoginId" name="mainLoginId" value="" maxlength=100; placeholder="아이디 입력">
                  </div>
                  <br><br>
                  <div class="mainLogin">
                      <input type="password" class="mainLoginText" id="mainLoginPassword" name="mainLoginPassword" value="" maxlength=100; placeholder="비밀번호 입력">
                  </div>
              </div>
              <br><br><br>
              <center><button onclick="buttonLogin();" id="buttonLogin" class="buttonLogin">로그인</button></center> 
              <br>
              <div class="findIdAndPassword">
                  <a href="" id="findIdAndPassword">아이디/비밀번호 찾기</a>
              </div>
          </form>
      </div>
  </div>
  <!-- 로그인 코드 종료 -->
  
  
   <!-- 회원가입 코드 -->
  <div id="joinModal" class="joinModal">

  <div class="joinModalContent">
  <span class="joinClose">&times;</span>                                                               
  
  <form id="joinForm" class="joinForm">
      <div class="guideSentence">
          <label style="line-height: 2em;"><b>회원가입</b></label>
          <hr>
          <br>
      </div> 
      <div id="requiredWrap">
          <div class="required">
              <input type="text" class="joinInfo" name="user_login" value="" maxlength=100; placeholder="아이디 입력">
              <button onclick="checkId" id="checkId">중복 확인</button>
          </div> 
          <div class="required">
              <input type="password" class="joinInfo" id="password" name="password" value="" maxlength=100; placeholder="비밀번호 입력">
          </div>
          <div class="required">
              <input type="password" class="joinInfo" id="confirm_password" name="confirm_password" value="" maxlength=100; placeholder="비밀번호 확인">
          </div>
          <div class="required">
              <input type="text" class="joinInfo" id="user_name" name="user_name" value="" maxlength=100; placeholder="이름 입력">
          </div>
          <div class="required">
              <input type="text" class="joinInfo" id="phone" name="phone" value="" maxlength=100; placeholder="휴대폰 번호 입력">
              <input type="text" class="joinInfo" id="securePhone" name="securePhone" maxlength=4 style="width: 60px;" placeholder="인증코드">
              <button onclick="secureButton();" id="secureButton" class="secureButton">인증</button>
          </div>
          <div class="required">
              <input type="text" class="joinInfo" id="user_email" name="user_email" value="" maxlength=100; placeholder="이메일 입력">
          </div>
      </div>
      <br><br>
      <div class="announce">
          <center><input type="checkbox" id="agree" name="agree">
          <label>이용약관, 개인정보 처리방침, 위치기반 서비스 이용약관에 동의합니다.</label></center>
      </div>
      <div class="announce">
          <br><br>
          <center><label>NewBy는 만 18세 이상 회원만 이용 가능합니다.</label></center>
          <br><br>
      </div>

      <center><button onclick="buttonJoin();" id="buttonJoin" class="buttonJoin">가입하기</button></center> 
    </form>
    </div>
</div>
  <!-- 회원가입 코드 종료 -->
  
  <script>
    /* 로그인 스크립트 */
    var Loginmodal = document.getElementById('LoginModal');

    var login = document.getElementById("login");

    var span = document.getElementsByClassName("loginClose")[0];                                          

        login.onclick = function() {
          LoginModal.style.display = "block";
        }

        span.onclick = function() {
          LoginModal.style.display = "none";
        }
    /* 로그인 스크립트 종료 */

    /* 회원가입 스크립트 */
      var joinModal = document.getElementById('joinModal');

      var signIn = document.getElementById("signIn");

      var joinSpan = document.getElementsByClassName("joinClose")[0];                                          

      signIn.onclick = function() {
          joinModal.style.display = "block";
      }

      joinSpan.onclick = function() {
          joinModal.style.display = "none";
      }
    /* 회원가입 스크립트 종료 */
    </script>
</body>
</html>