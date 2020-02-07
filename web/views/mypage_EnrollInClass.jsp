<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>EnrollInClass</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <!-- <link rel="stylesheet" href="/semi/resources/css/mypage_EnrollInClass.css"> --> <!-- 우선순위 높이기 위해 인라인으로 넣었음 -->
    <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
    <script src="/semi/resources/jquery/jquery-3.4.1.min.js"></script>
    <style>
.tline1row{
    font-weight: bold;
    width: 150px;
    font-size: 10pt;
    padding-top: 3px;
    margin: 0px;
    vertical-align: middle;
}
.tline2row{
    width: 600px;
}
#input1ske{
    width: 500px;
    height: 30px;
    padding-left: 20px;
    border-radius: 5px;
    font-size: 9pt;
}

#sl1{
    width: 120px;
}
#sl2{
    width: 150px;
}
.sl{
    text-align-last: center;
    height: 25px;
    border: none;
    border-bottom: 1px solid lightgray;
    font-size: 9pt;
}

.ct{
	font-size: 9pt;
}

#classTime6{
    text-align: center;
    width: 80px;
    border-radius: 5px;
}

#commission12{
    text-align: center;
    border-radius: 5px;
    }

#MaxNoAttendee{
    text-align: center;
    width: 80px;
    border-radius: 5px; 
}

.addSchedule23{
    height: 35px;
}

.date632{
    border: none;
    border-bottom: 1px solid lightgray;
    text-align-last: center;
    font-size: 10pt;
}

#basicAddr{
    border: none;
    border-bottom: 1px solid lightgray;
    padding-left: 20px;
    width: 380px;
}

#detailAddr{
    margin-top: 10px;
    border: none;
    border-bottom: 1px solid lightgray;
    padding-left: 20px;
    width: 485px;
}

.btn24{
    background: rgb(9, 129, 241);
    color: white;
    border: none;
    height: 25px;
    width: 80px;
    border-radius: 15px;
    padding-bottom: 3px;
    padding-top: 4px;
    font-size: 9pt;
}

.textAreaTitle23{
    margin-bottom: 10px;
}

.centents263425{
    border-radius: 5px;
}

.finalBtn24{
    background: rgb(9, 129, 241);
    color: white;
    border: none;
    height: 35px;
    width: 180px;
    border-radius: 15px;
    padding-bottom: 1.5px;
    padding-top: 4px;   
    font-size: 11pt;
}
</style>
</head>

<body></body>
    <div id="Allpanel" align="center">
    
        <%@ include file="./common/header.jsp" %>
        
        
            <!-- 작업하는 컨텐츠 -->
            <div id="newby-body-panel" class="contents-div123" align="left">

                <!--left sidebar-->
                <%@ include file="./common/mypage_sidebar.jsp" %>

                <!--contents-->
                <div id="mn16s" align="center">
                    <br>
                    <h2>클래스 등록</h2>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <form action="">
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="tline1row">클래스명<br><small>(20자 이내)</small></td>
                                        <td  class="tline2row"><input id="input1ske" type="text" placeholder="제목에서부터 호스트님의 매력을 마음껏 뿜어내 주세요"></td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">카테고리</td>
                                        <td>
                                            <select name="" id="sl1" class="sl">
                                                <option value="" selected>1차</option>
                                                <option value="동적">동적</option>
                                                <option value="정적">정적</option>
                                            </select>
                                            &nbsp;          
                                            <select name="" id="sl2" class="sl">
                                                <option value="" selected>2-1차</option>
                                                <option value="액티비티">액티비티</option>
                                                <option value="쿠킹">쿠킹</option>
                                                <option value="예술">예술</option>
                                                <option value="교육">교육</option>
                                            </select>
                                            &nbsp;          
                                            <select name="" id="sl2" class="sl">
                                                <option value="" selected>2-2차</option>
                                                <option value="액티비티">액티비티</option>
                                                <option value="쿠킹">쿠킹</option>
                                                <option value="예술">예술</option>
                                                <option value="교육">교육</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    
                                    <tr>
                                        <td class="tline1row">클래스 형태</td>
                                        <td>
                                            <input type="radio" id="class-type1" name="classType">
                                            <label class="ct" for="class-type1">1:1 수업</label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="radio" id="class-type2" name="classType">
                                            <label class="ct" for="class-type2">그룹 수업</label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="radio" id="class-type3" name="classType">
                                            <label class="ct" for="class-type3">원데이</label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">1회당 수업시간</td>
                                        <td style="font-size: 9pt"><input id="classTime6" type="text">&nbsp;시간</td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">시간당 가격</td>
                                        <td style="font-size: 9pt"><input id="commission12" type="text">&nbsp;원</td>
                                    </tr>                              
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">인원수</td>
                                        <td style="font-size: 9pt"><input id="MaxNoAttendee" type="text">&nbsp;명</td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">커버사진<br><small>(2MB 이하)</small></td>
                                        <td>
                                            <img id="blah" src="http://placehold.it/180" alt="your image"/>
                                            <br>
                                            <input type='file' onchange="readURL(this);" multiple>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">일정</td>
                                        <td class="addSchedule23">
                                            <input class="date632" type="date">
                                            &nbsp;
                                            <input class="date632" type="time">
                                            &nbsp;~&nbsp;
                                            <input  class="date632"type="time">
                                            &nbsp;&nbsp;
                                            <input class="btn24" type="button" value="일정 추가">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td class="addSchedule23">
                                            <input class="date632" type="date">
                                            &nbsp;
                                            <input class="date632" type="time">
                                            &nbsp;~&nbsp;
                                            <input  class="date632"type="time">&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">장소</td>
                                        <td>
                                            <input id="basicAddr" type="text" placeholder="기본 주소">
                                            &nbsp;&nbsp;
                                            <input class="btn24" type="button" value="주소 찾기">
                                            <br>
                                            <input id="detailAddr" type="text" placeholder="상세 주소">
                                        </td>
                                    </tr>
                            </table>
                            <br><br><br>
                            <h5 class="tline1row textAreaTitle23">수업 소개</h5>
                            <textarea name="" id="" class="centents263425" cols="90" rows="7"></textarea>
                            <br><br>
                            <h5 class="tline1row textAreaTitle23">수업 대상</h5>
                            <textarea name="" id="" class="centents263425" cols="90" rows="7"></textarea>
                            <br><br>
                            <h5 class="tline1row textAreaTitle23">커리큘럼</h5>
                            <textarea name="" id="" class="centents263425" cols="90" rows="7"></textarea>
                            
                            <br><br>
                            <input type="submit" class="finalBtn24" value="등록">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="reset" class="finalBtn24" value="취소">
                            <br><br><br><br><br>
                        </form>
                    </div>
                </div> 
            </div>
            
            <script type="text/javascript" src="/semi/resources/js/mypage_EnrollInClass.js"></script>

        
        <%@ include file="./common/footer.jsp" %>
        
    </div>
</body>
</html>