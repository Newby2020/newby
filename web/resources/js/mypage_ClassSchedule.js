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

//취소 처리
$(".delBtn").click(function(){
	var pno = $(this).closest("tr").find('.hv').val();
	var psno = $(this).closest("tr").find('.hv3').val();
	
	var cname = $(this).closest("tr").find('.hv2').val();
	var delYN= confirm(cname+"를 정말 취소하시겠습니까?");
	if(delYN){
		alert();
			location.href="/semi//cancelPay.do?pno="+pno+"&psno="+psno;//////////////////// 정후형꺼 넣으면 됨(pno 넣어서)
	}
});