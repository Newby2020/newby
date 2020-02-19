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

var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
    dropdown[i].addEventListener("click", function() {
    this.classList.toggle("active");
var dropdownContent = this.nextElementSibling;
if (dropdownContent.style.display === "block") {
    dropdownContent.style.display = "none";
} else {
dropdownContent.style.display = "block";
}
});
}

function selectEmail(){
    var ev = document.getElementById('emainAddr1sd');
    var sl1 = document.getElementById('select1sdknw');
    for(var i = 0; i<sl1.length; i++){
        if(sl1[i].selected ==true){
           ev.value = sl1[i].value;
        }
    }
}

function pwdScreen(){
var dp1 = document.getElementById('pwdbtn1cke');
var dp2 = document.getElementById('pwdbtn2cke');
dp1.style.display = "none";
dp2.style.display = "block";
}