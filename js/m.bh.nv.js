window.onload = pageload;
function pageload() {
    GetBanAnLanDau();
    StartTimers2();
    lbUsername.innerHTML = userName;
    if (kttruongnhom == "True") {
        window.location = 'TruongNhom.aspx';
    }
    $("#btnCongTru").hide();
}
startTimers(); // chay ham updateUser() va updateMembers() theo tung khoang thoi gian thong qua ham setInterval
function startTimers() {
    banAnTimer = window.setInterval("GetBanAnLanDau()", 10000);
    thongBaoTimer = window.setInterval("GetThongBao()", 20000);
}
