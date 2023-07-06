//Goi mon
function button_clicked() {
    var maMon = GetMasoMon();
    var monGoi = GetXem();
    if (monGoi == "") {
        alert("Hãy Chọn Món");
        return false;
    }
    var cbb = $get("cbBanAn");
    if (!cbb.options[cbb.selectedIndex]) {
        alert("Hãy chọn bàn");
        return false;
    }
    var banId = cbb.value;
    //var tenBan = cbb.options[cbb.selectedIndex].text;
    //indexSelect = cbb.selectedIndex;
    //var r = confirm(tenBan + "\n" + monGoi);
    var r = confirm(banId + "\n" + monGoi);
    if (r == true) {
        PageMethods.chuyenPhieuKgGhiChu(maMon, banId, updateDaa, errorData); // chuyen phieu
    } else {
    }
}

function GetXem() {
    var grid = $get("grv");
    var iCounter = grid.rows.length;
    var kq = "";
    var stt = 0;
    for (var i = 0; i < iCounter; i++) {
        //var maSo = grid.rows[i].cells[0].textContent.toString().trim()||grid.rows[i].cells[0].innerText.toString().trim();
        var tenMon = grid.rows[i].cells[1].textContent.toString().trim() || grid.rows[i].cells[1].innerText.toString().trim(); //Chay tren nhieu trinh duyet
        var sLuong = grid.rows[i].cells[2].textContent.toString().trim() || grid.rows[i].cells[2].innerText.toString().trim();
        if (sLuong.substring(0, 1) != "0") {
            kq += (++stt) + ") " + tenMon + " -> " + sLuong + "\n";
        }
    }
    return kq;
}

function GetMasoMon() {
    var grid = $get("grv");
    var iCounter = grid.rows.length;
    var kq = "";
    //var stt = 0;
    for (var i = 0; i < iCounter; i++) {
        var maSo = grid.rows[i].cells[0].textContent.toString().trim() || grid.rows[i].cells[0].innerText.toString().trim();
        //var tenMon = grid.rows[i].cells[1].textContent.toString().trim()||grid.rows[i].cells[1].innerText.toString().trim();
        var sLuong = grid.rows[i].cells[2].textContent.toString().trim() || grid.rows[i].cells[2].innerText.toString().trim();
        if (sLuong.substring(0, 1) != "0") {
            kq += maSo + "|" + sLuong + "|";
        }
    }
    return kq;
}

function updateDaa(res) {
    var cbb = $get("cbBanAn");
    var tenBan = cbb.options[cbb.selectedIndex].text;
    if (res == "") {
        //if (tenBan.indexOf("***") < 0) {
          //  cbb.options[cbb.selectedIndex].text = tenBan + " (***)";
        //}
        Minh.soLuong0();
        return;
    }
    alert(res);
}

function errorData(res) {
    alert(res);
}
function TB_clicked() {
    var cbb = $get("cbBanAn");
    var banId = cbb.value;
    //var tenBan = cbb.options[cbb.selectedIndex].text;
    var maMon = GetMasoMonTB();
    var monGoi = GetXemTB();
    //indexSelect = cbb.selectedIndex;
    //var r = confirm(tenBan + "\n" + monGoi);
    var r = confirm(banId + "\n" + monGoi);
    if (r == true) {
        PageMethods.chuyenPhieuCoGhiChu(maMon, banId, updateDaaTB, errorDataTB); // chuyen phieu
    } else {
    }
}

function GetXemTB() {
    var grid = $get("gvThemBot");
    var iCounter = grid.rows.length;
    var kq = "";
    var stt = 0;
    for (var i = 0; i < iCounter; i++) {
        //var maSo = grid.rows[i].cells[0].innerHTML.replace(/<[^>]*>/g, "").toString().trim();
        var tenMon = grid.rows[i].cells[1].innerHTML.replace(/<[^>]*>/g, "").toString().trim(); //Chay tren nhieu trinh duyet
        var sLuong = grid.rows[i].cells[2].innerHTML.replace(/<[^>]*>/g, "").toString().trim();
        var gchu = grid.rows[i].cells[3].innerHTML.replace(/<[^>]*>/g, "").toString().trim();
        //alert(grid.rows[i].cells[3]);
        if (sLuong.substring(0, 1) != "0") {
            if (gchu == "") { //Chay tren nhieu trinh duyet
                kq += (++stt) + ") " + tenMon + " -> " + sLuong + "\n";
            } else {
                kq += (++stt) + ") " + tenMon + " -> " + sLuong + "(" + gchu + ")\n";
            }
        }
    }
    return kq;
}

function GetMasoMonTB() {
    var grid = $get("gvThemBot");
    var iCounter = grid.rows.length;
    var kq = "";
    //var stt = 0;
    for (var i = 0; i < iCounter; i++) {
        var maSo = grid.rows[i].cells[0].innerHTML.replace(/<[^>]*>/g, "").toString().trim();
        //var tenMon = grid.rows[i].cells[1].innerHTML.replace(/<[^>]*>/g, "").toString().trim();
        var sLuong = grid.rows[i].cells[2].innerHTML.replace(/<[^>]*>/g, "").toString().trim();
        var ghch = grid.rows[i].cells[3].innerHTML.replace(/<[^>]*>/g, "").toString().trim();
        if (sLuong.substring(0, 1) != "0") {
            kq += maSo + "|" + sLuong + "|" + ghch + "|";
        }
    }
    return kq;
}

function updateDaaTB(res) {
    if (res == "") {
        Minh.soLuong0();
        DeleteAllRows("gvThemBot");
        $("#ThemBotModal").modal("hide");
        //ppThemBot.Hide();
        return;
    }
    alert(res);
}

function errorDataTB(res) {
    alert(res);
}
