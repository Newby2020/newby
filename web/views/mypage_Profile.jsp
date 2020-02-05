<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Profile</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_Profile.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
    <script src="/semi/views/resources/jquery/jquery-3.4.1.min.js"></script>
</head>

<body>
    <div id="Allpanel" align="center">
    
        <%@ include file="./common/header.jsp" %>

            <!-- 작업하는 컨텐츠 -->
            <div id="newby-body-panel" class="contents-div123" align="left" >
            
                <!--left sidebar-->
                <div class="sidenavsk">
                  <div id="sidebar-titleso67" align="center">마이페이지</div>
                  <a href="Profile.html">프로필</a>
                  <a href="Mileage.html">마일리지</a>
                  <a href="ClassSchedule.html">수강예정 클래스</a>
                  <a href="PaymentPage.html">결제 내역</a>
                  <a href="WritingReview1.html">후기 작성</a>
                  <button class="dropdown-btnqo">호스트
                      <i id="ci22">≡</i>
                  </button>
                  <div class="dropdown-soxk">
                    <a href="EnrollInClass.html">클래스 등록</a>
                    <a href="ClassManager.html">클래스 관리</a>
                    <a href="AttendeeManager.html">수강생 관리</a>
                  </div>
              </div>

                <!--contents-->
                <div id="mn16s" align="center">
                	<br>
                    <br>
                    <h2>프로필</h2>
                    <br>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div>
                        <form>
                            <table align="center">
                              <tr>
                                <td class="tline1 ttxtt1">닉네임</td>
                                <td class="tline2 ttxtt1"><input id="nickname1sdkl" name="name" placeholder="입력" value="prius"></td>
                                <td><input class="modibtn1cw" type="button" value="수정하기"></td>
                                  </tr>
                                <tr>
                                  <td><br></td>
                                </tr>
                                <tr>
                                    <td class="tline1 ttxtt1">이름</td>
                                    <td class="tline2 ttxtt1"><div class="modiX14" disabled>남지훈</div></td>
                                </tr>
                                <tr>
                                  <td><br></td>
                                </tr>
                                <tr>
                                    <td class="tline1 ttxtt1">생년월일</td>
                                    <td class="tline2 ttxtt1"><div class="modiX14" disabled>1990년 12월 28일</div></td>
                                </tr>
                                <tr>
                                  <td><br></td>
                                </tr>
                                <tr>
                                    <td class="tline1 ttxtt1">성별</td>
                                    <td class="tline2 ttxtt1"><div class="modiX14" disabled>남자</div></td>
                                </tr>
                                <tr>
                                  <td><br></td>
                                </tr>
                                <tr>
                                    <td class="tline1 ttxtt1">휴대폰 번호</td>
                                    <td class="tline2 ttxtt1"><div  class="modiX14" disabled>010-8838-6688</div></td>
                                    <td><input class="modibtn1cw" type="button" value="수정하기"></td>
                                  </tr>
                                  <tr>
                                    <td><br></td>
                                  </tr>
                                  <tr>
                                    <td class="tline1 ttxtt1">비밀번호</td>
                                    
                                    <td colspan="2">
                                      <a id="pwdbtn1cke" onclick="pwdScreen();">비밀번호 수정</a>
                                      <div id="pwdbtn2cke" style="display: none;">
                                        <p>
                                          <span class="pwd1ds">기존의 비밀번호</span>&nbsp;&nbsp;
                                          <input class="pwd1ds" type="password">
                                        </p>
                                        <p>
                                          <span class="pwd1ds">새로운 비밀번호</span>&nbsp;&nbsp;
                                          <input class="pwd1ds" type="password">
                                        </p>
                                        <p>
                                          <span class="pwd1ds">비밀번호 재확인</span>&nbsp;&nbsp;
                                          <input class="pwd1ds" type="password">&nbsp;
                                          <input id="pwdchdoeoc" class="modibtn1cw" type="button" value="수정하기">
                                        </p>
                                      </div>
                                      
                                    </td>
                                    
                                  </tr>
                                  <tr>
                                    <td><br></td>
                                  </tr>
                                  <tr>
                                    <td class="tline1">이메일</td>
                                    <td  id="tline2Email">
                                        <input type="text" id="userEmail1skw" value="ahtp0070">
                                        @ 
                                        <input id="emainAddr1sd" type="text">
                                        <select id="select1sdknw" name="email" onchange="selectEmail()">
                                            <option value>직접 입력</option>
                                            <option value="naver.com">naver.com</option>
                                            <option value="google.com">google.com</option>
                                            <option value="daum.net">daum.net</option>
                                            <option value="hanmir.com">hanmir.com</option>
                                            <option value="yahoo.com">yahoo.com</option>
                                      </select>
                                    </td>
                                    <td><input class="modibtn1cw" type="button" value="수정하기"></td>
                                </tr>
                                <tr>
                                  <td></td>
                                  <td colspan="2"><input type="checkbox"><small style="color: rgb(155,155,155);"> 다양한 이벤트, 할인, 상품 정보 메일을 받겠습니다.</small></td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div> 
            </div>
            
            <script type="text/javascript" src="/semi/resources/js/mypage_Profile.js"></script>
       	<br>
        <%@ include file="./common/footer.jsp" %>
        
    </div>
</body>
</html>