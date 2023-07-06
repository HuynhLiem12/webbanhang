var ddlBanYCTT;
var indexSelectYCTT;
window.onload = pageload;
function pageload() {
    GetBanAnLanDau();
    GetBanYCTT_Pageload();
    StartTimers2();
    lbUsername.innerHTML = userName;
}
startTimers(); // chay ham updateUser() va updateMembers() theo tung khoang thoi gian thong qua ham setInterval
function startTimers() {
    banAnTimer = window.setInterval("GetBanAnLanDau()", 10000);
    banYCTTTimer = window.setInterval("GetBanYCTT()", 10000);
    thongBaoTimer = window.setInterval("GetThongBao()", 20000);
}
//In phieu
function InClick() {
    var dr = $get("drBanYCTT");
    PageMethods.inPhieu(dr.value, InPhieu, InPhieuError);
}
function InPhieu(res) {
    GetBanYCTT_Pageload();
    alert(res);
}
function InPhieuError(res) {
}
//End In phieu
function GetBanYCTT() {
    ddlBanYCTT = $get("drBanYCTT");
    indexSelectYCTT = ddlBanYCTT.selectedIndex;
    PageMethods.getBanYCTT(OnSuccessYCTT);
}
function GetBanYCTT_Pageload() {
    ddlBanYCTT = $get("drBanYCTT");
    indexSelectYCTT = ddlBanYCTT.selectedIndex;
    PageMethods.getBanYCTT_Pageload(OnSuccessYCTT_Pageload);
}
function OnSuccessYCTT(response) {
    if (response != null) {
        ddlBanYCTT.options.length = 0;
        for (var i in response) {
            AddOptionYCTT(response[i].Ten, response[i].Ma);
        }
        ddlBanYCTT.selectedIndex = indexSelectYCTT;
        play_single_sound();
    }
}
function OnSuccessYCTT_Pageload(response) {
    if (response != null) {
        ddlBanYCTT.options.length = 0;
        for (var i in response) {
            AddOptionYCTT(response[i].Ten, response[i].Ma);
        }
        ddlBanYCTT.selectedIndex = indexSelectYCTT;
    }
}
function AddOptionYCTT(text, value) {
    var opt = document.createElement("option");
    opt.value = value;
    opt.innerHTML = text;
    ddlBanYCTT.options.add(opt);
}

