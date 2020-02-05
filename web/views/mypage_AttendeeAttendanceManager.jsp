<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>수강생 출결관리</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <style>
        thead{
            font-weight: bold;
            font-size: 15pt;
        }
        td{
            width: 200px;
            height: 40px;
            font-size: 13pt;
        }
        .updateBtn{
            background: rgb(9, 129, 241);
            color: white;
            border: none;
            height: 27px;
            width: 80px;
            border-radius: 5px;
            padding-bottom: 1.5px;
            padding-top: 1px;
            height: 50px;
            width: 200px;
            font-size: 13pt;
        }
    </style>


</head>
<body>
    <div style="width: 500px; height: 1000px; float: left;">
        <br>
        <h2 align="center">출결 관리</h2>
        <br>
        <table style="text-align: center;" class="table table-striped">
            <thead>
                <tr>
                    <th class="th1">구분</th>
                    <th class="th1">닉네임</th>
                    <th class="th1">출석/결석</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Joel</td>
                    <td>
                        &nbsp;<input name="attendance"type="radio">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="attendance" type="radio">
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Prius</td>
                    <td>
                        &nbsp;<input name="attendance"type="radio">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="attendance" type="radio">
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Avante</td>
                    <td>
                        &nbsp;<input name="attendance"type="radio">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="attendance" type="radio">
                    </td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>User</td>
                    <td>
                        &nbsp;<input name="attendance"type="radio">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="attendance" type="radio">
                    </td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>Host</td>
                    <td>
                        &nbsp;<input name="attendance"type="radio">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="attendance" type="radio">
                    </td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>Nakamura</td>
                    <td>
                        &nbsp;<input name="attendance"type="radio">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="attendance" type="radio">
                    </td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>Joro</td>
                    <td>
                        &nbsp;<input name="attendance"type="radio">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="attendance" type="radio">
                    </td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>Coco</td>
                    <td>
                        &nbsp;<input name="attendance"type="radio">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="attendance" type="radio">
                    </td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>Bubu</td>
                    <td>
                        &nbsp;<input name="attendance"type="radio">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="attendance" type="radio">
                    </td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>Mainboo</td>
                    <td>
                        &nbsp;<input name="attendance"type="radio">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input name="attendance" type="radio">
                    </td>
                </tr>
            </tbody>
        </table>
        <br>
        <div align="center">
            <button class="updateBtn">업데이트</button>
        </div>
    </div>
</body>
</html>