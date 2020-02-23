var dropdown = document.getElementsByClassName("dropdown-btnqo");
var i;

for (i = 0; i < dropdown.length; i++) {
    dropdown[i].addEventListener("click", function() {
    this.classList.toggle("activeCl");
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === "block") {
    dropdownContent.style.display = "none";
    } else {
    dropdownContent.style.display = "block";
    }
    });
}


// 클래스명 글자수 제한
	function limitText(limitField, limitCount, limitNum) {
	    if (limitField.value.length > limitNum) {
	       limitField.value = limitField.value.substring(0, limitNum);
	   } else {
	       limitCount.value = limitField.value.length;
	   }
	}

	
// 카테고리 선택시 세부카테고리 다름 적용
var sl1 = document.getElementById('sl1');
var sl2 = document.getElementById('sl2');
var sl3 = document.getElementById('sl3');

function selectCategory1(){

    var sl11 = sl1.options[document.getElementById('sl1').selectedIndex].value;
	if(sl11 == "신나는" || sl11 == "차분한" ){
		sl2.innerHTML = "<option value='' selected>2차</option><option value='액티비티'>액티비티</option><option value='쿠킹'>쿠킹</option><option value='예술'>예술</option><option value='교육'>교육</option>";
	} else {
        sl2.innerHTML = "<option value='' selected>2차</option>";
        sl3.innerHTML ="<option value='' selected>2차</option>";
    }
	
}
function selectCategory2(){

    var sl22 = sl2.options[document.getElementById('sl2').selectedIndex].value;
    if(sl22 == "액티비티"){
        sl3.innerHTML = "<option value='' selected>3차</option><option value='스포츠'>스포츠</option><option value='아웃도어'>아웃도어</option>";
    } else if(sl22 == "쿠킹"){
        sl3.innerHTML = "<option value='' selected>3차</option><option value='쿠킹'>쿠킹</option><option value='베이킹'>베이킹</option>";
    } else if(sl22 == "예술"){
        sl3.innerHTML = "<option value='' selected>3차</option><option value='미술'>미술</option><option value='음악'>음악</option><option value='사진'>사진</option><option value='공예'>공예</option>";
    } else if(sl22 == "교육"){
    	sl3.innerHTML = "<option value='' selected>3차</option><option value='어학'>어학</option><option value='IT'>IT</option><option value='실무'>실무</option>";
    } else {
    	sl3.innerHTML ="<option value='' selected>3차</option>";
    }
}


// 인원수 readonly 유무체크
function oneNOneCheck(){
	$('#MaxNum').val(1);
	$('#MaxNum').prop("readonly", true).css("backgroundColor","#f1f1f1");
	
}
function groupCheck(){
	$('#MaxNum').prop("readonly", false).css("backgroundColor","white").select();
}


// 가격 세자리 수마다 자동 표시
function markPer3digit(obj) {
    
    // 콤마( , )의 경우도 문자로 인식되기때문에 콤마를 따로 제거한다.
    var deleteComma = obj.value.replace(/\,/g, "");

    // 콤마( , )를 제외하고 문자가 입력되었는지를 확인한다.
    if(isFinite(deleteComma) == false) {
        alert("문자는 입력하실 수 없습니다.");
        obj.value = "";
        return false;
    }
   
    // 기존에 들어가있던 콤마( , )를 제거한 이 후의 입력값에 다시 콤마( , )를 삽입한다.
    obj.value = inputNumberWithComma(inputNumberRemoveComma(obj.value));
}


// 천단위 이상의 숫자에 콤마( , )를 삽입하는 함수
function inputNumberWithComma(str) {

    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
}


// 콤마( , )가 들어간 값에 콤마를 제거하는 함수
function inputNumberRemoveComma(str) {

    str = String(str);
    return str.replace(/[^\d]+/g, "");
}



// 파일 업로드 시 프리뷰
function readURL(input) {
	var pview = document.getElementById('blah');
	pview.style.display = 'block';
	var locateImg = document.getElementById('loca-label');
	if (input.files && input.files[0]) {
	   var reader = new FileReader();
	
	   reader.onload = function (e) {
	       $('#blah').attr('src', e.target.result);
	   };
	
	   reader.readAsDataURL(input.files[0]);
	}
	var img1 = document.getElementById('img1');
	img1.style.display="none";
	var img2 = document.getElementById('img2');
	img2.style.marginTop = '40px';
	img2.style.marginBottom = '40px';
	img2.style.display="block";
}


// 새로고침
function reload1(){
	var img1 = document.getElementById('img1');
	img1.style.display="block";
	var img2 = document.getElementById('img2');
	var pview = document.getElementById('blah');
	img2.style.display="none";
	pview.style.display="none";
}


// 불규칙 날짜 설정
function addSchedule(){
    var div = document.getElementById('div11');
    div.innerHTML += "<br><input name='cdate' type='date' class='dataCl'>&nbsp;&nbsp;&nbsp;<input name='stime' type='time' class='dataCl'>&nbsp;&nbsp;";
}


// 일정 항목 추가 및 삭제
$(function(){
	$(document).on('click','#ss',function(){
		$('#div11')
		.append('<div><input name="cdate" type="date" class="dataCl">&nbsp;&nbsp;<input name="stime" type="time" class="dataCl">&nbsp;&nbsp;<img id="delImg" class="item1" src="/semi/resources/images/deleteImg.png" alt="xIcon"></div>');       
	});
	
	$(document).on('click','.item1',function(){
		$(this).parent().remove();
	});
});


// 주소 API
function SearchAddr() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById("basicAddr").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("detailAddr").select();
        }
    }).open();
}


//수강대상글 글자수 제한
function limitText(limitField, limitCount, limitNum) {
    if (limitField.value.length > limitNum) {
       limitField.value = limitField.value.substring(0, limitNum);
   } else {
       limitCount.value = limitField.value.length;
   }
}

// 등록 버튼 확인
function enrollBtn(){
	if(confirm("클래스 등록하시겠습니까?")){
		location.href="/semi/cSelHno.do";
	} else {
		return false;
	}
}

// 취소 버튼 확인(등록)
function cancelBtn(){
	if(confirm("정말로 클래스 등록을 취소하시겠습니까?")){
		location.href="/semi/cSelHno.do";
	}
}

// 수정 버튼 확인
function updateBtn(){
	if(confirm("클래스 수정하시겠습니까?")){
		location.href="/semi/cSelHno.do";
	} else {
		return false;
	}
}

// 취소 버튼 확인 (수정)
function cancelBtn1(){
	if(confirm("정말로 클래스 수정을 취소하시겠습니까?")){
		location.href="/semi/cSelHno.do";
	}
}

