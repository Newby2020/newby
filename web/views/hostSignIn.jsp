<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
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
	   <form id="joinForm" class="joinForm">
	       <div class="guideHostSentence">
	           <label><b>ȣ��Ʈ ����</b></label style="margin-bottom: 3px;">
	           <br>
	           <hr style="margin-top: 10px;">
	           <br>
	       </div>
	       <div align="center"> 
	        <div class="hostRequired">
	            <select class="hostJoinInfo" name="hostClassCategory" id="hostClassCategory" style="height: 30px;">
	                <option value="ī�װ�">Ŭ���� ī�װ�</option>
	            </select>
	        </div>
	        <br>
	        <div class="hostRequired">
	            <input type="textarea" class="hostJoinInfoReason" id="hostClassReason" name="hostClassReason" value="" placeholder="   Ŭ���� �����Ϸ��� ������ �ڼ��� �����ּ���">
	        </div>
	        <br><br><br><br>
	        <div class="hostRequired">
	            <input type="text" class="hostJoinInfo" id="hostClassPlace" name="hostClassPlace" value="" placeholder="���� ������� �Է�">
	        </div>
	        <div class="hostRequired">
	            <input type="text" class="hostJoinInfo" id="hostClassPrice" name="hostClassPrice" value="" placeholder="���� ��� �Է�">
	        </div>
	        <div class="hostRequired">
	            <input type="text" class="hostJoinInfo" id="hostBankName" name="hostBankName" value="" placeholder="����� �Է�">
	        </div> 
	        <div class="hostRequired">
	            <input type="text" class="hostJoinInfo" id="hostAccountName" name="hostAccountName" value="" placeholder="�����ָ� �Է�">
	        </div>
	        <div class="hostRequired">
	            <input type="text" class="hostJoinInfo" id="hostBankNumber" name="hostBankNumber" value=""placeholder="���¹�ȣ �Է�">
	        </div>
	       </div>
	       </form>
	       <br><br>
	       <div class="announce" align="center">
	           <input type="checkbox" id="agree" name="agree">
	           <label>�̿���, �������� ó����ħ, ��ġ��� ���� �̿����� �����մϴ�.</label>
	       </div>
	       <br><br>
	   	
	   		<div align="center"></div>
	       		<button onclick="buttonJoin();" id="buttonJoin" class="buttonJoin">�����ϱ�</button>
	        </div>   
	</div>          
	</body>
</html>