<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>PaymentPage</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
    <script src="/semi/resources/jquery/jquery-3.4.1.min.js"></script>
    <script src="../MainPage/js/mainPage.js"></script>
</head>

<body>
    <div id="Allpanel" align="center">
    
        <%@ include file="./common/header.jsp" %>
        
            <!-- 작업하는 컨텐츠 -->
            <div id="newby-body-panel" class="contents-div123" align="left">

                <!--left sidebar-->
				<%@ include file="./common/mypage_sidebar.jsp" %>

                <!--contents-->
                <div id="mn16s" align="center">
                    <br>
                    <h2>결제 내역</h2>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <div class="container">
                            <table class="table table-striped">
                                <thead align="center">
                                    <tr>
                                      <th>날짜</th>
                                      <th>클래스명</th>
                                      <th>금액</th>
                                      <th>상태</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                    <tr>
                                      <td>2020-01-02</td>
                                      <td>길가다 쓰레기줍기</td>
                                      <td>+58,000원</td>
                                      <td>결제</td>
                                    </tr>
                                    <tr>
                                      <td>2019-11-18</td>
                                      <td>플라잉 요가</td>
                                      <td>0원</td>
                                      <td>취소</td>
                                    </tr>
                                    <tr>
                                      <td>2019-10-04</td>
                                      <td>연탄 나르기</td>
                                      <td>+30,000원</td>
                                      <td>입금 대기중</td>
                                    </tr>
                                    <tr>
                                      <td>2019-09-16</td>
                                      <td>안녕 나야</td>
                                      <td>-50,000원</td>
                                      <td>환불</td>
                                    </tr>
                                    <tr>
                                      <td>2019-09-08</td>
                                      <td>화성에서 온 나</td>
                                      <td>+50,000원</td>
                                      <td>결제</td>
                                    </tr>
                                    <tr>
                                      <td>2019-09-02</td>
                                      <td>연탄 나르기</td>
                                      <td>+50,000원</td>
                                      <td>입금 대기중</td>
                                    </tr>
                                    <tr>
                                      <td>2019-10-04</td>
                                      <td>자바랑 나랑</td>
                                      <td>+50,000원</td>
                                      <td>결제</td>
                                    </tr>
                                    <tr>
                                      <td>2019-10-04</td>
                                      <td>너는 누구니?</td>
                                      <td>-28,000원</td>
                                      <td>환불</td>
                                    </tr>
                                    <tr>
                                      <td>2019-10-04</td>
                                      <td>반가워 다들</td>
                                      <td>+50,000원</td>
                                      <td>입금 대기중</td>
                                    </tr>
                                    <tr>
                                      <td>2019-10-04</td>
                                      <td>솔로 티내기</td>
                                      <td>0원</td>
                                      <td>취소</td>
                                    </tr >
                                </tbody>
                            </table>
                            
                            
                            <!-- 페이징 들어갈 부분 -->
                            <div>
                              
                            </div>
                          </div>
                    </div>
                </div> 
            </div>
            
            <script type="text/javascript" src="/semi/resources/js/mypage_PaymentPage.js"></script>
        
        <%@ include file="./common/footer.jsp" %>
        
    </div>
</body>
</html>