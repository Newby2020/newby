<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새로운 취미를 찾아서 NEWBY</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/header.css">
    <link rel="stylesheet" href="/semi/resources/css/footer.css">
     
    <link rel="stylesheet" href="/semi/resources/css/hostSignIn.css">
    <script src="/semi/resources/js/jquery-3.4.1.min.js"></script>
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
                <form id="hostJoinForm" class="hostJoinForm" action="/semi/insert.ho" onsubmit="return validate();">
                    <div class="guideHostSentence">
                        <label style="margin-bottom: 3px;"><b>호스트 가입</b></label>
                        <br>
                        <hr style="margin-top: 10px;">
                        <br>
                    </div>
                    <div align="center">  
                 
                    <div class="hostRequired">
                        <input type="textarea" class="hostJoinInfoReason" id="hostClassReason" name="hostIntro" value="" placeholder="   클래스 개설하려는 이유를 자세히 적어주세요">
                    </div>
                    <br><br><br><br>
                    <div class="hostRequired">
                        <input type="text" class="hostJoinInfo" id="hostBankName" name="bank" value="" placeholder="은행명 입력">
                    </div> 
                    <div class="hostRequired">
                        <input type="text" class="hostJoinInfo" id="hostAccountName" name="accountHolder" value="" placeholder="예금주명 입력">
                    </div>
                    <div class="hostRequired">
                        <input type="text" class="hostJoinInfo" id="hostBankNumber" name="accountNum" value=""placeholder="계좌번호 입력">
                    </div>
                    <br><br>
                    <div class="announce" align="center">
	           			<input type="checkbox" id="agreeHost" name="agree">
	           			<label>이용약관, 개인정보 처리방침, 위치기반 서비스 이용약관에 동의합니다.</label>
	       			<br><br>
	       			</div>
                
                    <div align="center">
	       				<input type="submit" id="buttonHostJoin" class="buttonJoin" value="가입하기">
	        		</div> 
                    </form>
            </div>
            <br><br><br><br><br><br>
            <%@ include file="./common/footer.jsp" %> 
            
    </div>  
	</body>
	
	<script>
		function buttonJoin(){
			$('#hostJoinForm').submit();
			alert('호스트 가입 완료');
			location.href="/semi/index.jsp";
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
			
		var hostReason = document.getElementById("hostClassReason");
		var bank = document.getElementById("hostBankName");
		var name = document.getElementById("hostAccountName");
		var accountNum = document.getElementById("hostBankNumber");
		var check = document.getElementById("agreeHost");
		//개설이유, 은행명, 예금주명, 계좌번호, 약관 체크
		//아이디 미입력
			if ((hostReason.value) == ""){
                alert("개설 이유를 입력해주세요");
                hostReason.focus();
                return false;
            }
		
			if((bank.value)==""){
				alert("은행명을 입력해주세요");
				bank.focus();
				return false;
			}
			
			//이름 유효성체크
			if(!chk(/^[가-힣]{2,}/, bank, "은행명을 2글자 이상으로 입력해주세요")){
                 return false;
             }
			
			if((name.value)==""){
				alert("예금주 명을 입력해주세요");
				name.focus();
				return false;
			}
			
			if(!chk(/^[가-힣]{2,}/, name, "예금주 명을 2글자 이상 입력해주세요")){
				return false;
			}
			
			if((accountNum.value)==""){
				alert("계좌번호를 입력해주세요");
				accountNum.focus();
				return false;
			}
			
			//약관 체크
			if(check.checked == false){
				alert("약관에 동의해주세요");
				return false;
			}
		
			
		
		}
		
	
	
	
	</script>
</html>