<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.newby.Member.model.vo.*"%>

<%
	 Member m = (Member)session.getAttribute("Member");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>header</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/header.css">
    <script src="/semi/resources/js/mainPage.js"></script>
    <script src="/semi/resources/js/jquery-3.4.1.min.js"></script>
    
</head>
<body>
	<div class="newby-header" id="newby-header-var" style="margin-left: auto; margin-right: auto;">

	  <img src="/semi/resources/images/Logo(120x50px).png" alt="로고"  height="50px" id="newby-logo" onclick="newbyMain();" style="cursor: pointer;">  


	  <div id="header-navibar23" align="right">
	  
	  
	    <label id="customer" class="top-nav">
	        <a href="/semi/views/Customer_Notice.jsp">고객센터</a>
	    </label>
		<span class="divider1">|</span>

		<!-- <span class="divider1">|</span> -->
		
		<% if (m == null) {%>
	    <label id="login" class="top-nav">
	        <a>로그인 </a>
	    </label>
	    
		<span class="divider1">|</span>
		
	    <label id="signIn" class="top-nav">
	        <a>회원가입</a>
	    </label>
	    <% }else if(m.getM_id().equals("tomcho39@gmail.com")){ %>
	    <label id="AdminPage" class="top-nav">
	        <a href="/semi/views/admin_index.jsp">관리자페이지</a>
	    </label>
	    <span id="logoutBtn" onclick='logout()'>로그아웃</span> 
	    
	    <% }else if(m.getH_no() == null){ %>
	    <label id="toHost" class="top-nav">
	        <a href="/semi/views/hostSignIn.jsp">호스트신청</a>
	    </label>
		<span class="divider1">|</span>
		  <label id="myPage" class="top-nav">
	        <a href="/semi/views/mypage_Profile.jsp">마이페이지</a>
	    </label>
	    
		<span class="divider1">|</span>
		
		<label id="login-userInfo">
	    	<%= m.getM_name()%>님 환영합니다
	    </label>
	    <span id="logoutBtn" onclick='logout()'>로그아웃</span>  
		
		<%}else{ %>
		  <label id="myPage" class="top-nav">
	        <a href="/semi/views/mypage_Profile.jsp">마이페이지</a>
	    </label>
	    
		<span class="divider1">|</span>
		
	    <label id="login-userInfo">
	    	<%= m.getM_name()%>님 환영합니다
	    </label>
	    <span id="logoutBtn" onclick='logout()'>로그아웃</span> 
	    <%} %>
	    
	  </div>
	</div>
	
	
	   <!-- 로그인 코드 -->
  <div id="LoginModal" class="LoginModal">

    <div class="LoginModal_Content">
      <span class="loginClose">&times;</span>                                                               
      
          <form id="mainLoginForm" action="/semi/login.me" >
          
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
              <div align="center">
              	<button onclick="buttonLogin();" id="buttonLogin" class="buttonLogin">로그인</button>
              </div> 
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
  
  <form id="joinForm" action='/semi/insert.me' class="joinForm">
      <div class="guideSentence">
          <label style="line-height: 2em;"><b>회원가입</b></label>
          <hr>
          <br>
      </div> 
      <div id="requiredWrap">
          <div class="required">
              <input type="text" class="joinInfo" id="user_Id" name="user_Id" value="" maxlength=100; placeholder="이메일 주소 입력">
              <input type="button" id="checkId" onsubmit="return false" value="중복 확인"></input>
          </div> 
          <div class="required">
              <input type="text" class="joinInfo" id="user_Nickname" name="user_Nickname" value="" maxlength=100; placeholder="닉네임 입력">
              <input type="button" id="checkNick" onsubmit="return false" value="중복 확인"></input>
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
      </div>
      <br><br>
      <div class="announce" align="center">
          <input type="checkbox" id="agree" name="agree">
          <label>이용약관, 개인정보 처리방침, 위치기반 서비스 이용약관에 동의합니다.</label>
      </div>
      <div class="announce" align="center">
          <br><br>
          <label>NewBy는 만 18세 이상 회원만 이용 가능합니다.</label>
          <br><br>
      </div>

      <button onclick="buttonJoin();" id="buttonJoin" class="buttonJoin">가입하기</button> 
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

    //로그인 버튼 클릭 시 제출
     function buttonLogin(){
    	 $('#mainLoginForm').submit();
    	 alert('로그인성공');
     }
    
    //로그아웃 버튼 클릭
    function logout(){
    	location.href='/semi/logout.me';
    	alert('로그아웃되었습니다');
    }
    
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
      
      
      
      function buttonJoin(){
    	  $('#joinForm').submit();
    	  
      }
    /* 회원가입 스크립트 종료 */
    
    
    /*아이디 중복 체크*/
   	 $('#checkId').click(function(){
  		  $.ajax({
		       	url:"/semi/idDup.me",
				type:"post",
				data:{
					user_Id:$('#user_Id').val()
				},
				success:function(data){
					console.log(data);
					
					if(data == 'ok'){
						alert("사용 가능한 아이디입니다.");
					}else{
						alert("이미 사용중인 아이디입니다.");
						$('#user_Id').select();
					}
				},error:function(){
					console.log("---Error---");
				}
        
    		});
		});
    
    /*닉네임 중복체크*/
	 $('#checkNick').click(function(){
 		  $.ajax({
		       	url:"/semi/nickDup.me",
				type:"post",
				data:{
					user_Nickname:$('#user_Nickname').val()
				},
				success:function(data){
					console.log(data);
					
					if(data == 'ok'){
						alert("사용 가능한 닉네임입니다.");
					}else{
						alert("이미 사용중인 닉네임입니다.");
						$('#user_Id').select();
					}
				},error:function(){
					console.log("---Error---");
				}
       
   		});
		});
    
    </script>
</body>
</html>