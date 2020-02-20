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
                <form id="findForm2" class="findForm" onsubmit="return validate2();">
                    <div id="findPwdSentence">
                        <label style="margin-bottom: 3px;"><b>비밀번호 찾기</b></label>
                        <br>
                        <hr style="margin-top: 10px;">
                        <br>
                    </div>
                    <div>  
                    	<div class="infoRequired" style="margin-bottom: 2px;">
                        	<input type="text" id="memberFindName2" class="memberFind" name="memberFindName2"  placeholder="이름 입력">
                    	</div>
                    	<div class="infoRequired">
                        	<input type="text" id="memberFindEmail" class="memberFind" name="memberFindEmail" placeholder="이메일 아이디 입력">
                        	<span id="sendCode" name="sendCode">인증메일 보내기</span>
                        	
                    	</div>
                    	<div class="infoRequired">
              				<input type="text" class="memberFind" id="code" name="phone"  maxlength=100; placeholder="인증 번호 입력">	
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
	
	$('#sendCode').click(function(){
		console.log($('#memberFindName2').val());
		console.log($('#memberFindEmail').val());
		$.ajax({
			url: "/semi/checkmail.me",
			type: "post",
			data:{
				memberFindName: $('#memberFindName2').val(),
				memberFindEmail:$('#memberFindEmail').val()
			},
			success: function(data){
				console.log(data);
				if(data["1"]=="성공"){
					console.log(data["mem"]["m_id"]);
					
				alert("인증메일이 발송되었습니다.");
				 $.ajax({
					url: "/semi/certify.me" ,
					type : "post",
					data: {
						user_Id : data["mem"]["m_id"]
					},
					success : function(data){	
							console.log("인증 메일이 발송되었습니다");	
					},
					error : function(){
						console.log("---Error---");
					}
				})
				}else{
					alert("회원정보가 존재하지 않습니다. 다시 확인해주세요()");
				}
			},
			error: function(){
				alert("메일 발송 중 오류가 발생했습니다.");
			}
		})
	});
	
	
	$('#confirmCode').click(function(){
		console.log("코드확인")
		$.ajax({
			url: "/semi/check.co",
			type: "post",
			data: {
				checkCode: $('#code').val()
			},
			success : function(data){
				console.log(data);
				if(data=="성공"){
				alert("이메일 인증 완료");
				
				location.href= "/semi/views/setPwd.jsp";
				}else{
					alert("인증 코드 오류! 코드를 다시 확인해주세요");
				}
			},
			error: function(){
				console.log("--error--");
			}
		})
	});
	
	</script>
</html>