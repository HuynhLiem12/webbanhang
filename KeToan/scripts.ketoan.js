// JScript File
window.onunload = Leave;
var tongtienTimer = "";
//Dung de cap nhat tong tien khi sua phieu trong gridview
//startTimers(); 
//Da dung chuc nang Response.Redirect(Request.RawUrl) tu page khi event RowUpdated grid (chu y thuoc tinh - properties  Enablcallback cua grid -> false)
function startTimers() {
    tongtienTimer = window.setInterval("KiemTraTongTien()", 3000); 
}

function stopTimers() {
    window.clearInterval(tongtienTimer);
    tongtienTimer = "";
}

function Leave() {
    stopTimers();
}

var intTongtien;

function KiemTraTongTien() {
    PageMethods.getTongtien(capNhatTongTien);
}

function capNhatTongTien(res) {
    if (res <= 0) return;
    if (res != intTongtien) {
        window.location.reload();
    }
}

function clickButton(e) {
    var e = (e) ? e : ((event) ? event : null);
    if (navigator.appName.indexOf("Netscape") > (-1)) {
        if (e.keyCode == 13) {
            myFunction();
            return false;
        }
    }
    if (navigator.appName.indexOf("Microsoft Internet Explorer") > (-1)) {
        if (event.keyCode == 13) 
        {
            myFunction();
            return false;
        }
    }
}
window.onload = function () {
    var tongTien = $get("ctl00_MainContent_ASPxRoundPanel1_txtTong_I").value;
    intTongtien = parseInt(myReplace(tongTien));
    document.getElementById('txtKhachDua').value = tongTien;
    document.getElementById('txtThanhToan').value = tongTien;
    var tongGiam = $get("ctl00_MainContent_txtGiam_I").value;
    document.getElementById('inGiamDong').value = tongGiam;
    myFunction();
}
var n_tongG = 0;
var n_tongT = 0;
function myFunction() {
    var txtTT = $get("inKhachDua");
    var txtTong = $get("ctl00_MainContent_ASPxRoundPanel1_txtTong_I");
    var txtGiamDong = $get("inGiamDong");
    var txtGiamPT = $get("inGiamPT");
    var khachDua = $get("txtKhachDua");
    var tienThoi = $get("ctl00_MainContent_ASPxRoundPanel1_txtTienThoi_I");
    var tienThieu = $get("ctl00_MainContent_ASPxRoundPanel1_txtTienThieu_I");
    var tienTongGiam = $get("ctl00_MainContent_ASPxRoundPanel1_txtTongGiam_I");
    var thanhToan = $get("txtThanhToan");
    var tienKhachDua = parseInt(myReplace(khachDua.value))
    if (isNaN(tienKhachDua)) {
        tienKhachDua = 0;
        khachDua.value = 0;
    }
    var Tong = parseInt(myReplace(txtTong.value));
    var giamD = parseInt(myReplace(txtGiamDong.value));
    if (isNaN(giamD)) {
        giamD = 0;
        txtGiamDong.value = 0;
    }
    var giamP = Tong * (myReplace(txtGiamPT.value)) / 100;
    if (isNaN(giamP)) {
        giamP = 0;
        txtGiamPT.value = 0;
    }
    n_tongG = giamD + giamP;
    tienTongGiam.value = formatSTR(n_tongG.toString());
    var tienThanhToan = Tong - giamD - giamP;
    thanhToan.value = formatSTR(tienThanhToan.toString());
    var tthoi = (tienKhachDua - tienThanhToan > 0 ? tienKhachDua - tienThanhToan : 0).toString();
    tienThoi.value = formatSTR(tthoi);
    var tthieu = (tienThanhToan - tienKhachDua > 0 ? tienThanhToan - tienKhachDua : 0).toString();
    tienThieu.value = formatSTR(tthieu);
    n_tongT = parseInt(tthieu);
    return false;
}
function formatSTR(str) {
    var res = "";
    var d = 0;
    for (var i = str.length - 1; i > -1; i--) {
        res = str[i] + res;
        d++;
        if ((d) % 3 == 0) {
            res = " " + res;
        }
    }
    if (res == '') res = 0;
    return res;
}
function myReplace(str) {
    var find = ' ';
    var re = new RegExp(find, 'g');
    var res = str.trim().replace(re, '');
    return res;
}
function HoanTat_click() {
    var cbK = $get("ctl00_MainContent_ASPxRoundPanel1_drKhach");
    var kId = cbK.value;
    myFunction();
    PageMethods.wmTinhTien(n_tongG, n_tongT, kId, HoanTat, inError);
}
function HoanTat(res) {
    if (res.indexOf("Thành công") > -1) {
        window.location.href = 'YeuCauTinhTien.aspx';
        return;
    }
}
function InTam_click() {
    var cbK = $get("ctl00_MainContent_ASPxRoundPanel1_drKhach");
    var kId = cbK.value;
    myFunction();
    PageMethods.wmTinhTienTam(n_tongG, n_tongT, kId, inHoadonTam, inError);
}
function In_click() {
    var cbK = $get("ctl00_MainContent_ASPxRoundPanel1_drKhach");
    var kId = cbK.value;
    myFunction();
    PageMethods.wmTinhTien(n_tongG, n_tongT, kId, inHoadon, inError);
}
function inHoadonTam(res) {
    if (res.indexOf("Thành công") > -1) {
        window.location.href = 'InPhieuThuNganTam.aspx';
        return;
    }
    alert(res);
}

function inHoadon(res) {
    if (res.indexOf("Thành công") > -1) {
        window.location.href = 'InPhieuThuNgan.aspx';
        return;
    }
    alert(res);
}
function inError(resE) {
    alert(resE);
}		
        