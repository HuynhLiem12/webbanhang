// JScript File

var bepAnTimer = "";

startTimers(); // chay ham updateUser() va updateMembers() theo tung khoang thoi gian thong qua ham setInterval

function startTimers() {
    bepAnTimer = window.setInterval("GetSound()", 3000);
}

function stopTimers() {
    window.clearInterval(bepAnTimer);
    bepAnTimer = "";
}

function Leave() {
    stopTimers();
}

function GetSound() {
    
    var cbb = $get("ctl00_MainContent_cbBep_I");
    var tenBep = cbb.value.toString();
    PageMethods.amBao(tenBep, play, playError);
    
}
function play(res) {
    if (res == "S")
        play_single_sound();
}
function playError(res) {
    alert(res);
}