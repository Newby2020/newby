<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Mileage</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_Mileage.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
    <script src="../MainPage/js/mainPage.js"></script>

</head>

<body></body>
    <div id="Allpanel" align="center">
    
        <%@ include file="./common/header.jsp" %>
        
            <!-- 작업하는 컨텐츠 -->
            <div id="newby-body-panel" class="contents-div123" align="left">

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
                    <h2>마일리지</h2>
                    <br>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <div>
                            <div align="center" id="miletitle1sdk">현재 마일리지</div>
                            <div align="center">
                              <input type="text" id="mileage1kc" value="8,000,000원">
                            </div>
                          </div>
                          <br><br>
                          
                          <div class="container">
                            <h4 id="pastmilek1res">마일리지 내역</h4>
                            <table class="table table-striped">
                              <thead align="center">
                                <tr>
                                  <th>날짜</th>
                                  <th>클래스명</th>
                                  <th>내용</th>
                                </tr>
                              </thead>
                              <tbody align="center">
                                <tr>
                                  <td>2020-01-02</td>
                                  <td>길가다 쓰레기줍기</td>
                                  <td>+5,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-11-18</td>
                                  <td>플라잉 요가</td>
                                  <td>+7,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-10-04</td>
                                  <td>연탄 나르기</td>
                                  <td>+2,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-09-16</td>
                                  <td>안녕 나야</td>
                                  <td>+9,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-09-08</td>
                                  <td>화성에서 온 나</td>
                                  <td>+2,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-09-02</td>
                                  <td>연탄 나르기</td>
                                  <td>+4,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-10-04</td>
                                  <td>자바랑 나랑</td>
                                  <td>+2,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-10-04</td>
                                  <td>너는 누구니?</td>
                                  <td>+8,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-10-04</td>
                                  <td>반가워 다들</td>
                                  <td>+4,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-10-04</td>
                                  <td>솔로 티내기</td>
                                  <td>+6,000 적립</td>
                                </tr>
                              </tbody>
                            </table>
                            <br>
                            <div id="paging1kjd">
                              <ul class="pagination">
                                <li class="page-item"><a class="page-link" href="#" style="color: #0981F1;">Previous</a></li>
                                <li class="page-item"><a class="page-link" href="#" style="color: #0981F1;">1</a></li>
                                <li class="page-item"><a class="page-link" href="#" style="color: #0981F1;">2</a></li>
                                <li class="page-item"><a class="page-link" href="#" style="color: #0981F1;">3</a></li>
                                <li class="page-item"><a class="page-link" href="#" style="color: #0981F1;">Next</a></li>
                              </ul>
                            </div>
                          </div>
                    </div>
                </div> 
            </div>
            
            <script type="text/javascript" src="/semi/resources/js/mypage_Mileage.js"></script>
        
        <%@ include file="./common/footer.jsp" %>
        
    </div>
</body>
</html>