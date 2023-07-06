// JScript File

function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') c = c.substring(1);
        if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
    }
    return "";
}

function grid_CustomButtonClick(s, e) {
    if (e.buttonID != 'del') return;
    rowVisibleIndex = e.visibleIndex;
    //e.processOnServer = confirm("Really want to delete?");
    s.GetRowValues(rowVisibleIndex, 'ID', NauXong);
    DeleteGridRow(rowVisibleIndex);
}

function DeleteGridRow(visibleIndex) {
    gvBep.DeleteRow(visibleIndex);
}

function NauXong(rowID) {
    var nx = getCookie('NauXong').replace(new RegExp('_' + rowID, 'g'), '');
    setCookie('NauXong', nx, 1);
    PageMethods.XoaNau(rowID, updateNau, errorNau);
    //alert(rowID);
    //setCookie('NauXong', '', 1);
}

function updateNau(res) {
    //gvBep.DeleteRow(res);
}

function errorNau(res) {
    alert(res);
}

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
    if (res == "S") {
        location.reload(true);
    }
}
function playError(res) {
    alert(res);
}
