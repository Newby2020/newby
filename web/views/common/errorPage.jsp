<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<%
	String msg = (String) request.getAttribute("msg");
	Exception e = (Exception) request.getAttribute("exception");
	// 일반적으로 jsp에 사용되는 exception 내장 객체는 jspException 클래스를 활용한다.
	// 따라서 사용자 정의 예외를 구현할 때에는 Exception 객체를 직접 선언하여 사용하여야 한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새로운 취미를 찾아서 NEWBY</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="/semi/resources/js/jquery-3.4.1.min.js"></script>
<style>
	* {
		font-family: 'Noto Sans KR', sans-serif;
	}
	#errorBody{
		margin: 0px;
	}
	
	.outerError{
	     margin: 0px;                                
	}
	.midError{
		background-image: url(/semi/resources/images/errorPage.png);   
		position: relative;
        height: 100vh;
        background-size: cover;
 
	}
	.innerError{
		font-size: 30px;                                                                
        color: white;
        text-align: center;
	}
	
	.errorToHome{
	    width: 300px;
	    height: 40px;
	    border: none;
	    background-color: rgb(9, 129, 241);
	    color: white;
	    cursor : pointer;
	    font-size: 15px;
	    border-radius: 5px;
}
.errorToHome{
	cursor:pointer;
}
</style>
</head>
<body id='errorBody'>
	<div class="outerError">
		<div class="midError">
			<div class="innerError">
			<br><br><br>
				<label>죄송합니다. 문제가 발생했습니다( <%= msg %> )</label><br>
				<label>관리자에게 문의하세요</label>
				<br><br>
				<button class="errorToHome" onclick="errorToHome();">홈페이지로 이동하기</button>
			</div>	
		</div>	
	</div>
	<script>
		function errorToHome(){
			location.href="/semi/index.jsp";
		}
	</script>
</body>
</html>