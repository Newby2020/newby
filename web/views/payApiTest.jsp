<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.newby.member.model.vo.*" %>
<%	
	String className = (String)request.getAttribute("className");
	int finalPay = (int)request.getAttribute("finalPay");
	Member m = (Member)session.getAttribute("Member");
	String classNo = (String)request.getAttribute("classNo");
	int millage = (int)request.getAttribute("millage");
	String csNo = (String)request.getAttribute("csNo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새로운 취미를 찾아서 NEWBY</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
	<script>
	$(function(){
		IMP.init('imp90014999');
		
			IMP.request_pay({
		    pg : 'kakaopay', // version 1.1.0부터 지원.
		    pay_method : 'card',
		    merchant_uid : 'newby_' + new Date().getTime(),
		    name : 'NEWBY CLASS',
		    amount : <%= finalPay %>,
		    buyer_email : '<%= m.getM_id() %>',
		    buyer_name : '<%= m.getM_name() %>',
		    buyer_tel : '<%= m.getM_phone() %>',
		    member_no : '<%= m.getM_no() %>',
		    /* pay_date : new Date().get */
		    pay_classNo : '<%= classNo %>',
		    pay_use_millage : '<%= millage %>',
		    pay_save_millage : '<%= finalPay * 0.05 %>'
		}, function(rsp) {
		    if ( rsp.success ) {
		    	$.ajax({
	    			url: "/payments/complete",
	    			type: "POST",
	    			datatype: "json",
	    			data: {
	    				imp_uid : rsp.imp_uid,
	    				
	    			}
		    	}).done(function(data){
		    		if(everythings_fine){
			        msg += '고유ID : ' + rsp.imp_uid;
			        msg += '상점 거래ID : ' + rsp.merchant_uid;
			        msg += '결제 금액 : ' + rsp.paid_amount;
			        msg += '카드 승인번호 : ' + rsp.apply_num;
			        msg += '구매자 email : ' + rsp.buyer_email;
			        msg += '구매자 이름 : ' + rsp.buyer_name;
			        msg += '핸드폰 번호 : ' + rsp.buyer_tel;
			        msg += '구매자 number : ' + rsp.member_no;
			        msg += '구매한 클래스 number : ' + rsp.pay_classNo;
			        msg += '사용한 마일리지 : ' + rsp.pay_use_millage;
			        msg += '적립 마일리지 : ' + rsp.pay_save_millage;
		    		}else{
		    			
		    		}
		    	});
		    		var msg = "";
		        	    msg +='<%= classNo %>';
		        	    msg +='&mno=<%= m.getM_no()%>';
		        	    msg +='&millage=<%= millage %>';
		        	    msg +='&saveMillage=<%= finalPay*0.05%>';
		        	    msg +='&csNo=<%= csNo %>';
		        	    
		    	location.href="/semi/paySuccess.cp?cno="+msg;
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		        location.href="views/common/errorPage.jsp";
		    }
		});
	});
	    
	</script>
</body>
</html>