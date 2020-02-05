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

function cancelClass(){
    var url = "../JH/cancelOrder.html";

    var option = "width= 700, height=800, top=100, left=800, location=no";

    window.open(url, "결제 취소하기", option);
}