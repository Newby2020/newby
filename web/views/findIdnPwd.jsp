<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findIdnPwd</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/findIdnPwd.css">
    <link rel="stylesheet" href="/semi/resources/css/header.css">
    <link rel="stylesheet" href="/semi/resources/css/footer.css">
    <style>
        html{
            font-family: 'Noto Sans KR', sans-serif;
        }
    </style>
</head>
<body>
	<div id="Allpanel" align="center">
		<%@ include file="./common/header.jsp" %>
		<br><br>
            <div class="newby-body-panel2">
                <form action="/semi/findId.me" id="findForm1" class="findForm" onsubmit="return validate();">
                    <div id="findIdSentence">
                        <label style="margin-bottom: 3px;"><b>아이디 찾기</b></label>
                        <br>
                        <hr style="margin-top: 10px;">
                        <br>
                    </div>
                    <div>  
                    	<div class="infoRequired">
                        	<input type="text" class="memberFind" id="memberFindName" name="memberFindName" value="" placeholder="이름 입력">
                    	</div>
                    	<div class="infoRequired">
              				<input type="text" class="memberFind" id="phone" name="phone" value="" maxlength=100; placeholder="휴대폰 번호 입력">
              				
          				</div>
                    	<br><br><br><br><br><br>
                    	<div id="blankFor" align="center">
	       					<input type="submit" id="buttonFindId" class="buttonFind" value="이메일 아이디 찾기">
	       				</div>
	       				<br><br>
	        		</div> 
            	</form>
            </div>
            
            <div class="newby-body-panel2">
                <form action="/semi/findPwd.me" id="findForm2" class="findForm" onsubmit="return validate2();">
                    <div id="findPwdSentence">
                        <label style="margin-bottom: 3px;"><b>비밀번호 찾기</b></label>
                        <br>
                        <hr style="margin-top: 10px;">
                        <br>
                    </div>
                    <div>  
                    	<div class="infoRequired" style="margin-bottom: 2px;">
                        	<input type="text" id="memberFindName" class="memberFind" name="memberFindName" value="" placeholder="이름 입력">
                    	</div>
                    	<div class="infoRequired">
                        	<input type="text" id="memberFindEmail" class="memberFind" name="memberFindEmail" value="" placeholder="이메일 아이디 입력">
                        	<span id="sendCode" name="sendCode">인증메일 보내기</span>
                        	
                    	</div>
                    	<div class="infoRequired">
              				<input type="text" class="memberFind" id="phone" name="phone" value="" maxlength=100; placeholder="인증 번호 입력">	
              					<span id="confirmCode" name="confirmCode">확인</span>
          				</div>
                    	
                    	<br><br><br><br><br><br>
                    	<div align="center">
	       					<input type="submit" id="buttonFindPwd" class="buttonFind" value="비밀번호 찾기">
	       				</div>
	       				<br><br>
	        		</div>	
                    <br><br>
           		</form>
            </div>
            <%@ include file="./common/footer.jsp" %> 
    </div>  
	</body>
	
	<script>
		function validate(){
			
			var name = document.getElementById("memberFindName");
			var phone = document.getElementById("phone");
			
			if((name.value)=="" || (phone.value)==""){
				alert("정보를 정확히 입력해주세요");
				return false;
			}
			
			
		}
	
	
	</script>
</html>