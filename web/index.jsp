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
<link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">

<script src="/semi/resources/js/indexPage-category.js"></script>
<script src="/semi/resources/js/mainIndex.js"></script>
<script src="/semi/resources/js/jquery-3.4.1.min.js"></script>

	 <style>
        *{
            font-family: 'Noto Sans KR', sans-serif;  
         }
     </style>

</head>
<body>
	<div id="Allpanel" align="center">
		<div class="index-body">
			<%@ include file="views/common/header.jsp"%>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<div id="mainPage_searchvar"
				style="margin-left: auto; margin-right: auto;">
				<label style="font-size: 45px;">당신이 찾는 <span
					style="font-size: 45px; color: rgb(9, 129, 241);">취미</span>는 무엇인가요?
				</label> <br>
				<br>
				<br>
				<br>

				<div id="main_search">
					<div id="under_main_search">
						<img src="/semi/resources/images/magnifyingGlass.png"
							id="magnifyingGlass"> <span id="searchDivider">|</span> <input
							type="text"  id="searchArea"
							placeholder="  참가하고 싶은 클래스를 검색해 보세요">
						<button id="searchClass" onclick="searchBar();">클래스 찾기</button>
					</div>
				</div>
			</div>

			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<div>
				<hr
					style="width: 70%; margin-bottom: 20px; border: 1.5px solid #ebeef3;"
					align="center">
			</div>
			<br>
			<div style="width: 50%; float: left;">
				<label style="text-align: left; font-size: 20px;">#신나는 #차분한</label>
			</div>

			<br>
			<br>

			<div id="newby-body-panel">
				<div id="chr-category">
					<div class="chr-category">
						<div class="img-category">
							<img src="/semi/resources/images/active1.jpg"
								id="chr-category-img" onclick="dynamicImg();">
						</div>
						<div style="padding: 10px;">
							<p class="mention-category">#신나는</p>
							<p class="mention-category">#활기찬</p>
							<p class="mention-category">#여럿 혹은 많은 사람들과</p>
						</div>
					</div>

					<div class="chr-category">
						<div class="img-category">
							<img src="/semi/resources/images/quiet1.jpg"
								id="chr-category-img" onclick="staticImg();">
						</div>
						<div style="padding: 10px;">
							<p class="mention-category">#차분한</p>
							<p class="mention-category">#조용한</p>
							<p class="mention-category">#소수의 사람들 또는 혼자</p>
						</div>
					</div>
				</div>

				<br>
				<br>
				<div>
					<hr
						style="width: 100%; margin-bottom: 20px; border: 1.5px solid #ebeef3;"
						align="center">
				</div>
				<br>
				<div style="width: 25%; float: left;">
					<label style="text-align: left; font-size: 20px;">#해시태그</label>
				</div>
				<br>
				<br>
				<br>
				<br>

				<div id="main-category-sum">
					<div class="main-category">
						<div class="img-category1">
							<img class="card-img-top" src="/semi/resources/images/sports.jpg"
								onclick="activityImg();">
						</div>
						<div style="height: 30px;">
							<p class="mention-category1" style="margin-top: 5px;">액티비티</p>
						</div>
					</div>

					<div class="main-category">
						<div class="img-category1">
							<img class="card-img-top" src="/semi/resources/images/cook.jpg"
								onclick="cookingImg();">
						</div>
						<div style="height: 30px;">
							<p class="mention-category1" style="margin-top: 5px;">쿠킹</p>
						</div>
					</div>


					<div class="main-category">
						<div class="img-category1">
							<img class="card-img-top" src="/semi/resources/images/art.jpg"
								onclick="artImg();">
						</div>
						<div style="height: 30px;">
							<p class="mention-category1" style="margin-top: 5px;">예술</p>
						</div>
					</div>

					<div class="main-category">
						<div class="img-category1">
							<img class="card-img-top" src="/semi/resources/images/edu.jpg"
								onclick="eduImg();">
						</div>
						<div style="height: 30px;">
							<p class="mention-category1" style="margin-top: 5px;">교육</p>
						</div>
					</div>
				</div>
			</div>

			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>

			<%@ include file="views/common/footer.jsp"%>
		</div>

	</div>

	<script>
	 	
	 	
		$("#searchClass").click(function(){
		   var keyword = $("#searchArea").val();
		    location.href="/semi/searchList.ca?keyword="+keyword;
		});
	 
	 </script>
</body>
</html>