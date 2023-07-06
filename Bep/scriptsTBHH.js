// JScript File


function GuiThongBao(hh) {
    var tb = $get("ctl00_MainContent_ASPxCallbackPanel1_txtNd_I");
    var nd = tb.value + hh;
    if (tb.value != "")
        PageMethods.guiTB(nd, gui, guiError);
}
function gui(res) {
    alert(res);
}
function guiError(res) {
    alert(res);
}