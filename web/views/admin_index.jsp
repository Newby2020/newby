<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.newby.Member.model.vo.*, com.kh.newby.Class.model.vo.*"%>
<% 
	int userCount = (int)(request.getAttribute("userCount"));
	int hostCount = (int)(request.getAttribute("hostCount"));
	int classCount = (int)(request.getAttribute("classCount"));
%>    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DashBoard_admin</title>

    <!-- Load icon libarary -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Sidebar & Footer : Basic-->
    <link rel="stylesheet" href="/semi/resources/css/admin_basic.css">

    <!-- Dashboard_index -->
    <link rel="stylesheet" href="/semi/resources/css/admin_index.css">

    <!-- Table & SearchBar-->
    <link rel="stylesheet" href="/semi/resources/css/admin_table&searchBar.css">

</head>

<body>
    <!-- Reposive Sidebar -->
    <div class="sidebar">
        <div>
            <a class="fa fa-home" href="#"></a>
            <a class="index" href="admin_index.jsp">관리자페이지</a>
        </div>
        <a class="active" href="admin_index.jsp">Dashboard</a>
        <a href="/semi/userList.ad">사용자</a>
        <a href="admin_classApply.jsp">클래스</a>
		<a href="admin_classCancel.jsp">클래스 취소</a>
        <a href="admin_hostReport.jsp">호스트 신고</a>
        <a href="admin_accountancy.jsp">정산</a>
    </div> 

    <div class="content">

        <!-- Responsive Section Counter -->
        <div class="row">
            <div class="column">
                <div class="card">
                    <p><i class="fa fa-user"></i></p>
                    <h3><%=userCount %></h3>
                    <p>사용자 수</p>
                </div>
            </div>

            <div class="column">
                <div class="card">
                    <p><i class="fa fa-check"></i></p>
                    <h3><%=hostCount %></h3>
                    <p>호스트 수</p>
                </div>
            </div>

            <div class="column">
                <div class="card">
                    <p><i class="fa fa-smile-o"></i></p>
                    <h3><%=classCount %></h3>
                    <p>클래스 수</p>
                </div>
            </div>
        </div>
        <!-- /Responsive Section Counter -->

        <!-- Notification Button -->
        <div class="notif">
            <a href="admin_classApply.jsp" class="notification">
                <span>개설 신청</span>
                <span class="badge">12</span>
            </a>
            <a href="admin_hostReport.jsp" class="notification">
                <span>호스트 신고</span>
                <span class="badge">1</span>
            </a>
            <a href="admin_accountancy.jsp" class="notification">
                <span>송금</span>
                <!-- <span class="badge"></span> -->
            </a>
            <!-- TODO 문의하기 탭으로 넘기기 -->
            <a href="#" class="notification">
                <span>문의</span>
                <span class="badge">1</span>
            </a>
        </div>

        <!-- chartRank -->
        <div class="chartRank">
            <div class="chartDiv">
                <script type="text/javascript">
                    // 
                    var date = new Date(2022, 10, 1);

                    // 


                    window.onload = function () {
                        var chart = new CanvasJS.Chart("chartContainer",
                            {

                                title: {
                                    text: "주간 접속자 수"
                                },
                                data: [
                                    {
                                        type: "line",

                                        dataPoints: [
                                            { x: new Date(2020, 01, 4), y: 450 },
                                            { x: new Date(2020, 01, 5), y: 520 },
                                            { x: new Date(2020, 01, 6), y: 460 },
                                            { x: new Date(2020, 01, 7), y: 450 },
                                            { x: new Date(2020, 01, 8), y: 500 },
                                            { x: new Date(2020, 01, 9), y: 480 }
                                        ]
                                    }
                                ]
                            });

                        chart.render();
                    }
                </script>
                <script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
                <div id="chartContainer" style="height: 300px; width: 100%;">
                </div>


            </div>
            <div class="rankDiv">
                <h3>Top User</h3>
                <table>
                    <tr>
                        <th>No.</th>
                        <th>회원 ID</th>
                        <th>수강횟수</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>kh9921</td>
                        <td>204</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>akcm1</td>
                        <td>42</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>joung1</td>
                        <td>23</td>
                    </tr>
                </table> <br>
                <h3>Best Host</h3>
                <table>
                    <tr>
                        <th>No.</th>
                        <th>클래스명</th>
                        <th>호스트 ID</th>
                        <th>학생 수</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>레츠고 자바</td>
                        <td>kh9921</td>
                        <td>204</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>고티카</td>
                        <td>akdm1sa</td>
                        <td>49</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>굴삭기</td>
                        <td>ekmm1</td>
                        <td>23</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>


</body>

</html>