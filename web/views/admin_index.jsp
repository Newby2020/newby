<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, 
    							 com.kh.newby.Member.model.vo.*, 
    							 com.kh.newby.classvo.model.vo.*,
    							 com.kh.newby.Host.model.vo.*"%>
<% 
	int userCount = (int)(request.getAttribute("userCount"));
	int hostCount = (int)(request.getAttribute("hostCount"));
	int classCount = (int)(request.getAttribute("classCount"));
	int approvalClassCount = (int)(request.getAttribute("approvalClassCount"));
	int notifiedHostCount = (int)(request.getAttribute("notifiedHostCount"));
	int refundMoneyCount = (int)(request.getAttribute("refundMoneyCount"));
	int newInquiryCount = (int)(request.getAttribute("newInquiryCount"));
	ArrayList<Member2> topUserList = (ArrayList<Member2>)request.getAttribute("topUserList");
	ArrayList<Host> bestHostList = (ArrayList<Host>)request.getAttribute("bestHostList");
%>    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin_index</title>

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
            <a class="index" href="/semi/index.ad">관리자페이지</a>
        </div>
        <a class="active" href="/semi/index.ad">Dashboard</a>
        <a href="/semi/userList.ad">사용자</a>
        <a href="/semi/classApplyList.ad">클래스 등록 신청</a>
		<a href="/semi/classList.ad">개설 클래스</a>
        <a href="/semi/claimList.ad">신고</a>
        <a href="/semi/paymentList.ad">정산</a>
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
            <a href="/semi/classApplyList.ad" class="notification">
                <span>개설 신청</span>
                <% if(approvalClassCount != 0) { %>
                <span class="badge"><%=approvalClassCount %></span>
                <% } %>
            </a>
            <a href="/semi/claimList.ad" class="notification">
                <span>호스트 신고</span>
                <% if(notifiedHostCount != 0) { %>
                <span class="badge"><%=notifiedHostCount %></span>
                <% } %>
            </a>
            <a href="admin_accountancy.jsp" class="notification">
                <span>환불</span>
                <% if(refundMoneyCount != 0) { %>
                <span class="badge"><%=refundMoneyCount %></span>
                <% } %>
            </a>
            <!-- TODO 문의하기 탭으로 넘기기 -->
            <a href="/semi/inquirySelectList.io" class="notification">
                <span>문의</span>
                <% if(newInquiryCount != 0) { %>
                <span class="badge"><%=newInquiryCount %></span>
                <% } %>
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
                        <th>회원 No</th>
                        <th>회원명</th>
                        <th>회원 ID</th>
                        <th>수강횟수</th>
                    </tr>
                    <% for(Member2 m2 : topUserList) {%>
                    <tr>
                        <td><%=m2.getM_no() %></td>
                        <td><%=m2.getM_name() %></td>
                        <td><%=m2.getM_id() %></td>
                        <td><%=m2.getUserClassCount() %></td>
                    </tr>
                    <% } %>
                </table> <br>
                <h3>Best Host</h3>
                <table>
                    <tr>
                    	<th>호스트 No.</th>
                        <th>호스트명</th>
                        <th>호스트 ID</th>
                        <th>평점</th>
                    </tr>
                    <% for(Host h : bestHostList) { %>
                    <tr>
                        <td><%=h.getHostNo() %></td>
                        <td><%=h.getAccountHolder() %></td>
                        <td><%=h.getHostMemId() %></td>
                        <td><%=h.getAvgReview() %></td>
                    </tr>
                    <% } %>
                </table>
            </div>
        </div>
    </div>


</body>

</html>