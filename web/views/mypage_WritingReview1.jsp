<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Review</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_WritingReview1.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
    <script src="/semi/resources/jquery/jquery-3.4.1.min.js"></script>
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
                    <h2>후기 작성</h2>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <div>
                            <table>
                                <thead align="center">
                                    <tr>
                                      <th style="width: 150px">날짜</th>
                                      <th style="width: 300px">클래스명</th>
                                      <th style="width: 150px">후기</th>
                                    </tr>
                                    <tr>
                                    	<td colspan=3 style="border-bottom : 1px solid darkgray; height: 0px"></td>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                    <tr>
                                      <td>2020-01-02</td>
                                      <td>길가다 쓰레기줍기</td>
                                      <td><input type="button" class="reviewBtn" value="작성" onclick="reviewOpen();"></td>
                                    </tr>
                                    <tr>
                                      <td>2019-11-18</td>
                                      <td>플라잉 요가</td>
                                      <td>처리 완료</td>
                                    </tr>
                                    <tr>
                                      <td>2019-10-04</td>
                                      <td>연탄 나르기</td>
                                      <td>처리 완료</td>
                                    </tr>
                                    <tr>
                                      <td>2019-09-16</td>
                                      <td>안녕 나야</td>
                                      <td>처리 완료</td>
                                    </tr>
                                    <tr>
                                      <td>2019-09-08</td>
                                      <td>화성에서 온 나</td>
                                      <td>처리 완료</td>
                                    </tr>
                                    <tr>
                                      <td>2019-09-02</td>
                                      <td>연탄 나르기</td>
                                      <td>처리 완료</td>
                                    </tr>
                                    <tr>
                                      <td>2019-10-04</td>
                                      <td>자바랑 나랑</td>
                                      <td>처리 완료</td>
                                    </tr>
                                    <tr>
                                      <td>2019-10-04</td>
                                      <td>너는 누구니?</td>
                                      <td>처리 완료</td>
                                    </tr>
                                    <tr>
                                      <td>2019-10-04</td>
                                      <td>반가워 다들</td>
                                      <td>처리 완료</td>
                                    </tr>
                                    <tr>
                                      <td>2019-10-04</td>
                                      <td>솔로 티내기</td>
                                      <td>처리 완료</td>
                                    </tr>
                                </tbody>
                            </table>
                            <!-- 페이징 넣어야할 부분 -->
                            <div>

                            </div>
                          </div>
                    </div>
                </div> 
            </div>
            
            <script type="text/javascript" src="/semi/resources/js/mypage_WritingReview1.js"></script>
        
        <%@ include file="./common/footer.jsp" %>
        
    </div>
</body>
</html>