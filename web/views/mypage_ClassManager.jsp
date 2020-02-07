<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>ClassManager</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_ClassManager.css">
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
                    <h2>클래스 관리</h2>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <div>
                            <table>	<!-- 클래스 날짜와 현재 날짜 비교해서 수정취소버튼 생성 분기시켜야해  -->
                                <thead>
                                    <tr>
                                      <th>날짜</th>
                                      <th style="width: 300px">클래스명</th>
                                      <th style="width: 100px">상태</th>
                                      <th style="width: 150px">수정/취소</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                    <tr>
                                      <td>2020-01-02</td>
                                      <td>길가다가 쓰레기 줍기</td>
                                      <td>예정</td>
                                      <td><input class="modify1sd size142" type="button" value="수정"> <input class="delete1sd size142" type="button" value="취소"></td>
                                    </tr>
                                    <tr>
                                      <td>2019-11-18</td>
                                      <td>플라잉 요가</td>
                                      <td>예정</td>
                                      <td><input class="modify1sd size142" type="button" value="수정"> <input class="delete1sd size142" type="button" value="취소"></td>
                                    </tr>
                                    <tr>
                                      <td>2019-10-04</td>
                                      <td>연탄 나르기</td>
                                      <td>예정</td>
                                      <td><input class="modify1sd size142" type="button" value="수정"> <input class="delete1sd size142" type="button" value="취소"></td>
                                    </tr>
                                    <tr class="complete1sd">
                                      <td>2019-09-16</td>
                                      <td>안녕 나야</td>
                                      <td>완료</td>
                                      <td> </td>
                                    </tr>
                                    <tr class="complete1sd">
                                      <td>2019-09-08</td>
                                      <td>화성에서 온 나</td>
                                      <td>완료</td>
                                      <td> </td>
                                    </tr>
                                    <tr class="complete1sd">
                                      <td>2019-09-02</td>
                                      <td>연탄 나르기</td>
                                      <td>완료</td>
                                      <td> </td>
                                    </tr>
                                    <tr class="complete1sd">
                                      <td>2019-10-04</td>
                                      <td>자바랑 나랑</td>
                                      <td>완료</td>
                                      <td> </td>
                                    </tr>
                                    <tr class="complete1sd">
                                      <td>2019-10-04</td>
                                      <td>너는 누구니?</td>
                                      <td>완료</td>
                                      <td> </td>
                                    </tr>
                                    <tr class="complete1sd">
                                      <td>2019-10-04</td>
                                      <td>반가워 다들</td>
                                      <td>완료</td>
                                      <td> </td>
                                    </tr>
                                    <tr class="complete1sd">
                                      <td>2019-10-04</td>
                                      <td>솔로 티내기</td>
                                      <td>완료</td>
                                      <td> </td>
                                    </tr>
                                </tbody>
                            </table>
                            
                            <!-- 페이징해야 하는 부분 -->
                            <div>
                            </div>
                              
                              
                              
                          </div>
                    </div>
                </div> 
            </div>
            
            <script type="text/javascript" src="/semi/resources/js/mypage_ClassManager.js"></script>
			
        <%@ include file="./common/footer.jsp" %>
        
    </div>
</body>
</html>