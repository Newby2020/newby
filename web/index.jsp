<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새로운 취미를 찾아서 NEWBY</title>
 	
 	<link rel="stylesheet" href="/semi/resources/css/main-category.css">
 	<link rel="stylesheet" href="/semi/resources/css/main-panel.css">	
 	<link rel="stylesheet" href="/semi/resources/css/footer.css">
 	
 	<script src="/semi/resources/js/indexPage-category.js"></script>

	<script src="/semi/resources/jquery/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div id="Allpanel" align="center">
	<div class="index-body">
			<%@ include file="views/common/header.jsp" %>
		<br><br><br><br><br><br><br><br>
		<div id="mainPage_searchvar" style="margin-left: auto; margin-right: auto;">
			<label style="font-size: 45px;">당신이 찾는 
			<span style="font-size: 45px; color: rgb(9, 129, 241);">취미</span>는 무엇인가요?</label>
			
			<br><br><br><br>
			
			<div id="main_search">
				<div id="under_main_search">
					<img src="/semi/resources/images/magnifyingGlass.png" id="magnifyingGlass">
					<span id="searchDivider">|</span>
					<input type="text" id="searchArea" onclick="searchBar();" placeholder="  참가하고 싶은 클래스를 검색해 보세요">
					<button id="searchClass">클래스 찾기</button>
				</div>
			</div>
		</div>
		
		<br><br><br><br><br><br>
		<div>	
			<hr style="width: 70%; margin-bottom: 20px; border: 1.5px solid gainsboro;" align="center">
		</div>
		<br>
		<div style="width: 50%; float: left;">
			<label style="text-align: left; font-size: 20px;">#신나는 #차분한</label>
		</div>	
		
		<br><br>
		
		<div id="newby-body-panel">
              <div id="chr-category">
                <div class="chr-category">
                    <div class="img-category">
                    	<img src="/semi/resources/images/active1.jpg" id="chr-category-img" onclick="dynamicImg();">
                    </div>
                    <div style="padding: 10px;">
                    	<p class="mention-categoty">#신나는</p>
                    	<p class="mention-categoty">#활기찬</p>
                    	<p class="mention-categoty">#여럿 혹은 많은 사람들과</p>
                    </div>
                </div>
                
                <div class="chr-category">
                	<div class="img-category">
                		<img src="/semi/resources/images/quiet1.jpg" id="chr-category-img" onclick="staticImg();">
                	</div>
                	<div style="padding: 10px;">
                    	<p class="mention-categoty">#차분한</p>
                    	<p class="mention-categoty">#조용한</p>
                    	<p class="mention-categoty">#소수의 사람들 또는 혼자</p>
                    </div>
                </div>
              </div>

			  <br><br>
			  <hr style="width: 100%; border: 1.5px solid #ebeef3;" align="center">
			  <br><br>
			  
              <div class="main-category-sum">
                <div class="main-category" id="cate-activity">
                <img class="card-img-top" src="/semi/resources/images/activities.png" onclick="activityImg();"><br>
             	      액티비티
                </div>
                <div class="main-category" id="cate-art">          
                <img class="card-img-top" src="/semi/resources/images/art2.png" onclick="artImg();"><br>
                	    예술
                </div>
                <div class="main-category" id="cate-cooking">
                <img class="card-img-top" src="/semi/resources/images/cook2.png" onclick="cookingImg();"><br>  
                	    쿠킹
                </div>
                <div class="main-category" id="cate-it">
                <img class="card-img-top" src="/semi/resources/images/it2.png" onclick="eduImg();"><br>
                   	 교육
                </div>
            </div>

        </div>
        
        <%@ include file = "views/common/footer.jsp" %>
     </div> 
	 </div>     
	 <script>
	 </script>
</body>
</html>