// ------------------ Modal--------------------------------
// Get the modal
var contents = document.getElementById("contentsOfReport");
var suspend = document.getElementById("suspend");

// Get the button that opens the modal
var btn1 = document.getElementById("cotentsBtn");
var btn2 = document.getElementById("suspendBtn");

// Get the <span> element that closes the modal
// var span = document.getElementsByClassName("close")[0];
var close1 = document.getElementById('close1');
var close2 = document.getElementById('close2');

// When the user clicks the button, open the modal 
btn1.onclick = function () {
    contents.style.display = "block";
}
btn2.onclick = function () {
    suspend.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
close1.onclick = function () {
    contents.style.display = "none";
}
close2.onclick = function () {
    suspend.style.display = "none";
}

// --------------- submit 조건문 ---------------
function confirm() {
    if (document.getElementById('textarea').value == "") {
        alert("정지 사유를 입력해 주세요.");
        return false;
    }
    return true;
}