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
    <link rel="stylesheet" href="/semi/resources/css/mypage_ClassManager.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
   
    <script src="/semi/resources/jquery/jquery-3.4.1.min.js"></script>
    <script src="../MainPage/js/mainPage.js"></script>
    <style>
th{
   height: 30px;
   font-size: 11pt;
}
td{
   height: 30px;
   font-size: 9pt;
}
    </style>
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
                                      <th style="width: 150px">날짜</th>
                                      <th style="width: 300px">클래스명</th>
                                      <th style="width: 150px">금액</th>
                                      <th style="width: 150px">상태</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                <%-- <%for Member s : list %> --%>   <!-- dksadkas;ldksa;ldksa;dkas; -->
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