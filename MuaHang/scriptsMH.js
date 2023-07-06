// JScript File

//Goi mon
function button_clicked() {
    var maMon = GetMasoMon();
    var r = confirm("ĐỒNG Ý");
    if (r == true) {
        PageMethods.chuyenPhieu(maMon, updateDaa, errorData); // chuyen phieu
    } else {
    }
}
function GetXem() {
    var grid = $get("GridView1");
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
    var grid = $get("GridView1");
    var iCounter = grid.rows.length;
    var kq = "";
    //var stt = 0;
    for (var i = 0; i < iCounter; i++) {
        var maSo = grid.rows[i].cells[0].textContent.toString().trim() || grid.rows[i].cells[0].innerText.toString().trim();
        //var tenMon = grid.rows[i].cells[1].textContent.toString().trim()||grid.rows[i].cells[1].innerText.toString().trim();
        var sLuong = grid.rows[i].cells[2].textContent.toString().trim() || grid.rows[i].cells[2].innerText.toString().trim();
        var tien = grid.rows[i].cells[3].textContent.toString().trim() || grid.rows[i].cells[3].innerText.toString().trim();
        if (sLuong.substring(0, 1) != "0") {
            kq += maSo + "|" + sLuong + "|" + tien + "|";
        }
    }
    return kq;
}

function updateDaa(res) {
    Minh.soLuong0();
    alert(res);
}

function errorData(res) {
    alert(res);
}

// So luong duoc chon tu button co text la 1,2,3...
function setSL_Chon(CellID) {
    var soHienHanh = document.getElementById(CellID).innerHTML; // innerHTML no bao gom ca cac the HTML neu co, vi du (<span id="GridView1_ctl13_Label2" onclick="setSL('GridView1_ctl13_ctl00')">0</span>)
    var ldau = soHienHanh.indexOf(">") + 1;
    var dau = soHienHanh.substring(0, ldau); // giu lai phan ma lenh
    var soDaChon = document.getElementById('lbSo').innerHTML;
    if (soDaChon != "") {
        document.getElementById(CellID).innerHTML = dau + soDaChon + "</span>";
        document.getElementById('lbSo').innerHTML = "";
    } else {
        document.getElementById(CellID).innerHTML = dau + "0" + "</span>";
    }
}
function setSL_000(CellID) {
    var soHienHanh = document.getElementById(CellID).innerHTML; // innerHTML no bao gom ca cac the HTML neu co, vi du (<span id="GridView1_ctl13_Label2" onclick="setSL('GridView1_ctl13_ctl00')">0</span>)
    var ldau = soHienHanh.indexOf(">") + 1;
    var dau = soHienHanh.substring(0, ldau); // giu lai phan ma lenh
    var soDaChon = document.getElementById('lbSo').innerHTML;
    if (soDaChon != "") {
        document.getElementById(CellID).innerHTML = dau + soDaChon + "000</span>";
        document.getElementById('lbSo').innerHTML = "";
    } else {
        document.getElementById(CellID).innerHTML = dau + "0" + "</span>";
    }
}


// So luong tang, giam.
function setSL(CellID) {
    var soHienHanh = document.getElementById(CellID).innerHTML; // innerHTML no bao gom ca cac the HTML neu co, vi du (<span id="GridView1_ctl13_Label2" onclick="setSL('GridView1_ctl13_ctl00')">0</span>)
    var ldau = soHienHanh.indexOf(">") + 1;
    var dau = soHienHanh.substring(0, ldau); // giu lai phan ma lenh
    var soMoi;
    var lbS = $get('btPhepTinh');
    if (lbS.innerText == "+" || lbS.textContent == "+")
        soMoi = parseInt(document.getElementById(CellID).textContent || document.getElementById(CellID).innerText) + 1;
    else if (lbS.innerText == "*" || lbS.textContent == "*")
        soMoi = parseInt(document.getElementById(CellID).textContent || document.getElementById(CellID).innerText) + 5;
    else if (lbS.innerText == "-" || lbS.textContent == "-")
        soMoi = parseInt(document.getElementById(CellID).textContent || document.getElementById(CellID).innerText) - 1;

    document.getElementById(CellID).innerHTML = dau + soMoi + "</span>";
}
