<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,
    							 com.kh.newby.Class.model.vo.*"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>결제</title>
    <link rel="stylesheet" type="text/css" href="/semi/resources/css/payment.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
    
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
	
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
		        <label><b>결제</b></label>
		        <hr>
			</div>
		    <div class="classInfo">
		        <div class="pictureClass"></div>
		            <div class="classDetail"><br><br>[카테고리] 선택한 클래스명 
		            <br><br>클래스 선택 일정 
		            <br><br>수량 x 2</div>
		        <label class="priceClass"><br><br><br><br>W 10,000원</label>
		    </div> 
		    <hr>
		    <div class="priceClass2">
			    <label>클래스 금액</label>
			    <label id="priceClassAndMileage">W 10,000원&nbsp;</label>
			</div>
		    <hr>
		    <div class="mileage">
		        <label>마일리지</label>
		        <label id="priceClassAndMileage">W 10,000원&nbsp;</label>
		    </div>
		    <hr>
		    <div class="mileageGuide">
			    <label>* 마일리지는 최대 클래스 금액의 20%까지 결제 가능합니다.</label><br>
			    <label>* 결제하신 금액의 1%는 마일리지로 적립됩니다.</label>
		    </div>
		    <hr>
		    <div class="priceGuide">
		        <label class="priceGuideLabel"><b>할인 금액 : W       원&nbsp;&nbsp;</b></label><br>
		        <hr style="width: 180px; float: right; margin-top: 5px; display: block;"><br>
			    <label class="priceGuideLabel" style ="line-height: 0.5em;"><b>결제 금액 : W       원&nbsp;&nbsp;</b></label>
		    </div>
		
		    <br><br><br><br><br>
		
		
		    <div id="guideText">
			    <label><b>결제 수단</b></label>
		    </div>
		    <hr>
		
		    <button onclick="buttonCard();" id="buttonCard" class="buttonPay">신용카드</button> 
		    <button onclick="buttonTransfer();" id="buttonTransfer" class="buttonPay">계좌이체</button> 
		    <button onclick="buttonAccount();" id="buttonAccount" class="buttonPay">무통장입금</button> 
		    <button onclick="buttonMobile();" id="buttonMobile" class="buttonPay">모바일 결제</button> 
		      
		    <br><br><br>
		
		    <div class="announcePay">
		        <input type="checkbox" id="agree" name="agree">
		        <label>개인정보 제 3자 제공 동의, 결제 대행 서비스 이용 약관 등 모든 약관에 동의합니다.</label>
		    </div>
		
		    <br><br>
		
		    <div align="center">
		    	<button onclick="finalButtonPay();" id="finalButtonPay" class="finalButtonPay">W 10,000원 결제하기</button>
		    </div>	
	    </form>
    </div>
    

	<script>
	// 결제 요청 - 결제 모듈 불러오기
	function finalButtonPay() {
	   
	   var is_empty=false;
	   $('#subscribeform').find('input[id!="extraAddress"]').each(function() {
	      
	//       if( $(this).is( $('input[name="subTerm"]') ) ) return;
	      
	      if(!$(this).val()) {
	         is_empty = true;
	      }
	   })
	   if(is_empty) {
	      alert('값을 모두 입력해 주세요')
	   } else {      
	   
	   IMP.request_pay({
	       pg : 'html5_inicis', //PG사 - 'kakao':카카오페이, 'html5_inicis':이니시스(웹표준결제), 'nice':나이스페이, 'jtnet':제이티넷, 'uplus':LG유플러스, 'danal':다날, 'payco':페이코, 'syrup':시럽페이, 'paypal':페이팔
	       pay_method : 'card', //결제방식 - 'samsung':삼성페이, 'card':신용카드, 'trans':실시간계좌이체, 'vbank':가상계좌, 'phone':휴대폰소액결제
	       merchant_uid : 'merchant_' + new Date().getTime(), //고유주문번호 - random, unique
	       name : '산타북스 정기구독', //주문명 - 선택항목, 결제정보 확인을 위한 입력, 16자 이내로 작성
	       amount : 100, //결제금액 - 필수항목
	       buyer_email : 'iamport@siot.do', //주문자Email - 선택항목
	       buyer_name : '구매자이름', //주문자명 - 선택항목
	       buyer_tel : '010-1234-5678', //주문자연락처 - 필수항목, 누락되면 PG사전송 시 오류 발생
	       buyer_addr : '서울특별시 강남구 삼성동', //주문자주소 - 선택항목
	       buyer_postcode : '123-456', //주문자우편번호 - 선택항목
	       m_redirect_url : 'https://www.yourdomain.com/payments/complete' //모바일결제후 이동페이지 - 선택항목, 모바일에서만 동작
	       
	   }, function(rsp) { // callback - 결제 이후 호출됨, 이곳에서 DB에 저장하는 로직을 작성한다
	       if ( rsp.success ) { // 결제 성공 로직
	           var msg = '결제가 완료되었습니다.';
	           msg += '고유ID : ' + rsp.imp_uid;
	           msg += '상점 거래ID : ' + rsp.merchant_uid;
	           msg += '결제 금액 : ' + rsp.paid_amount;
	           msg += '카드 승인번호 : ' + rsp.apply_num;
	           msg += '[rsp.success]';
	           
	//            location.href = "/subscribe/final";
	            $("form").submit();
	
	           
	           // 결제 완료 처리 로직
	         //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
	         jQuery.ajax({
	            url: "/pay/complete", //cross-domain error가 발생하지 않도록 동일한 도메인으로 전송
	            type: 'POST',
	            dataType: 'json',
	            data: {
	               // rsp객체를 통해 전달된 데이터를 DB에 저장할 때 사용한다
	               imp_uid : rsp.imp_uid
	            }
	         
	         }).done(function(data) {
	            //[2] 서버에서의 응답 처리
	            if ( data == 'success' ) {
	               var msg = '결제가 완료되었습니다.';
	               msg += '\n고유ID : ' + rsp.imp_uid;
	               msg += '\n상점 거래ID : ' + rsp.merchant_uid;
	               msg += '\n결제 금액 : ' + rsp.paid_amount;
	               msg += '\n카드 승인번호 : ' + rsp.apply_num;
	                 msg += '\n[done]';
	
	               alert(msg);
	               
	             } else {
	                //[3] 아직 제대로 결제가 되지 않았습니다.
	                //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
	             }
	          });
	           
	       } else { // 결제 실패 로직
	           var msg = '결제에 실패하였습니다.';
	           msg += '에러내용 : ' + rsp.error_msg;
	       }
	       alert(msg);
	   });
	}
	}
	</script>
</body>
</html>