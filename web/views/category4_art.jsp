<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <title>예술</title>
    <link rel="stylesheet" href="../resources/css/jquery-ui.css">
    <link rel="stylesheet" href="../resources/css/category_sh.css">
    <script src="../resources/js/jquery-1.12.4.js"></script>
    <script src="../resources/js/jquery-ui.js"></script>
    <script src="../resources/js/category-sh.js"></script>
</head>
<body>
    <!-- Head Navigation -->
    <div style="height: 5px;"></div>
    <div class="top" style="z-index: 99;">
        <label id="logo">
            <a href="NewbyMainpage.jsp"><img src="../resources/css/logo2(288x106).png" alt="로고" height="60px" id="newby-logo" ></a>
        </label>

        <label id="login" class="top-nav">
            로그인 |
        </label>
        <label id="signIn" class="top-nav">
            <a href="SignIn.jsp">회원가입 |</a>
        </label>&nbsp;&nbsp;&nbsp;
        <label id="toHost" class="top-nav">
            <a href="Host_SignIn.jsp">호스트신청 |</a>
        </label>&nbsp;&nbsp;&nbsp;
        <label id="customer" class="top-nav">
            <a href="Inquiry.jsp">고객센터 |</a>
        </label>&nbsp;&nbsp;&nbsp;
        <label id="myPage" class="top-nav">
            <a href="AccountPage.jsp">마이페이지 |</a>
        </label>
    </div>

    <!-- Head Category Navi -->
    <div class="head_class_navi">
        <div class="cl_title">
            <br>
            <!-- <div class="c_ttl" ><h3 style="color: #212a30; font-weight: 600;">당신의 취미는 무엇인가요?</h3></div>
            <br> -->
            <div class="cate_list">
                <ul id="shcaul1">
                    <li class="cate_tt_sh"  id="title0">
                        <a href="category0_dynamic.jsp">
                                <div id="cate0" ><div class="tt_circle" id="ttc0" style="visibility: hidden;"></div>동적 액티비티</div>
                        </a>
                    </li>
                    <li class="cate_tt_sh1" >
                        <a >
                            <div id="cate0w"> </div> <!--간격용 li-->
                        </a>
                    </li>
                    <li class="cate_tt_sh"  id="title1">
                        <a href="category1_static.jsp">
                            <div id="cate1"><div class="tt_circle" id="ttc1" style="visibility: hidden;"></div>정적 액티비티</div>
                        </a>
                    </li>
                    <li class="cate_tt_sh1" >
                        <a >
                            <div id="cate1w"> </div>
                        </a>
                    </li>

                    <br>
                    <br>
                    <hr>
                    <br>
                    <li class="cate_tt_sh"  id="title2">
                        <a href="category2_activity.jsp">
                            <div id="cate2" ><div class="tt_circle" id="ttc2" style="visibility: hidden;"></div>액티비티</div>
                        </a>
                    </li>
                    <li class="cate_tt_sh1" >
                        <a >
                            <div id="cate2w"> </div>
                        </a>
                    </li>
                    <li class="cate_tt_sh"  id="title3">
                        <a href="category3_coocking.jsp">
                            <div id="cate3" ><div class="tt_circle" id="ttc3"style="visibility: hidden;" ></div>쿠킹</div>
                        </a>
                    </li>
                    <li class="cate_tt_sh1" >
                        <a >
                            <div id="cate3w"> </div>
                        </a>
                    </li>
                    <li class="cate_tt_sh"  id="title4">
                        <a href="category4_art.jsp">
                            <div id="cate4" style="font-weight: 600;"><div class="tt_circle" id="ttc4"></div>예술</div>
                        </a>
                    </li>
                    <li class="cate_tt_sh1" >
                        <a >
                            <div id="cate4w"> </div>
                        </a>
                    </li>
                    <li class="cate_tt_sh"  id="title5">
                        <a href="category5_study.jsp">
                            <div id="cate5"><div class="tt_circle" id="ttc5" style="visibility: hidden;"></div>교육</div>
                        </a>
                    </li>
                    <li class="cate_tt_sh1" >
                        <a >
                            <div id="cate5w"> </div>
                        </a>
                    </li>
                </ul>
                <!-- <li class="cate_tt_sh2" >
                    <a >
                    </a>
                </li> -->
                <!-- check박스 옵션 -->
                <div id="cate6check">필터 상세보기 <span id="c_tri">▽ </span></div>
            </div>
        </div>
        <br>
        <form class="category_form">
            <div class="sub_ca">
            </div>
            <div class="location">
                <div id="loca">수업장소  </div>
                <select id="selLoca">
                    <option value="anywhere">서울</option>
                    <option value="sNorth">강북</option>
                    <option value="sEast">강동</option>
                    <option value="sSouth">강남</option>
                    <option value="sWest">강서</option>
                </select>
            </div>
            <div class="cate_btn">

                <div class="cate" id="caBtn1" onclick="shmenuView1(0)" style="background: rgba(0, 129, 250, 0.137);">분류</div>
                <div class="cate" id="caBtn2" onclick="shmenuView1(1)" style="background: rgba(0, 129, 250, 0.137);">언제</div>
                <div class="cate" id="caBtn3" onclick="shmenuView1(2)">수업방식</div>
                <div class="cate" id="caBtn4" onclick="shmenuView1(3)">금액</div>
                
                
            <div class="cate_sub">
                <div class="catesub_list cates" id="sub0">
                    <div class="main_sub_caca">
                        <div class="act_group_sh" style="display: none;">
                            <li><a href="#" >스포츠</a></li>
                            <li><a href="#">아웃도어</a></li>
                        </div>
                        <div class="cook_group_sh" style="display: none;">
                            <li><a href="#">쿠킹</a></li>
                            <li><a href="#">베이킹</a></li>
                        </div>
                        <div class="art_group_sh">
                            <li><a href="#">미술</a></li>
                            <li><a href="#">음악</a></li>
                            <li><a href="#">사진</a></li>
                            <li><a href="#">공예</a></li>
                        </div>
                        <div class="std_group_sh" style="display: none;">
                            <li><a href="#">어학</a></li>
                            <li><a href="#">IT</a></li>
                            <li><a href="#">실무</a></li>
                        </div>
                    </div>
                </div>
                <div class="catesub_list cates" id="sub1" style="display:none">
                    <div class="main_sub_caca">
                        <li><a>월</a></li>
                        <li><a>화</a></li>
                        <li><a>수</a></li>
                        <li><a>목</a></li>
                        <li><a>금</a></li>
                        <li><a>토</a></li>
                        <li><a>일</a></li>
                    </div>
                </div>
                <div class="catesub_list cates" id="sub2" style="display:none">
                    <div class="main_sub_caca">
                        <li><a href="#">원데이</a></li>
                        <li><a href="#">1 : 1</a></li>
                        <li><a href="#">그룹</a></li>
                    </div>
                </div>
                <div class="catesub_list cates" id="sub3" style="display:none">
                    <div class="cate_price">
                        <div class="slide">
                                <p>
                                    <label for="amount">가격 : </label>
                                    <input type="text" id="amount" readonly style="border:0; color: #0981F1; font-size: 18px; font-weight: bold;">
                                    <br>
                                    <br>
                                  </p>
                                   
                                  <div id="slider-range"></div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </form>
    </div>
            <!-- sort select -->
    <div class="CCCC">
        <div class="con-wrap">
            <div class="con_sort">
                <label for="">정렬 </label>
                <select name="" id="cl_sort_select" style="color: #818181;"> 
                    <option value="">인기순 </option>
                    <option value="">별점순 </option>
                    <option value="">가격 높은순</option>
                    <option value="">가격 낮은순</option>
                </select>
            </div>

            <div class="container_a">
                <!-- 컨텐츠 안에 들어가는 a태그 -->
                <a href="" class="content_a" id="con_0" href="#">
                    <div class="content_a_back" style=" background-image: url('https://mymodernmet.com/wp/wp-content/uploads/2019/03/elements-of-art-6.jpg')"></div>
                    <div class="cont_a_profile">
                            <div class="cont_a_p_title">
                                산토끼 토끼야 어디를 가느냐 깡총깡총 뛰면서 어디를 가느냐낭러ㅣㄴ
                            </div>
                            <div class="c_etc">
                                <div class="cont_a_p_loca"><span>서울시/강남</span></div>
                                <div class="cont_a_p_star"><span id="c_star">★</span><span>4.5</span></div>
                            </div>
                            <div class="cont_a_p_price"><span id="c_price"></span>
                               143,000원
                            </div>
                    </div>
                </a>
                <a href="" class="content_a" id="con_1" href="#">
                    <div class="content_a_back" style=" background-image: url('https://mymodernmet.com/wp/wp-content/uploads/2019/03/elements-of-art-6.jpg')"></div>
                    <div class="cont_a_profile">
                            <div class="cont_a_p_title">
                                산토끼 토끼야 어디를 가느냐 깡총깡총 뛰면서 어디를 가느냐낭러ㅣㄴ
                            </div>
                            <div class="c_etc">
                                <div class="cont_a_p_loca"><span>서울시/강남</span></div>
                                <div class="cont_a_p_star"><span id="c_star">★</span><span>4.5</span></div>
                            </div>
                            <div class="cont_a_p_price"><span id="c_price"></span>
                               143,000원
                            </div>
                    </div>
                </a>
                <a href="" class="content_a" id="con_2" href="#">
                    <div class="content_a_back" style=" background-image: url('https://mymodernmet.com/wp/wp-content/uploads/2019/03/elements-of-art-6.jpg')"></div>
                    <div class="cont_a_profile">        
                            <div class="cont_a_p_title">
                                산토끼 토끼야 어디를 가느냐 깡총깡총 뛰면서 어디를 가느냐낭러ㅣㄴ
                            </div>
                            <div class="c_etc">
                                <div class="cont_a_p_loca"><span>서울시/강남</span></div>
                                <div class="cont_a_p_star"><span id="c_star">★</span><span>4.5</span></div>
                            </div>
                            <div class="cont_a_p_price"><span id="c_price"></span>
                               143,000원
                            </div>
                    </div>
                </a>
                <br>
                <br>
                <a href="" class="content_a" id="con_3" href="#">
                    <div class="content_a_back" style=" background-image: url('https://mymodernmet.com/wp/wp-content/uploads/2019/03/elements-of-art-6.jpg')"></div>
                    <div class="cont_a_profile">
                            <div class="cont_a_p_title">
                                산토끼 토끼야 어디를 가느냐 깡총깡총 뛰면서 어디를 가느냐낭러ㅣㄴ
                            </div>
                            <div class="c_etc">
                                <div class="cont_a_p_loca"><span>서울시/강남</span></div>
                                <div class="cont_a_p_star"><span id="c_star">★</span><span>4.5</span></div>
                            </div>
                            <div class="cont_a_p_price"><span id="c_price"></span>
                               143,000원
                            </div>
                    </div>
                </a>
                <a href="" class="content_a" id="con_4" href="#">
                    <div class="content_a_back" style=" background-image: url('https://mymodernmet.com/wp/wp-content/uploads/2019/03/elements-of-art-6.jpg')"></div>
                    <div class="cont_a_profile">
                            <div class="cont_a_p_title">
                                산토끼 토끼야 어디를 가느냐 깡총깡총 뛰면서 어디를 가느냐낭러ㅣㄴ
                            </div>
                            <div class="c_etc">
                                <div class="cont_a_p_loca"><span>서울시/강남</span></div>
                                <div class="cont_a_p_star"><span id="c_star">★</span><span>4.5</span></div>
                            </div>
                            <div class="cont_a_p_price"><span id="c_price"></span>
                               143,000원
                            </div>
                    </div>
                </a>
                <a href="" class="content_a" id="con_5" href="#">
                    <div class="content_a_back" style=" background-image: url('https://mymodernmet.com/wp/wp-content/uploads/2019/03/elements-of-art-6.jpg')"></div>
                    <div class="cont_a_profile">
                            <div class="cont_a_p_title">
                                산토끼 토끼야 어디를 가느냐 깡총깡총 뛰면서 어디를 가느냐낭러ㅣㄴ
                            </div>
                            <div class="c_etc">
                                <div class="cont_a_p_loca"><span>서울시/강남</span></div>
                                <div class="cont_a_p_star"><span id="c_star">★</span><span>4.5</span></div>
                            </div>
                            <div class="cont_a_p_price"><span id="c_price"></span>
                               143,000원
                            </div>
                    </div>
                </a>
                
            </div>
            <br>
            <div class="moreBtnSh" id="mbtn_sh"> 예술 클래스 전체보기 </div>
            <br>
            <div class="pagelink_csh" id="pglk_sh">
                <div class="page_sh">
                    <li><<</li>
                    <li><</li>
                    <li></li>
                    <li><strong><span id="c_star">1</span></strong></span></li>
                    <li>2</li>
                    <li>3</li>
                    <li>4</li>
                    <li>5</li>
                    <li>6</li>
                    <li></li>
                    <li>></li>
                    <li>>></li>
                </div>
            </div>
    </div>
</div>
    <br><br>
</div>
</body>
</html>