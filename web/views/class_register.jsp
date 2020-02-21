<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.newby.classvo.model.vo.*, java.util.*" %>
<%  
	//클래스 객체
	ClassVo cv = (ClassVo)request.getAttribute("classVo");
	
	//클래스 일정 리스트 객체
	ArrayList<ClassVo> csList = (ArrayList<ClassVo>)request.getAttribute("csList");
	
	/* //멤버 마일리지 호출을 위한 멤버 객체 호출 >> header에 session으로 담겨 있음
	Member mem = (Member)(session.getAttribute("Member")); */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스 등록하기</title>
<style>
	.wrap{
		width:70%;
		margin-left:auto;
		margin-right:auto;
	}
	
	.cl_register{
		margin-top: 30px;
	    padding: 19px 0;
	    border-bottom: 1px solid #c9c9c9;
	}
	.class_title{
		margin: 30px 0;
	    color: #333;
	    font-size: 20px;
	    line-height: 1.1;
	    letter-spacing: -0.5px;
	    font-weight: 500;
    }
    #nextBtn{
        background: #888;
        color: #fff;
        padding: 20px 30px;
        width: 230px;
        margin: 40px auto;
        font-size: 16px;
        border-radius: 6px;
        text-align: center;
        /*background: #ff005a;*/
    }
	.cl_example{
		font-size: 16px;
	    color: #333;
	    font-weight: 500;
	    padding: 0;
	    padding: 2%;
	    border-top: 1px solid #e1e2e3;
    }
    .payment_process{
    	border-top: 1px solid #e1e2e3;
    	padding: 2%;
    }
    #gray_text_box{
    	border: 1px solid #a3a4a6;
    	font: bold 13px;
    	text-align: right;
    	background-color: #f0f0f0;
    	line-height: 190%;
    	font-size: 15px;
    	font-weight: bold;
    	width: 80px;
    }
    #use_millage{
    	width: 80px;
    	text-align: right;
    	font-size: 15px;
    	font-weight: bold;
    	line-height: 180%;
    }
    #total_pay{
    	font-size: 20px;
    	font-weight: bold;
    	text-align: right;
    }
</style>
</head>
<body>
	<!--  header  -->
	<%@ include file="../views/common/header.jsp" %>
	<!-- body -->
	<div class="wrap">
        <div class="cl_register"><h3>수업신청</h3></div>
	    <div class="class_title">
	        [<%= cv.getClassType() %>] <%= cv.getClassName() %>
	    </div>
	    <div class="class_list">
	        <div class="cl_example"><!-- <img src="../semi/resources/images/schedule.jpg"> -->원하시는 수업일정을 선택해주세요.</div>
        	<% for(int i=0; i<csList.size(); i++){ %>
	        <li style="list-style: none; border-top:1px solid #e1e2e3; padding:2%;">
	            <input type="checkbox" name="cl_date" id="cl_date_id<%= i %>">
	            <label for="cl_date_id<%= i %>"><%= csList.get(i).getClassDate() %> <%=csList.get(i).getClassStartTime() %>~<%=csList.get(i).getClassEndTime() %></label>
	        </li>
            <%} %>
	    </div>
	    <form>
    	<div class="payment_process" align="left">
    		<table>
    			<tr>
    				<td><label>사용 가능한 마일리지</label></td>
    				<td><input type="text" id="gray_text_box" value="<%= m.getM_mileage() %>" disabled>원</td>
   				</tr>
   				<tr>
    				<td><label>사용 할 마일리지</label></td>
    				<td><input type="text" id="use_millage">원</td>
   				</tr>
   				<tr>
    				<td><label>총 결제 금액</label></td>
    				<td><span id="total_pay"></span>원</td>
    			</tr>
    		</table>
    	</div>
    	</form>
	    <div id="nextBtn" onclick="nextPage()">날짜를 선택해 주세요</div>
	    <script>
	        /* $('#cl_date_id').click(function(){
	        	if($('#cl_date_id').is(':checked')){
	        		$('#nextBtn').css("background","#ff005a");
	        		$('#nextBtn').html("결제하기");
	        		count++;
	        	}
	        }); */
	        $(function(){
		    	var count = 0;
		    	//checkbox 클릭시
		    	$('input:checkbox').on('click',function(){
		    		//버튼 색상 변경
		    		$('#nextBtn').css("background","#ff005a");
	        		$('#nextBtn').html("결제하기");
	        		//클릭시마다 돌면서 체크된 값 확인
	        		$(this).each(function(){
	        			//체크 된 개수 더해주기
		        		if($(this).is(":checked")){
	        				count++;
	        			//체크 해제됐을 때 카운트 빼주기
		        		}else{
		        			count--;
		        		}
	        		});
	        		//클래스 가격 받아오기
		        var classPrice = <%= cv.getClassPrice()%>;
		        	//클래스 가격에서 선택된 개수에 따라서 가격 변경
		        var totalPrice = (classPrice * count);
		        	//최종 가격 
		        	$('#total_pay').html(totalPrice);
		        		//마일리지 입력 시 최종가격에서 뺴주기
						$('#use_millage').keyup(function(){
					        var millage = $('#use_millage').val();
					        $('#total_pay').html(totalPrice - millage);
						});					        
				    	});
	        });
	        //라디오 버튼 체크 갯수 확인
	        /* var checkedCount = $("input:radio[name='cl_date']:checked").length; */
	    </script>
    </div>
    <!--  footer -->
    <%@ include file="../views/common/footer.jsp" %>
</body>
</html>