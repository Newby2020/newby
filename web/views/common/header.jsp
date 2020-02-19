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
    <link rel="stylesheet" href="/semi/resources/css/signIn.css">
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
	        <a href="/semi/noticeSelectList.no">고객센터</a>
	    </label>
		<span class="divider1">|</span>

		<!-- <span class="divider1">|</span> -->
		
		<% if (m == null) {%>
	    <label id="login" class="top-nav">
	        <a>로그인 </a>
	    </label>
	    
		<span class="divider1">|</span>
		
	    <label id="signIn" class="top-nav">
	        <a href="/semi/views/signIn.jsp">회원가입</a>
	    </label>
	    <% }else if(m.getM_id().equals("admin@naver.com")){ %>
	    <label id="AdminPage" class="top-nav">
	        <a href="/semi/index.ad">관리자페이지</a>
	    </label>
	    
	    <span id="logoutBtn" onclick='logout()'>로그아웃</span> 
	    
	    <% }else if(m.getH_no() == null){ %>
	    <label id="toHost" class="top-nav">
	        <a href="/semi/views/hostSignIn.jsp">호스트신청</a>
	    </label>
		<span class="divider1">|</span>
		  <label id="myPage" class="top-nav">
	        <a href="/semi/profile.do">마이페이지</a>
	    </label>
	    
		<span class="divider1">|</span>
		
		<label id="login-userInfo">
	    	<%= m.getM_name()%>님 환영합니다
	    </label>
	    <span id="logoutBtn" onclick='logout()'>로그아웃</span>  
		
		<%}else{ %>
		  <label id="myPage" class="top-nav">
	        <a href="/semi/profile.do">마이페이지</a>
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
      
          <form id="mainLoginForm" action="/semi/login.me" onsubmit="return validate();" >
          
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
              	<input type="submit" id="buttonLogin" class="buttonLogin" value="로그인">
              </div> 
              <br>
              <div class="findIdAndPassword">
                  <a href="/semi/views/findIdnPwd.jsp" id="findIdAndPassword">아이디/비밀번호 찾기</a>
              </div>
          </form>
      </div>
  </div>
  <!-- 로그인 코드 종료 -->
  
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

 
    
    //로그아웃 버튼 클릭
    function logout(){
    	location.href='/semi/logout.me';
    	alert('로그아웃되었습니다');
    }
    
    function validate(){
    	var id = document.getElementById('mainLoginId');
    	var pwd = document.getElemnetById('mainLoginPassword');
    	
    	//아이디 미입력시
    	if((id.value) == ""){
    		alert("아이디를 입력해주세요");
    		id.focus();
    		return false;
    	}
    	
    	//비밀번호 미입력시
    	if((pwd.value) == ""){
    		alert("비밀번호를 입력해주세요");
    		pwd.focus();
    		return false;
    	}
    	
    }
  
    
    </script>
</body>
</html>