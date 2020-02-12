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
                <form id="findForm1" class="findForm">
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
              				<input type="text" class="memberFind" id="securePhone" name="securePhone" maxlength=4 style="width: 60px;" placeholder="인증코드">
              				<button onclick="secureButtonFind();" id="secureButtonFind" class="secureButtonFind">인증</button>
          				</div>
                    	<br><br><br><br><br><br>
                    	<div id="blankFor" align="center">
	       					<button onclick="buttonFindId();" id="buttonFindId" class="buttonFind">이메일 아이디 찾기</button>
	       				</div>
	       				<br><br>
	        		</div> 
            	</form>
            </div>
            
            <div class="newby-body-panel2">
                <form id="findForm2" class="findForm">
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
                    	</div>
                    	<div class="infoRequired">
              				<input type="text" class="memberFind" id="phone" name="phone" value="" maxlength=100; placeholder="휴대폰 번호 입력">
              				<input type="text" class="memberFind" id="securePhone" name="securePhone" maxlength=4 style="width: 60px;" placeholder="인증코드">
              				<button onclick="secureButtonFind();" id="secureButtonFind" class="secureButtonFind">인증</button>
          				</div>
                    	<br><br><br><br><br><br>
                    	<div align="center">
	       					<button onclick="buttonFindPwd();" id="buttonFindPwd" class="buttonFind">비밀번호 찾기</button>
	       				</div>
	       				<br><br>
	        		</div>	
                    <br><br>
           		</form>
            </div>
            <%@ include file="./common/footer.jsp" %> 
    </div>  
	</body>
</html>