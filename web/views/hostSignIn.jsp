<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hostSignIn</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/header.css">
    <link rel="stylesheet" href="/semi/resources/css/footer.css">
    
    <!-- <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
     -->
     
    <link rel="stylesheet" href="/semi/resources/css/hostSignIn.css">
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
            <div id="newby-body-panel">
                <form id="hostJoinForm" class="hostJoinForm">
                    <div class="guideHostSentence">
                        <label style="margin-bottom: 3px;"><b>호스트 가입</b></label>
                        <br>
                        <hr style="margin-top: 10px;">
                        <br>
                    </div>
                    <div align="center">  
                 
                    <div class="hostRequired">
                        <input type="textarea" class="hostJoinInfoReason" id="hostClassReason" name="hostClassReason" value="" placeholder="   클래스 개설하려는 이유를 자세히 적어주세요">
                    </div>
                    <br><br><br><br>
                    <div class="hostRequired">
                        <input type="text" class="hostJoinInfo" id="hostBankName" name="hostBankName" value="" placeholder="은행명 입력">
                    </div> 
                    <div class="hostRequired">
                        <input type="text" class="hostJoinInfo" id="hostAccountName" name="hostAccountName" value="" placeholder="예금주명 입력">
                    </div>
                    <div class="hostRequired">
                        <input type="text" class="hostJoinInfo" id="hostBankNumber" name="hostBankNumber" value=""placeholder="계좌번호 입력">
                    </div>
                    <br><br>
                    <div class="announce" align="center">
	           			<input type="checkbox" id="agreeHost" name="agree">
	           			<label>이용약관, 개인정보 처리방침, 위치기반 서비스 이용약관에 동의합니다.</label>
	       			<br><br>
	       			</div>
                
                    <div align="center">
	       				<button onclick="buttonJoin();" id="buttonHostJoin" class="buttonJoin">가입하기</button>
	        		</div> 
                    </form>
            </div>
            <%@ include file="./common/footer.jsp" %> 
    </div>  
	</body>
</html>