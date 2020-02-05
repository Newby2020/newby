<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>ModifyClass</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_EnrollInClass.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">


</head>

<body></body>
    <div id="Allpanel" align="center">

            <!-- 작업하는 컨텐츠 -->
            <div id="newby-body-panel" class="contents-div123" align="left">
                <!--contents-->
                <div id="mn16s" align="center">
                    <br>
                    <br>
                    <h2>클래스 수정</h2>
                    <br>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <form action="">
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="tline1row">클래스명<br><small>(20자 이내)</small></td>
                                        <td  class="tline2row"><input id="input1ske" type="text" placeholder="제목에서부터 호스트님의 매력을 마음껏 뿜어내 주세요" value="영상 기획/편집/전략 : 12시간만에 '진짜' 크리에이터(유튜버, PD) 되기!"></td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">수업 카테고리</td>
                                        <td>
                                            <select name="" id="sl1" class="sl">
                                                <option value="">1차</option>
                                                <option value="동적" selected>동적</option>
                                                <option value="정적">정적</option>
                                            </select>
                                            &nbsp;          
                                            <select name="" id="sl2" class="sl">
                                                <option value="" selected>2차</option>
                                                <option value="액티비티">액티비티</option>
                                                <option value="쿠킹">쿠킹</option>
                                                <option value="예술" selected>예술</option>
                                                <option value="교육">교육</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">1회당 수업시간</td>
                                        <td><input id="classTime6" type="text" value="3">&nbsp;시간</td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">참가비</td>
                                        <td><input id="commission12" type="text" value="40,000">&nbsp;원</td>
                                    </tr>                              
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">최대 인원</td>
                                        <td><input id="MaxNoAttendee" type="text" value="20">&nbsp;명</td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">커버사진등록</td>
                                        <td>
                                            <img id="blah" src="./resources/images/9acbcb6da3300c270bb4855c30353afe4136b09d.jpg" alt="your image" style="width:180px; height:180px"/>
                                            <br>
                                            <input type='file' onchange="readURL(this);"/>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">일정</td>
                                        <td class="addSchedule23">
                                            <input class="date632" type="date" value="2020-01-14">
                                            &nbsp;
                                            <input class="date632" type="time" value="15:00">
                                            &nbsp;~&nbsp;
                                            <input  class="date632"type="time" value="18:00">
                                            &nbsp;&nbsp;
                                            <input class="btn24" type="button" value="일정 추가">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td class="addSchedule23">
                                            <input class="date632" type="date" value="2020-01-15">
                                            &nbsp;
                                            <input class="date632" type="time" value="15:00">
                                            &nbsp;~&nbsp;
                                            <input  class="date632"type="time" value="18:00">&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">장소</td>
                                        <td>
                                            <input id="basicAddr" type="text" placeholder="기본 주소" value="서울특별시 신사동">
                                            &nbsp;&nbsp;
                                            <input class="btn24" type="button" value="주소 찾기">
                                            <br>
                                            <input id="detailAddr" type="text" placeholder="상세 주소" value="압구정로 12길 46">
                                        </td>
                                    </tr>
                            </table>
                            <br><br><br>
                            <h5 class="tline1row textAreaTitle23">수업 소개</h5>
                            <textarea name="" id="" class="centents263425" cols="90" rows="7">
                                -----------------------------------------------------------------
효과적인 맞춤식 수업을 위해 각 시간 1~4인 소수 그룹으로만 선착순 마감합니다.
아래 [수업 대상]란에서 수업 신청 가능 시간을 꼭! 확인하세요^^
------------------------------------------------------------------
+ 진짜 내가 찍은 영상을 가지고 수업하고 싶은데?
+ 요즘 뜨는 회사들은 영상마케터가 꼭 있다지?
+ 방송국 PD들은 영상을 어떻게 만들지?
+ 유튜브로 어떻게 돈을 벌 수 있지? 시청률 분석도 된다고?
+ 다 필요 없고 내가 필요한 부분만 배우고 싶은데?
[기획 / 촬영 / 편집(프리미어) / 유튜브 분석, 장치 활용]


< 12시간만에 내 영상 유튜브에 올리기 프로젝트 >

어떤 영상을 만들고 싶은가요?

그 영상 우리 같이 실제로 만들어 봅시다!

고민만 했지 시작도 못 했던 내 영상 만들기!

실제 여러분의 영상들로 수업합니다. 첫 수업부터 바로 나의 여행 영상 뚝딱!!

12시간 만에 기획부터 촬영, 편집, 업로드까지 다 실제로 해봅시다!!

열정만 가져오세요. 어느 순간 만들어져 있는 자신의 영상을 보실 수 있습니다.


..(기획/촬영/편집)중 일부만 원하시는 분도 커리큘럼, 회차 조율하여 함께해요.
..본 수업은 어도비 프리미어 프로CC로 진행합니다.
..프리미어, 카메라 등이 없으셔도 도와드립니다.
                            </textarea>
                            <br><br>
                            <h5 class="tline1row textAreaTitle23">수업 대상</h5>
                            <textarea name="" id="" class="centents263425" cols="90" rows="7">
                                추천
    영상 입문자 ~ 초보자
    . 유튜브 / 페이스북 등의 영상 크리에이터가 되고 싶은 분
    . 스스로 회사 홍보영상을 제작하고자 하는 분
    . 진짜 내 영상을 가지고 수업하는 실습 수업을 희망하시는 분
    . 영상 포트폴리오가 필요하신 분(대외활동, 진학, 취업)

                            </textarea>
                            <br><br>
                            <h5 class="tline1row textAreaTitle23">커리큘럼</h5>
                            <textarea name="" id="" class="centents263425" cols="90" rows="7">
                                1회차
                                ** 신청자분의 열정에 맞추어 상시 수정합니다 **
                                
                                - 여행 영상 만들기
                                나의 추억 사진, 영상으로 뮤비만들기
                                
                                - 편집기(프리미어)와 친해지기
                                1. 영알못이 2시간만에 Vlog 만들기
                                ∙ 프리미어pro UI 및 용어
                                ∙ 작업 환경 설정하기 (비디오 기초 이해)
                                ∙ 미디어 가져오기, 내보내기
                                ∙ 기본편집 및 Work Flow실습
                                (자르기, 효과, BGM, 자막, 로고, 슬로우모션 등)
                                
                                => 샘플 영상 소스 또는 직접 찍은 영상으로 가장 많이 쓰이는 편집 작업 실습
                                2회차
                                ** 신청자분의 열정에 맞추어 상시 수정합니다 **
                                
                                - 편집기(프리미어)와 친해지기
                                2. 정밀 편집과 효과편집
                                ∙ 자막 및 타이틀 제작, 실습
                                ∙ PIP(Picture In Picture)의 모든 것 정리
                                ∙ 다양한 효과를 이용한 편집
                                ∙ 오디오 편집
                                
                                => 영상 소스 또는 직접 찍은 영상으로 가장 많이 쓰이는 편집 작업 실습
                            </textarea>
                            
                            <br><br>
                            <input type="submit" class="finalBtn24" value="수정"">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br><br><br><br><br>
                        </form>
                    </div>
                </div> 
            </div>
    </div>
</body>
</html>