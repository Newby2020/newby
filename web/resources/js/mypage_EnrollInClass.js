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

// 프리뷰
var sel_files =[];
$(document).ready(function(){
    $('#input_imgs').on("change", handleImgsFilesSelect);
});

function handleImgsFilesSelect(e){
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
    if(files.length <= 6){
        filesArr.forEach(function(f){
            if(!f.type.match("image.*")){
                alert("확장자는 이미지 확장자만 가능합니다.");
                return;
            }
            sel_files.push(f);

            var reader = new FileReader();
            reader.onload = function(e){
            	var img_html = "<img width='50px' height='50px'; style='margin:3px; border: 2px solid rgb(9, 129, 241);border-radius: 3px;' name='inputImgs' src=\"" + e.target.result + "\" /><input type='hidden' name='imgsSrc' value='"+e.target.result+"'>";
                $(".imgs_wrap").append(img_html);
            }
            reader.readAsDataURL(f);
        });
        
//        for(var i=0; i<files.lenth; i++){
//        	console.log(i+"번째의 "+sel_files[i]);
//        }
    } else {
        alert("이미지파일 6개 이하로 업로드해주세요.");
    }
    
}













//// 다중 이미지 업로드 후 프리뷰
//function handleFileSelect(event) {
//    //Check File API support
//    if (window.File && window.FileList && window.FileReader) {
//
//        var files = event.target.files; //FileList object
//        var output = document.getElementById("result");
//        
//        output.innerHTML="";				// 이미지 재업로드시 리셋 기능
//        
//        if(files.length<=4){                        // 이미지 업로드 제한 갯수 설정
//
//            for (var i = 0; i < files.length; i++) {
//                var file = files[i];
//
//                //Only pics
//                if (!file.type.match('image')) continue;
//
//                var picReader = new FileReader();
//                picReader.addEventListener("load", function (event) {
//                    var picFile = event.target;
//                    var span = document.createElement("span");
//                    span.innerHTML = "<img id='imgs' name='uploadImgs[]' class='thumbnail' src='" + picFile.result + "'" + "title='" + file.name + "' width='50px' height='50px'; style='border: 2px solid rgb(9, 129, 241); border-radius: 3px;'/>";
//                    console.log();
//                    output.insertBefore(span, null);
//                });
//                //Read the image
//                picReader.readAsDataURL(file);
//            }
//        } else {
//            alert("이미지파일 4개 이하로 업로드해주세요.");
//        }
//    } else {
//        console.log("Your browser does not support File API");
//    }
//}
//
//document.getElementById('files').addEventListener('change', handleFileSelect, false);
//
//// 프리뷰 나타내기
//function displayPreview(){
//	
//	var pView = document.getElementById('pView');
//	pView.style.display='flex';
//}

// 불규칙 날짜 설정
function addSchedule(){
    var div = document.getElementById('div11');
    div.innerHTML += "<br><input name='classDate1' type='date' class='dataCl'>&nbsp;&nbsp;<input name='startTime1' type='time' class='dataCl'>&nbsp;&nbsp;~&nbsp;&nbsp;<input name='endTime1' type='time' class='dataCl'>";
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
