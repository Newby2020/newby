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
	if(sl11 == "동적" || sl11 == "정적" ){
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

	
// image upload method
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            var bla = document.getElementById("blah");

            bla.setAttribute('src', e.target.result);
        };

        reader.readAsDataURL(input.files[0]);
    }
}


// 원데이 날짜 설정
function onedayClass(){
	var ss = document.getElementById('modiTd');
	ss.innerHTML = "<span style='font-size: 10pt;'>원데이</span>&nbsp;&nbsp;<input class='dataCl' name='classDate' type='date'>&nbsp;&nbsp;<input class='btn24' type='button' value='기간 설정' onclick='increasePeriod();'>";
}


// 기간 설정
function increasePeriod(){
    var ss = document.getElementById('modiTd');
    ss.innerHTML = "<span style='font-size: 10pt;'>시작날짜 </span>&nbsp;&nbsp;<input class='dataCl' name='classDate' type='date'>&nbsp;&nbsp;<input class='btn24' type='button' value='되돌아가기' onclick='onedayClass();'><br><span style='font-size: 10pt;'>종료날짜</span>&nbsp;&nbsp;&nbsp;<input class='dataCl' name='classDate' type='date'>&nbsp;&nbsp;";
}


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
            document.getElementById('zipCode13').value = data.zonecode;
            document.getElementById("basicAddr").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("detailAddr").focus();
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
