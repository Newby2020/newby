<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
		        <label><b>���� ���</b></label>
		        <hr>
		    </div>
		    <div class="classInfo">
		        <div class="pictureClass"></div>
		            <div class="classDetail"><br><br>[ī�װ�] ������ Ŭ������ 
		            <br><br>Ŭ���� ���� ���� 
		            <br><br>���� x 1</div>
		        <div class="priceClass"><br><br><br><br>W 10,000��</div>
		    </div> 
		    <hr>
		    <br>
		    <div class="reasonOfCancelWrap">
		        <select class="reasonOfCancelSelect" selected="selected">
		            <option class="reasonOfCancel" value>���� ��� ����</option>
		            <option class="reasonOfCancel" value>������ ������ ������ ���� ����</option>
		            <option class="reasonOfCancel" value="etc">��Ÿ</option>
		        </select>
		        <br><br><br>
		        <div>
		            <textarea class="detailedReasonOfCancel" placeholder="�� ������ �Է��� �ּ���"></textarea>
		        </div>
		    </div>
		    <br><br><br>
		    <hr>
		    <div class="cancelOrderGuide">
		        <label class="cancelOrderGuideLabel">���� �ݾ� : W       �� - �� �δ� ��� : W      ��&nbsp;&nbsp;</label><br>
		        <hr style="width: 180px; float: right; margin-top: 5px; display: block;"><br>
		        <label class="cancelOrderGuideLabel" style ="line-height: 0.5em;"><b>�� ȯ�� �ݾ� : W       ��&nbsp;&nbsp;</b></label>
		    </div>
		
		    <br><br><br><br><br><br><br>
		
		
		    <div class="announceCancelOrder">
		        <label>���� ��Ҵ� ����� ȯ�� ������ ����, ��� �� ȯ�� ����� ������ ������ �����մϴ�.</label>
		    </div>
		
		    <br><br>
			<div align= "center">
		    	<button onclick="cancelOrderBtn();" id="cancelOrderBtn" class="cancelOrderBtn">���� ���</button>
	    	</div>
	    </form>
    </div>


    <script>
        /* select �ɼ� ��ü�� selected���� �� Ư�� div�� ȣ���ϴ� �ڵ� */
        jQuery('.reasonOfCancelSelect').change(function () {
                var state = jQuery('.reasonOfCancelSelect option:selected').val();
                if (state === 'etc') {
                    jQuery('.detailedReasonOfCancel').show();
                } else {
                    jQuery('.detailedReasonOfCancel').hide();
                }
            });
    </script>
</body>
</html>