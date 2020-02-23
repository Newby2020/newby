<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.newby.classvo.model.vo.*, com.kh.newby.review.model.vo.*, java.util.*" %>

<%  
	//클래스 객체
	ClassVo cv = (ClassVo)request.getAttribute("class");

	//클래스 일정 리스트
	ArrayList<ClassVo> csList = (ArrayList<ClassVo>)request.getAttribute("csList");
	
	//댓글 리스트
	ArrayList<Review> rList = (ArrayList<Review>)request.getAttribute("rList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/semi/resources/css/class_information.css" type="text/css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> -->
<title>새로운 취미를 찾아서 NEWBY</title>
</head>
<body>
	<!--  header  -->
	<%@ include file="../views/common/header.jsp" %>
		<!-- body -->
    <div class="wrap">
        <div class="main">
            <div class="class_img">
                <img src="../semi/resources/uploadImg/<%= cv.getClassImg() %>" class="class_img" alt="">
            </div>
            <div class="class_navi" id="class_nav_div">
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
            <div style="border-bottom: 1px solid #e1e2e3">
            <h1><%= cv.getClassName() %></h1>
            </div>
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
                                <dd style="margin-left:auto;">
                                   <%= cv.getClassCurriculum() %>
                                </dd>
                            </dl>
                        </div>
                    </div>
                    <!-- 리뷰 -->
                <div class="class_detail review" id="review">
                        <h1 style="padding: 2%;">리뷰(Review)</h1>
                        <!-- <a class="btn_st" id="btn_write_review">리뷰쓰기</a> -->
                        <div class="review_box">
                            <div class="rate">
			                    <label for="star1" title="text" class="star" id="star1">★</label> 
			                    <label for="star1" title="text" class="star" id="star2">★</label> 
			                    <label for="star1" title="text" class="star" id="star3">★</label> 
			                    <label for="star1" title="text" class="star" id="star4">★</label> 
			                    <label for="star1" title="text" class="star" id="star5">★</label> 
			                    &nbsp; <span id="starNum"><%= cv.getAverageReview() %></span>
                			</div> 
            			</div>
            			<script>
            				var num = <%= cv.getAverageReview() %>;
            					console.log(num);
            				$(function(){
	            				if(num == 1){
	            				$('#star1').css("color","#ffc700");
	            				}else if(num == 2){
	            					$('#star1').css("color","#ffc700");
	            					$('#star2').css("color","#ffc700");
	            				}else if(num == 3){
	            					$('#star1').css("color","#ffc700");
	            					$('#star2').css("color","#ffc700");
	            					$('#star3').css("color","#ffc700");
	            				}else if(num == 4){
	            					$('#star1').css("color","#ffc700");
	            					$('#star2').css("color","#ffc700");
	            					$('#star3').css("color","#ffc700");
	            					$('#star4').css("color","#ffc700");
	            				}else{
	            					$('#star1').css("color","#ffc700");
	            					$('#star2').css("color","#ffc700");
	            					$('#star3').css("color","#ffc700");
	            					$('#star4').css("color","#ffc700");
	            					$('#star5').css("color","#ffc700");
	            				}
            				});
            			</script>
                        <div class="review_list" id="bookmarkReview">
                            <ul>
                                <div id="innerReviewDiv">
                                    <table id="replyTable">
                                    <% for(int i=0; i<rList.size(); i++){ %>
                                        <tr>
                                        	<td class="name" style="width:100px; padding:2%;"><%= rList.get(i).getRwriter() %></td>
                                            <td class="content" style="width:80%; padding:2%;"><%= rList.get(i).getRcontent() %>
                                               <br><span class="date" style=color:gray;"><%= rList.get(i).getRdate() %></span>
                                            </td>
                                        </tr>
                                    <%} %>
                                    </table>
                                </div>
                            </ul>
                        </div>
                      </div>
                </div> <!-- /리뷰 -->
        </div>
    </div>
    <!-- side bar -->
    <div class="side">
        <div class="class_price">
            <div class="">
                <div class="title" id="side_class_title"><%= cv.getClassType() %></div>
					<% for(int i=0; i<csList.size(); i++) { %>
                    <div id="side_pay_option" style="padding:2%;"><%= csList.get(i).getClassDate() %> <span style="float: center; margin-left: 20%;"><%= csList.get(i).getClassStartTime() %>:~<%= csList.get(i).getClassEndTime() %></span>
                    <div><%= cv.getClassLocation() %></div><!--  style="float: right; margin-right: 5%;" -->
                    </div>
                    <% } %>
                    <div class="payment">
                        <%-- <a id="pay_a" onclick="location.href='/semi/classPay.do?cno=<%= cv.getClassNo() %>'"><span id="pay_btn">수업 신청하기</span></a> --%>
                        <a id="pay_a" onclick="location.href='/semi/classPay.cp?cno=<%= cv.getClassNo()%>'"><span id="pay_btn">수업 신청하기</span></a>
                    </div>
                    <div class="price">
                        <div id="text_time"><b>￦<%= cv.getClassPrice() %>원 / 회당</b></div>
                    </div>
            </div>
        </div>
    </div>
    <!-- footer -->  
    <%@ include file="../views/common/footer.jsp" %>
</body>
</html>