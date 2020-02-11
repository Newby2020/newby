<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.newby.Class.model.vo.*" %>
<%  
	//클래스 객체
	ClassVo cv = (ClassVo)request.getAttribute("class");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/semi/resources/css/class_information.css" type="text/css">
<title>클래스 상세 페이지</title>
</head>
<body>
	<%@ include file="../views/common/header.jsp" %>
		<!-- body -->
    <div class="wrap">
        <div class="main">
            <div class="class_img">
                <img src="./class_example.jpg" class="class_img" alt="">

            </div>
            <div class="class_navi">
                    <a href="#sumary" id="summary_nav" class="navi_bar">요약</a>
                    <a href="#host_detail" id="host_nav" class="navi_bar">강사</a>
                    <a href="#class_detail" id="class_nav" class="navi_bar">수업소개</a>
                    <a href="#review" id="review_nav" class="navi_bar">리뷰</a>
            </div>
            <!-- 호스트 프로필 요약 -->
            <!-- <div class="host_profile">
                <div>
                    <div>프로필 사진 영역
                        <div></div>호스트 아이디
                    </div>
                    <div>
                        <div>클래스 제목

                        </div>
                        <div></div>별점
                        <div></div>이미지 아이콘
                    </div>
                </div>
            </div> -->
            <!-- 강사 소개 -->
            <div class="host_detail" id="host_detail">
                <div class="host_detail_title"><h1>강사 소개</h1></div>
                    <div class="host_detail_text" id="cl_host_info">
                        	  <%= cv.getHostIntro() %>
                    </div>
            </div>

            <!--/강사 소개 -->
            <!-- 수업 소개 -->
            <div class="class_detail" id="class_detail">
                <div class="class_detail_title">
                    <h1>수업소개</h1></div>
                    <div class="class_detail_text">
                        <%= cv.getClassIntro() %>
                    </div>
                </div>
                    <div class="class_detail">
                        <div>
                            <h1>수업대상</h1>
                        </div>
                        <div>
                            <ul class="class_detail_text">
                                <li style="list-style: none;">
                                    <p><%= cv.getClassTarget() %></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="class_detail">
                        <div>
                            <h1>커리큘럼</h1>
                        </div>
                        <div>
                            <dl class="class_detail_text">
                                <dd>
                                   <%= cv.getClassCurricurum() %>
                                </dd>
                            </dl>
                        </div>
                    </div>
                    <!-- 리뷰 -->
                <div class="class_detail review" id="review">
                    <div class="section01">
                        <h1 style="padding: 2%;">리뷰(Review)</h1>
                        <a class="btn_st" id="btn_write_review">리뷰쓰기</a>
                        <div class="review_box">
                            <img src="../resources/images/roundstar.png">
                            <img src="../resources/images/roundstar.png">
                            <img src="../resources/images/roundstar.png">
                            <img src="../resources/images/roundstar.png">
                            <img src="../resources/images/roundstar.png"> 5.0 </div>

                        <div class="review_list" id="bookmarkReview">
                            <ul>
                                <div id="innerReviewDiv">
                                    <table id="replyTable">
                                        <tr>
                                        	<td class="name">장병욱</td>
                                            <td>직장생활을 하면서 주변에서는 펀드니 연금보험이니 뭐니 하는데 저는 아는 것이 하나도 없어 막막했습니다.
                                                <br> 그런데 강의를 들으면서 자산관리에 대한 기본 개념과 금융상품들에 대해 정확히 이해할 수 있었습니다.
                                                <br> 금융의 가장 기초적인 부분부터, 금융상품이 어떤 것이 있는지 기본 원리 장단점 등에 대해 쉽고 정확하게 친절하게 잘 설명해주셔서 완전 초보인 저도 잘이해할 수 있었습니다.
                                                <br> 강의들어볼까 고민하시며 리뷰보시는 분이 있다면 진심 얼른 들으시길 강추합니다!!!!!
                                                <br>
                                            </td>
                                            <td class="date">2020-01-06 01:14:37</td>
                                        </tr>
                                    </table>
                                </div>
                            </ul>
                        </div>
                        <script>
                        	$.ajax({
                        		url:"/<%= request.getContextPath() %>/classinfo.ci",
                        		type: "get",
                        		success:function(data){
                        			$.each(data,function(index,value){
                        				var $tr = $('<tr>');
                        				var $userName = $('<td>').text(value.userName);
                        				var $context = $('<td>').text(value.context);
                        				var $date = $('<td>').text(value.date);
                        				
                        				$tr.append($userName);
                        				$tr.append($context);
                        				$tr.append($date);
                        				
                        				$('#replyTable').append($tr);
                        			})
                        		},error:function(data){
                        			location
                        		}
                        	});
                        <%-- <div class="paging_num" id="innerPageDiv">
                                <a class="on" href='<%= request.getContextPath() %>/replyList.rl?currentPage=1'"><<</a>
                                <% if(currentPage <= 1){ %>
                                <a disalbed><</a>
                                <% }else{ %>
                                <a href='<%= request.getContextPath() %>/replyList.rl?currentPage=<%=currentPage -1 %>'"><</a>
                                <% } %>
                                
                                <% for(int p = startPage; p<=endPage; p++){
                                	if(p == currentPage){	
                               	%>
                                <a disabled><%= p %></a>
                                <% }else{ %>
                                <a href='<%= request.getContextPath() %>/replyList.rl?currentPage=<%= p %>'"><%= p %></a>
                                <% } %>
                                
                                <% if(currentPage >= maxPage){ %>
                                <a disalbed>></a>
                                <% }else{ %>
                                <a href="<%= request.getContextPath() %>/replyList.rl?currentPage + 1">></a>
                                <% } %>
                                <% } %>
                                <a href="<%= request.getContextPath() %>/replyList.rl?currengPage=<%= maxPage %>">>></a>
                        </div> --%>
                        </script>
                    </div>
                </div> <!-- /리뷰 -->
        </div>
    </div>
    <!-- side bar -->
    <div class="side">
        <div class="class_price">
            <div class="">
                <div class="title" id="side_class_title"><%= cv.getClassType %></div>

                    <div id="side_pay_option"><%= cv.getClassDate %><span style="float: center; margin-left: 20%;"><%= cv.getStartTime() %>~<%= cv.getEndTime() %></span>
                    <div style="float: right; margin-right: 5%;"><%= cv.getClassLocation() %></div>
                    </div>
                    <div class="payment">
                        <a id="pay_a" href="" onclick="payPopup();"><span id="pay_btn">수업 신청하기</span></a>
                    </div>
                    <div class="price">
                        <div id="text_time"><b>￦<%= cv.getClassPrice() %>원 / 시간</b></div> <!--  getEndTime() getStartTime() String으로 받아서 Int로 형변환 해줘야함 -->
                        <div id="text_total">￦<%= cv.getClassPrice() * (cv.getEndTime() - cv.getStartTime()) %> / 총 1회 <%= cv.getEndTime() - cv.getStartTime()%>시간</div>
                    </div>
            </div>
        </div>
    </div>
</body>
</html>