<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,
    							 com.kh.newby.classvo.model.vo.*,
    							 com.kh.newby.pay.model.vo.*"%>
<%
 	ClassVo3 cvPsno = (ClassVo3)request.getAttribute("cvPsno"); 
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>cancelOrder</title>
    <script src="/semi/resources/js/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/semi/resources/css/cancelOrder.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
    <style>
        html {
            font-family: 'Noto Sans KR', sans-serif;
        }
    </style>
</head>
<body id="cancelOrderBody">
    <div id="cancelOrderFormWrap">
    	<form id="cancelOrderForm">
		    <div class="guideText">
		        <label><b>&nbsp;&nbsp;&nbsp;결제 취소</b></label>
		        <hr>
		    </div>
		    <div class="classInfo">
		         <div class="pictureClass"><img class="pictureClass" src="<%=cvPsno.getClassImg() %>"></div>
		            <div class="classDetail">
		            <br><br>[ <%=cvPsno.getFirstCategory()%> > <%=cvPsno.getSecondCategory()%> > <%=cvPsno.getThirdCategory() %> ]  
		            <br><br><%=cvPsno.getClassName() %>
		            <br><br><%=cvPsno.getClassDate() %> (<%=cvPsno.getClassStartTime()%> - <%=cvPsno.getClassEndTime()%>)
		          	</div>
		        <div class="priceClass"><br><br><br><br>\ <%=cvPsno.getClassPrice() %>원</div>
		    </div> 
		    <hr>
		    <br>
		    <div class="reasonOfCancelWrap">
		        <select class="reasonOfCancelSelect" selected="selected" id="reasonOfCancel">
		            <option class="reasonOfCancel" value="0">결제 취소 사유</option>
		            <option class="reasonOfCancel" value="">선택한 수업이 마음에 들지 않음</option>
		            <option class="reasonOfCancel" value="">수업 일정을 잘못 선택</option>
		            <option class="reasonOfCancel" value="">바이러스와 같은 재해가 발생</option>
		            <option class="reasonOfCancel" value="etc">기타</option>
		            
		        </select>
		        <br><br><br>
		        <div>
		            <textarea class="detailedReasonOfCancel" placeholder="상세 내용을 입력해 주세요"></textarea>
		        </div>
		    </div>
		    <br><br><br>
		    <hr>
		    <div class="cancelOrderGuide">
		        <label class="cancelOrderGuideLabel" style="margin-top: 10px;">마일리지 사용 금액 : \ <%=cvPsno.getPayMileage() %>원&nbsp;&nbsp;</label>
		        <span style="line-height: 2.4em;"><br></span>
		        <label class="cancelOrderGuideLabel">마일리지 적립 금액 : \ -<%=cvPsno.getPaySaveMileage() %>원&nbsp;&nbsp;</label>
		        <span style="line-height: 1.8em;"><br></span>
		        <label class="cancelOrderGuideLabel">구입 금액 : \ <%=cvPsno.getClassPrice() %>원&nbsp;&nbsp;</label><br>
		        <hr style="width: 180px; float: right; margin-top: 10px; display: block;"><br>
		        <label class="cancelOrderGuideLabel" style ="line-height: 1.6em;"><b>총 환불 금액 : \ <%=cvPsno.getClassPrice()-cvPsno.getPayMileage() %>원&nbsp;&nbsp;</b></label>
		    </div>
		
		    <br><br><br><br><br><br><br>
		
		
		    <div class="announceCancelOrder">
		        <label>결제 취소는 당사의 환불 규정을 숙지, 취소 및 환불 약관에 동의한 것으로 간주합니다.</label>
		    </div>
		
		    <br><br>
			<div align= "center">
		    	<button id="cancelOrderBtn" class="cancelOrderBtn">결제 취소</button>
	    	</div>
	    </form>
    </div>


    <script>
        /* select 옵션 객체가 selected됐을 때 특정 div를 호출하는 코드 */
        jQuery('.reasonOfCancelSelect').change(function () {
                var state = jQuery('.reasonOfCancelSelect option:selected').val();
                if (state === 'etc') {
                    jQuery('.detailedReasonOfCancel').show();
                } else {
                    jQuery('.detailedReasonOfCancel').hide();
                }
            });
        
        $('#cancelOrderBtn').click(function(){
        	var count = $('#reasonOfCancel').val();
        	
        	if(count == 0) {
        		alert('결제 취소 사유를 선택해 주세요');
        	} else {
        		alert('결제가 취소되었습니다.');
        	}
        });
    </script>
</body>
</html>