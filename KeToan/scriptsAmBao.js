// JScript File

var ycttTimer = "";
var smsTimer = "";

startTimers();

function startTimers() {
    ycttTimer = window.setInterval("GetSound()", 3100);
    smsTimer = window.setInterval("GetSMS()", 7100);
}

function stopTimers() {
    window.clearInterval(ycttTimer);
    ycttTimer = "";
    window.clearInterval(smsTimer);
    smsTimer = "";
}

function Leave() {
    stopTimers();
}

function GetSound() {    
    PageMethods.amBao(play, playError);
}
function play(res) {
    if (res == "S")
        location.reload(true);
}

function playError(res) {
    alert(res);
}

function GetSMS() {
    PageMethods.getSMS(showSMS, showError);
}

function showSMS(res) {
    if (res != "" && res != null)
        alert(res);
}

function showError(res) {
    alert(res);
}