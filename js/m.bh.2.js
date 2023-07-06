$(document).keydown(function (evt) {
    if (document.getElementById("chBanPhim").checked) {
        if (!(evt.keyCode < 65 || evt.keyCode > 90)) {
            evt.preventDefault();
            Minh.search(String.fromCharCode(evt.keyCode));
        }
    }
});

var timeoutTimer;

function thoat() {
    PageMethods.logoutUS(updateLOG, errorData);
}
function updateLOG(res) {
    if (res == "") {
        location.reload();
    }
}
function errorData(res) {
    alert(res);
}

// Reset timers.
function ResetTimers() {
    clearTimeout(timeoutTimer);
    StartTimers2();
}
function StartTimers2() {
    timeoutTimer = setTimeout("IdleTimeout()", 1200000); //20 phut
}
// Logout the user.
function IdleTimeout() {
    window.location = 'TimeOut.htm';
}

var banAnTimer = "";
var thongBaoTimer = "";
//var capNhatMon = "";



function stopTimers() {
    window.clearInterval(banAnTimer);
    banAnTimer = "";
    //window.clearInterval(thongBaoTimer);
    //thongBaoTimer = "";
    //window.clearInterval(capNhatMon);
    //capNhatMon = "";
}

function Leave() {
    stopTimers();
}
/*
//Tim kiem 2 ky tu dau
var tt = false; //kiem lan dau
function arrSearch(txt) {
if (txt == "*") {
$("#grv tr:has(td)").show();
tt = false;
return;
}
txt = txt.toLowerCase();
if (txt == "d") txt = "dđ";
if (txt == "a") txt = "aàáảãạâầấẩẫậăằắẳẵặ";
if (txt == "e") txt = "eèéẻẽẹêềếểễệ";
if (txt == "i") txt = "iìíỉĩị";
if (txt == "o") txt = "oòóỏõọôồốổỗộơờớởỡợ";
if (txt == "u") txt = "uùúủũụưừứửữự";

//Iterate through td (2). (tr td:nth-child(2) -> cot thu 2 trong table)
var cellText;
if (!tt) {
$("#grv tr:has(td)").hide();
$("#grv tr td:nth-child(2)").children().each(function () {
cellText = $(this).text().substring(0, 1).toLowerCase(); //substring -> tim ky tu
if (txt.indexOf(cellText) >= 0) $(this).parent().parent().show();
});
}
if (tt) {
$("#grv tr td:nth-child(2)").children().each(function () {
cellText = $(this).text().substring(1, 2).toLowerCase(); //substring -> tim ky tu
if (txt.indexOf(cellText) < 0) $(this).parent().parent().hide();
});
}
tt = !tt;
}
*/
//Tim Kiem 1 ky tu vitri
var ff = false;
function OneSearch(txt, vitri) {
    if (txt == "*") {
        $("#grv tr:has(td)").show();
        ff = true;
        return;
    }
    txt = txt.toLowerCase();
    if (txt == "d") txt = "dđ";
    if (txt == "a") txt = "aàáảãạâầấẩẫậăằắẳẵặ";
    if (txt == "e") txt = "eèéẻẽẹêềếểễệ";
    if (txt == "i") txt = "iìíỉĩị";
    if (txt == "o") txt = "oòóỏõọôồốổỗộơờớởỡợ";
    if (txt == "u") txt = "uùúủũụưừứửữự";

    //Iterate through td (2). (tr td:nth-child(2) -> cot thu 2 trong table)
    var cellText;
    if (vitri == 1) {
        $("#grv tr:has(td)").hide();
        $("#grv tr td:nth-child(2)").children().each(function () {
            cellText = $(this).text().substring(vitri - 1, vitri).toLowerCase(); //substring -> tim ky tu
            if (txt.indexOf(cellText) >= 0) $(this).parent().parent().show();
        });
    } else {
        $("#grv tr td:nth-child(2)").children().each(function () {
            cellText = $(this).text().substring(vitri - 1, vitri).toLowerCase(); //substring -> tim ky tu
            if (txt.indexOf(cellText) < 0) $(this).parent().parent().hide();
        });
    }

}
var Minh = {
    search: function (text) {

        if (!document.getElementById("chSoKyTu").checked) {
            OneSearch(text, 1);
            return;
        }
        if (document.getElementById("chSoKyTu").checked) {
            //alert(ff);
            if (!ff) {
                OneSearch(text, 1);
            } else {
                OneSearch(text, 2);
            }
            ff = !ff;
        }
    },

    ///////////////////////////////////////////////////////////
    soLuong: function () {
        $("#grv tr:has(td)").hide(); // Hide all the rows.

        var iCounter = 0;
        //Iterate through all the td.
        $("#grv tr:has(td)").children().next().next().each(function () {
            var cellText = $(this).text().toLowerCase().trim().substring(0, 1); //substring -> chi tim ky tu dau tien
            if (cellText != '0') //Check if data matches
            {
                $(this).parent().show();
                iCounter++;
                return true;
            }
        });
        //e.preventDefault();
    },

    soLuong0: function () {
        //var rowsCount = <%=grv.Rows.Count %>; //su dung c# phia server kg dung trong truong hop co thay doi phia client
        var grid = $get("grv"); // su dung jv
        var rowsCount = grid.rows.length;
        for (var i = 0; i < rowsCount; i++) {
            var slg = grid.rows[i].cells[2].innerHTML;
            var dau = slg.indexOf(">");
            var cuoi = slg.lastIndexOf("<");
            var soluong = slg.substring(dau, cuoi + 1);
            grid.rows[i].cells[2].innerHTML = grid.rows[i].cells[2].innerHTML.replace(soluong, ">0<");

            /*
            var CellID;
            var LabelId;
            if (i < 8) {
            CellID = 'grv_ctl0' + (i + 2) + '_ctl00';
            LabelId = "grv_ctl0" + (i + 2) + "_lb2";
            } else {
            CellID = 'grv_ctl' + (i + 2) + '_ctl00';
            LabelId = "grv_ctl" + (i + 2) + "_lb2";
            }
            document.getElementById(CellID).innerHTML = "<span class=\"label\" id=\"" + LabelId + "\" style=\"width: 50px; height: 40px; display: inline-block;\" onclick=\"setSL('" + CellID + "')\">" + "0" + "</span>";
            //<span class="label" id="grv_ctl03_lb2" style="width: 50px; height: 40px; display: inline-block;" onclick="setSL('grv_ctl03_ctl00')">0</span>
            */
        }
    },

    /*
    goto: function (text) {
    var k = 0;
    for (var i = 0; i < clientGridView.pageRowCount; i++) {
    var id = clientGridView.keys[i].indexOf("|");
    var chudau = clientGridView.keys[i].substring(id + 1, id + 2);
    var last = clientGridView.keys[i].lastIndexOf("|");
    var sl = clientGridView.keys[i].substring(last + 1, last + 2);
    if (text == chudau && sl == "0") {
    clientGridView.MakeRowVisible(i);
    clientGridView.SetFocusedRowIndex(i);
    return;
    }
    }
    },
    gotoDown: function () {
    var row = clientGridView.GetFocusedRowIndex();
    //alert(row);
    row = row + 5;
    if (row > clientGridView.pageRowCount - 1) {
    row = clientGridView.pageRowCount - 1;
    }
    clientGridView.MakeRowVisible(row);
    clientGridView.SetFocusedRowIndex(row);
    },
    gotoUp: function () {
    var row = clientGridView.GetFocusedRowIndex();
    //alert(row);
    row = row - 5;
    if (row < 0) {
    row = 0;
    }
    clientGridView.MakeRowVisible(row);
    clientGridView.SetFocusedRowIndex(row);
    },
    */
    Xoa: function () {
        for (var i = 0; i < clientGridView.pageRowCount; i++) {
            document.getElementById("gvMonAn_cell" + i + "_2_lbSoLuong").innerHTML = "0";
        }
        //clientHiddenField.Clear();
    },
    Xem: function (s, e) {
        var t = GetXem();
        //Confirm(t);
        e.processOnServer = confirm(t);
    },
    setLbSo: function (text) {
        var btnCT = document.getElementById('btnCongTru');
        if (lbSo.innerHTML == '0') lbSo.innerHTML = '';
        if (lbSo.innerHTML == '' && btnCT.value == '-' && text != '0') {
            lbSo.innerHTML = '-' + text;
        } else {
            lbSo.innerHTML = lbSo.innerHTML + text;
        }
    },
    setLbSoCongTru: function () {
        if (lbSo.GetText() != '') {
            if (lbSo.GetText().indexOf('-') == -1) {
                lbSo.SetText('-' + lbSo.GetText());
            } else {
                lbSo.SetText(lbSo.GetText().replace('-', ''));
            }
        }
    },
    setTextCongTru: function (button_id) {
        if (document.getElementById(button_id).value == "+") {
            document.getElementById(button_id).value = "-";
        }
        else {
            document.getElementById(button_id).value = "+";
        }

    },
    xoaCuoi: function () {
        lbSo.SetText(lbSo.GetText().slice(0, -1));
    },
    Clear: function () {
        lbSo.innerHTML = '';
    }
}
//////////////////////////////////////////////////////


// yeu cau tinh tien
function OnBtnClientClick(s, e) {
    //ClientPopupControl.SetContentHtml("");
    //ClientPopupControl.Hide();
    dong();
}
//Xem phieu tinh tien
function yeuCauTinhTienClick() {
    var cbb = $get("cbBanAn");
    if (cbb.options[cbb.selectedIndex].text.indexOf("xx") < 0) {
        alert("Bàn Trống");
        return;
    }
    PageMethods.yeuCauTT(cbb.value, updateYeuCauTT, errorYeuCauTT);
}
function yeuCauTinhTienClick_MTB() {
    var cbb = $get("cbBanAn");
    if (cbb.options[cbb.selectedIndex].text.indexOf("xx") < 0) {
        alert("Bàn Trống");
        return;
    }
    PageMethods.yeuCauTT_MTB(cbb.value, updateYeuCauTT, errorYeuCauTT);
}
function updateYeuCauTT(res) {
    document.getElementById("lbPTT").innerHTML = res;
    $("#PhieuTinhTienModal").modal();
    //location.href = "#openModal"; 
    //ClientPopupControl.SetContentHtml(res);
    //ClientPopupControl.Show(); //tinh tien
}
function dong(s, e) {
    var v1 = document.getElementById("lbPTT");
    v1.innerHTML = "";
    $("#PhieuTinhTienModal").modal("hide")
    //location.href = "#close";    
}
function errorYeuCauTT(res) {
}
// Client yeu cau In phieu va hoan tat
function TinhTienClick() {
    var banId = $get("cbBanAn").value;
    PageMethods.goiTinhTien(banId, updateTT, errorTT);
}
function updateTT(res) {
    if (res != "") {
        alert(res);
    } else {
        //ClientPopupControl.SetContentHtml("");
        //ClientPopupControl.Hide();
        dong();
    }
}
function errorTT(res) {
}
// End y/c tinh tien

//yeu cau Chuyen ban
function ycChuyenBanClick() {

    var BA = $get("cbBanAn"); DD1 = $get("drBanChuyen"); var DD2 = $get("drBanNhan");
    copyDropDown(BA, DD1, true);
    copyDropDown(BA, DD2, false);
    $("#ChuyenBanModal").modal();
    //location.href = "#ppChuyenBan";

    /*
    var BA = $get("cbBanAn"); DD1 = $get("ppChuyenBan_drBanChuyen"); var DD2 = $get("ppChuyenBan_drBanNhan");
    copyDropDown(BA, DD1, true);
    copyDropDown(BA, DD2, false);
    ppChuyenBan.Show();
    */

}

function chuyenBanClick() {
    var banChuyen = $get("drBanChuyen");
    var banNhan = $get("drBanNhan");
    //var banChuyen = $get("ppChuyenBan_drBanChuyen").value;
    //var banNhan = $get("ppChuyenBan_drBanNhan").value;
    if (banChuyen.value == banNhan.value) {
        alert("Hai bàn giống nhau");
        return;
    }
    if ((banChuyen.options[banChuyen.selectedIndex].text.indexOf("xxXX") > 0) && (banNhan.options[banNhan.selectedIndex].text.indexOf("xxXX") > 0)) {
        alert("Hai bàn Bida đang có khách \n Không chuyển được");
        return;
    }
    PageMethods.chuyenBan(banChuyen.value, banNhan.value, ChuyenBan, erroChuyenBan);
}

function dongChuyenBan() {
    $("#ChuyenBanModal").modal("hide");
}

function ChuyenBan(res) {
    if (res == "") {

        $("#drBanChuyen").empty();
        $("#drBanNhan").empty();
        dongChuyenBan();
        GetBanAnLanDau();

        /*
        $("#ppChuyenBan_drBanChuyen").empty();
        $("#ppChuyenBan_drBanNhan").empty();
        ppChuyenBan.Hide();
        GetBanAnLanDau();
        */
    } else alert(res);
}

function erroChuyenBan(res) {
}

function khongChuyenBanClick() {

    $("#drBanChuyen").empty();
    $("#drBanNhan").empty();
    dongChuyenBan();

    //$("#ppChuyenBan_drBanChuyen").empty();
    //$("#ppChuyenBan_drBanNhan").empty();
    //ppChuyenBan.Hide();
}
//End chuyen ban

//Chuyen Mon
function ycChuyenMon() {
    var monGoi = GetXem();
    if (monGoi == "") {
        alert("Hãy Chọn Món");
        return false;
    }
    var BA = $get("cbBanAn"); DD1 = $get("drNguon"); var DD2 = $get("drDich");
    copyDropDown(BA, DD1, true);
    copyDropDown(BA, DD2, false);
    $("#ChuyenMonModal").modal();
    //ppChuyenMon.Show();
}

function copyDropDown(drNguon, drDich, CoKhach) {
    drDich.length = 0;
    var k = 0;
    if (!CoKhach) {
        for (i = 0; i < drNguon.length; i += 1) {
            drDich.options[i] = new Option(drNguon.options[i].text, drNguon.options[i].value);
            if (drNguon.options[i].selected == true) {
                drDich.options[i].selected = true;
            }
        }
    }
    else {
        for (i = 0; i < drNguon.length; i += 1) {
            if (drNguon.options[i].text.indexOf("xx") > -1) {
                drDich.options[k] = new Option(drNguon.options[i].text, drNguon.options[i].value);
                if (drNguon.options[i].selected == true) {
                    drDich.options[k].selected = true;
                }
                k += 1;
            }
        }
    }
}
function chuyenMonClick() {
    maMon = GetMasoMon();
    var banNguon = $get("drNguon").value;
    var banDich = $get("drDich").value;
    if (banNguon == banDich) {
        alert("Hai bàn giống nhau");
        return;
    }
    PageMethods.chuyenMon(maMon, banNguon, banDich, ChuyenMon, ErroChuyenMon);
}

function ChuyenMon(res) {
    if (res == "") {
        $("#drNguon").empty();
        $("#drDich").empty();
        $("#ChuyenMonModal").modal("hide");
        //ppChuyenMon.Hide();
        Minh.soLuong0();
    }
    else {
        alert(res);
    }
}

function ErroChuyenMon(res) {
    alert(res);
}

function khongChuyenMonClick() {
    $("#drNguon").empty();
    $("#drDich").empty();
    $("#ChuyenMonModal").modal("hide");
    //ppChuyenMon.Hide();
}

//End Chuyen Mon

//Cap nhat ban, thong bao
var ddlBanAn;
var indexSelect;
function GetBanAn() {
    ddlBanAn = $get("cbBanAn");
    indexSelect = ddlBanAn.selectedIndex;
    PageMethods.getBanAn(OnSuccess);
}

function GetBanAnLanDau() {
    ddlBanAn = $get("cbBanAn");
    indexSelect = ddlBanAn.selectedIndex;
    PageMethods.getBanAnLanDau(OnSuccess);
}

function OnSuccess(response) {
    if (response != null) {
        ddlBanAn.options.length = 0;
        for (var i in response) {
            AddOption(response[i].Ten, response[i].Ma);
        }
        ddlBanAn.selectedIndex = indexSelect;
    }
}
function AddOption(text, value) {
    var opt = document.createElement("option");
    opt.value = value;
    opt.innerHTML = text;
    ddlBanAn.options.add(opt);
}


// Phan Thong bao
function GetThongBao() {
    PageMethods.getThongBao(hienThongBao);
}
function hienThongBao(res) {
    if (res == "") return;
    alert(res);
}
// Cap nhat Mon
function CapNhatMon() {
    PageMethods.updateMon(UpdateMon);
}
function UpdateMon(res) {
    if (res != "") {
        var grid = $get("grv");
        var iCounter = grid.rows.length;

        //Insert
        var MaTen = res.split("|");
        if (MaTen[0] == "ThemMoi") {

            var CellID;
            var LabelId;
            if (iCounter < 8) {
                CellID = 'grv_ctl0' + (iCounter + 2) + '_ctl00';
                LabelId = "grv_ctl0" + (iCounter + 2) + "_lb2";
            } else {
                CellID = 'grv_ctl' + (iCounter + 2) + '_ctl00';
                LabelId = "grv_ctl" + (iCounter + 2) + "_lb2";
            }


            var newRow = grid.insertRow(0);
            var newCell_1 = newRow.insertCell(0);
            newCell_1.innerHTML = "<span style=\"width:1px;font-Size:1px;\">" + MaTen[2] + "</span>";
            var newCell_2 = newRow.insertCell(1);
            newCell_2.innerHTML = "<span>" + MaTen[1] + "</span>";

            var newCell_3 = newRow.insertCell(2);
            newCell_3.id = CellID; //id cho the <td>
            newCell_3.innerHTML = "<span id=\"" + LabelId + "\" class=\"label\" onclick=\"setSL('" + CellID + "')\" style=\"display:inline-block;height:40px;width:50px;\">" + "0" + "</span>";
            alert("Thêm Món mới");
            return;
        }

        //Delete
        if (MaTen[0] == "Xoa") {
            for (var i = 0; i < iCounter; i++) {
                var maSo = grid.rows[i].cells[0].innerHTML.replace(/<[^>]*>/g, "").toString().trim();
                if (MaTen[1] == maSo) {
                    grid.deleteRow(i);
                    return;
                }
            }


            return;
        }
        //Update
        for (var i = 0; i < iCounter; i++) {
            var maSo = grid.rows[i].cells[0].innerHTML.replace(/<[^>]*>/g, "").toString().trim();
            if (res.trim().indexOf(maSo) >= 0) {
                grid.rows[i].cells[1].innerHTML = MaTen[1];
                return;
            }
        }
    }
}

//So luong theo 2 cach
function setSL_All(CellID) {
    var soDaChon = document.getElementById('lbSo').innerHTML;
    if (soDaChon != "") {
        setSL_Chon(CellID);
    } else {
        setSL(CellID);
    }
}


// So luong duoc chon tu button co text la 1,2,3...
function setSL_Chon(CellID) {
    var soHienHanh = document.getElementById(CellID).innerHTML; // innerHTML no bao gom ca cac the HTML neu co, vi du (<span id="grv_ctl13_lb2" onclick="setSL('grv_ctl13_ctl00')">0</span>)
    var ldau = soHienHanh.indexOf(">") + 1;
    var dau = soHienHanh.substring(0, ldau); // giu lai phan ma lenh
    var soDaChon = document.getElementById('lbSo').innerHTML;
    //if (soDaChon != "") {
    document.getElementById(CellID).innerHTML = dau + soDaChon + "</span>";
    lbSo.innerHTML = '';
}

// So luong tang, giam.
function setSL(CellID) {
    var soHienHanh = document.getElementById(CellID).innerHTML; // innerHTML no bao gom ca cac the HTML neu co, vi du (<span id="grv_ctl13_lb2" onclick="setSL('grv_ctl13_ctl00')">0</span>)
    var ldau = soHienHanh.indexOf(">") + 1;
    var dau = soHienHanh.substring(0, ldau); // giu lai phan ma lenh
    var soMoi;
    var lbS = $get('btnCongTru');
    //alert(lbS.textContent);
    if (lbS.value == "+")
        soMoi = parseInt(document.getElementById(CellID).textContent || document.getElementById(CellID).innerText) + 1;
    else if (lbS.value == "*")
        soMoi = parseInt(document.getElementById(CellID).textContent || document.getElementById(CellID).innerText) + 5;
    else if (lbS.value == "-")
        soMoi = parseInt(document.getElementById(CellID).textContent || document.getElementById(CellID).innerText) - 1;

    document.getElementById(CellID).innerHTML = dau + soMoi + "</span>";
}

//GUI THONG BAO DEN THU NGAN
function guiTinNhan() {
    $("#SMSModal").modal();
    //ppSMS.Show();
}

function dongSMS() {
    $("#SMSModal").modal("hide");
}

function Send_clicked() {
    var tb = $get("txtSmsThuNgan")
    PageMethods.sendSMS(tb.value, SendSMS, errorSendSMS);
}
function SendSMS(res) {
    dongSMS();
    alert(res);
    //ppSMS.Hide();
}
function errorSendSMS(res) {
    alert(res);
}

function CloseSmsClick() {
    dongSMS();
    //ppSMS.Hide();
}

//PHAN THEM BOT

var r_tb; //dong cuar table them bot

//Copy DIV
function printDiv(sourcediv, destinationdiv) {
    document.getElementById(destinationdiv).innerHTML = document.getElementById(sourcediv).innerHTML;
}

function ThemBot() {
    var cbb = $get("cbBanAn");
    if (!cbb.options[cbb.selectedIndex]) {
        alert("Hãy chọn bàn");
        return false;
    }
    DeleteAllRows("gvThemBot");
    AddRow();
    $("#ThemBotModal").modal();
    //ppThemBot.Show();
    //ppThemBot.ShowAtPos(5, 80);
}

function CloseThemBotClick() {
    DeleteAllRows("gvThemBot");
    $("#ThemBotModal").modal("hide");
}

function AddRow() {
    r_tb = 0;
    DeleteAllRows("gvThemBot");
    var grid = $get("grv");
    var table = $get("gvThemBot");
    var iCounter = grid.rows.length;
    for (var i = 0; i < iCounter; i++) {
        var maSo = grid.rows[i].cells[0].innerHTML.replace(/<[^>]*>/g, "").toString().trim();
        var tenMon = grid.rows[i].cells[1].innerHTML.replace(/<[^>]*>/g, "").toString().trim();
        var sLuong = grid.rows[i].cells[2].innerHTML.replace(/<[^>]*>/g, "").toString().trim();
        if (sLuong.trim().substring(0, 1).indexOf("0") < 0) {
            var newRow = table.insertRow(r_tb);
            r_tb++;
            var newCell_1 = newRow.insertCell(0);
            newCell_1.className = 'styleMaSo';
            newCell_1.innerHTML = maSo;

            var newCell_2 = newRow.insertCell(1);
            newCell_2.className = 'styleTen';
            newCell_2.innerHTML = "<span class=\"thembot_TenMon\" style=\"display:inline-block;\">" + tenMon + "</span>";

            var newCell_3 = newRow.insertCell(2);
            newCell_3.className = 'styleSoLuong';
            var id = "gvTB_" + i;
            newCell_3.innerHTML = "<span id=\"" + id + "\" class=\"thembot_SoLuong\" onclick=\"setSL('" + id + "')\" style=\"display:inline-block;\">" + sLuong + "</span>";

            var id_ghchu = "id_ghchu" + i;
            var newCell_4 = newRow.insertCell(3);
            newCell_4.className = 'styleGhiChu';
            newCell_4.innerHTML = "<span id=\"" + id_ghchu + "\" class=\"thembot_Ghichu\" onclick=\"GetGhiChu('" + id_ghchu + "')\" style=\"display:inline-block;\">" + "" + "</span>";
        }
    }
}

function DeleteAllRows(strID) {
    var table = $get(strID);
    for (var r = table.rows.length - 1; r > -1; r--) {
        table.deleteRow(r);
    }

}

function GetGhiChu(CellId) {
    var drSL = $get('drSoThemBot');
    var drIN = $get('drItNhieu');
    var drLTB = $get('drLoaiThemBot');
    var txtSMS = $get('txtSMS');
    var sl = drSL.options[drSL.selectedIndex].text;
    if (sl.indexOf('Xóa') > -1) {
        document.getElementById(CellId).innerHTML = "";
        return;
    }
    var ghiChu = sl + " " + drIN.options[drIN.selectedIndex].text + " " + drLTB.options[drLTB.selectedIndex].text + txtSMS.value;
    if (document.getElementById(CellId).innerHTML) {
        if (ghiChu.indexOf('và') < 0) {
            ghiChu = ", " + ghiChu;
        } else {
            ghiChu = " " + ghiChu;
        } document.getElementById(CellId).innerHTML = document.getElementById(CellId).innerHTML + ghiChu;
    } else {
        document.getElementById(CellId).innerHTML = ghiChu;
    }
}

////////////////////////////////////

