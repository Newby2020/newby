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
    
    <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
    
    <link rel="stylesheet" href="/semi/resources/css/hostSignIn.css">
    <style>
        html{
            font-family: 'Noto Sans KR', sans-serif;
        }
    </style>
</head>
<body>
	<div>
		<%@ include file="./common/header.jsp" %>
	   <form id="joinForm" class="joinForm">
	       <div class="guideHostSentence">
	           <label><b>호스트 가입</b></label style="margin-bottom: 3px;">
	           <br>
	           <hr style="margin-top: 10px;">
	           <br>
	       </div>
	       <div align="center"> 
	        <div class="hostRequired">
	            <select class="hostJoinInfo" name="hostClassCategory" id="hostClassCategory" style="height: 30px;">
	                <option value="카테고리">클래스 카테고리</option>
	            </select>
	        </div>
	        <br>
	        <div class="hostRequired">
	            <input type="textarea" class="hostJoinInfoReason" id="hostClassReason" name="hostClassReason" value="" placeholder="   클래스 개설하려는 이유를 자세히 적어주세요">
	        </div>
	        <br><br><br><br>
	        <div class="hostRequired">
	            <input type="text" class="hostJoinInfo" id="hostClassPlace" name="hostClassPlace" value="" placeholder="예상 수업장소 입력">
	        </div>
	        <div class="hostRequired">
	            <input type="text" class="hostJoinInfo" id="hostClassPrice" name="hostClassPrice" value="" placeholder="예상 비용 입력">
	        </div>
	        <div class="hostRequired">
	            <input type="text" class="hostJoinInfo" id="hostBankName" name="hostBankName" value="" placeholder="은행명 입력">
	        </div> 
	        <div class="hostRequired">
	            <input type="text" class="hostJoinInfo" id="hostAccountName" name="hostAccountName" value="" placeholder="예금주명 입력">
	        </div>
	        <div class="hostRequired">
	            <input type="text" class="hostJoinInfo" id="hostBankNumber" name="hostBankNumber" value=""placeholder="계좌번호 입력">
	        </div>
	       </div>
	       </form>
	       <br><br>
	       <div class="announce" align="center">
	           <input type="checkbox" id="agree" name="agree">
	           <label>이용약관, 개인정보 처리방침, 위치기반 서비스 이용약관에 동의합니다.</label>
	       <br><br>
	   		<div align="center"></div>
	       		<button onclick="buttonJoin();" id="buttonJoin" class="buttonJoin">가입하기</button>
	        </div>  
	       </div>
	        <%@ include file="./common/footer.jsp" %> 
	   	
          
	</body>
</html>