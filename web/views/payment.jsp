<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>����</title>
    <link rel="stylesheet" type="text/css" href="/semi/resources/css/payment.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
    <style>
        *{
            font-family: 'Noto Sans KR', sans-serif;  
        }
    </style>
</head>
<body id="payBody">
    <div id="payFormWrap">
	    <form id="payForm">
		    <div class="guideText">
		        <label><b>����</b></label>
		        <hr>
			</div>
		    <div class="classInfo">
		        <div class="pictureClass"></div>
		            <div class="classDetail"><br><br>[ī�װ�] ������ Ŭ������ 
		            <br><br>Ŭ���� ���� ���� 
		            <br><br>���� x 1</div>
		        <label class="priceClass"><br><br><br><br>W 10,000��</label>
		    </div> 
		    <hr>
		    <div class="priceClass2">
			    <label>��ǰ �ݾ�</label>
			    <label id="priceClassAndMileage">W 10,000��&nbsp;</label>
			</div>
		    <hr>
		    <div class="mileage">
		        <label>���ϸ���</label>
		        <label id="priceClassAndMileage">W 10,000��&nbsp;</label>
		    </div>
		    <hr>
		    <div class="mileageGuide">
			    <label>* ���ϸ����� �ִ� Ŭ���� �ݾ��� 20%���� ���� �����մϴ�.</label><br>
			    <label>* �����Ͻ� �ݾ��� 1%�� ���ϸ����� �����˴ϴ�.</label>
		    </div>
		    <hr>
		    <div class="priceGuide">
		        <label class="priceGuideLabel"><b>���� �ݾ� : W       ��&nbsp;&nbsp;</b></label><br>
		        <hr style="width: 180px; float: right; margin-top: 5px; display: block;"><br>
			    <label class="priceGuideLabel" style ="line-height: 0.5em;"><b>���� �ݾ� : W       ��&nbsp;&nbsp;</b></label>
		    </div>
		
		    <br><br><br><br><br>
		
		
		    <div id="guideText">
			    <label><b>���� ����</b></label>
		    </div>
		    <hr>
		
		    <button onclick="buttonCard();" id="buttonCard" class="buttonPay">�ſ�ī��</button> 
		    <button onclick="buttonTransfer();" id="buttonTransfer" class="buttonPay">������ü</button> 
		    <button onclick="buttonAccount();" id="buttonAccount" class="buttonPay">�������Ա�</button> 
		    <button onclick="buttonMobile();" id="buttonMobile" class="buttonPay">����� ����</button> 
		      
		    <br><br><br>
		
		    <div class="announcePay">
		        <input type="checkbox" id="agree" name="agree">
		        <label>�������� �� 3�� ���� ����, ���� ���� ���� �̿� ��� �� ��� ����� �����մϴ�.</label>
		    </div>
		
		    <br><br>
		
		    <div align= "center";>
		    	<button onclick="finalButtonPay();" id="finalButtonPay" class="finalButtonPay">W 10,000�� �����ϱ�</button>
		    </div>	
	    </form>
    </div>
    
    <script>
		document.get
	</script>
</body>
</html>