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

// 일정 항목 추가
function addSchedule(){
    var ss = document.getElementById('sss');
    ss.innerHTML = "<span style='font-size: 10pt;'>시작날짜 </span>&nbsp;&nbsp;<input class='date632' name='classDate' type='date'>&nbsp;&nbsp;<input class='btn24' type='button' value='기간 설정' onclick='addSchedule();'><br><span style='font-size: 10pt;'>종료날짜</span>&nbsp;&nbsp;&nbsp;<input class='date632' name='classDate' type='date'>&nbsp;&nbsp;";
}
   
// 주소 API
// 참조 API : http://postcode.map.daum.net/guide
function addrSearch() {
   new daum.Postcode({
       oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

           // 각 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var fullAddr = ''; // 최종 주소 변수
           var extraAddr = ''; // 조합형 주소 변수

           // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
           if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
               fullAddr = data.roadAddress;

           } else { // 사용자가 지번 주소를 선택했을 경우(J)
               fullAddr = data.jibunAddress;
           }

           // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
           if(data.userSelectedType === 'R'){
               //법정동명이 있을 경우 추가한다.
               if(data.bname !== ''){
                   extraAddr += data.bname;
               }
               // 건물명이 있을 경우 추가한다.
               if(data.buildingName !== ''){
                   extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
               }
               // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
               fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
           }
           
           $('#Addr1').val(fullAddr);

           // 커서를 상세주소 필드로 이동한다.
           $('#Addr2').focus();
       }
   }).open();
};
   

   
   
   
   
   