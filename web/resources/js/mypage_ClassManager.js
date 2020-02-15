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


// 수정
$(".modiBtn").click(function(){
var cno = $(this).closest("tr").find('.hv').val();
	alert(cno);
});

// 취소 처리
$(".delBtn").click(function(){
	var cno = $(this).closest("tr").find('.hv').val();
	alert(cno);
	var cname= $(this).closest("tr").find('.hv2').val();
	var delYN= confirm(cname+"를 정말 취소하시겠습니까?");
	if(delYN){
		location.href="/semi/delClass.do?cno="+cno;
	} else {
		alert("여기");
	}
});


