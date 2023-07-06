<%@ Page Language="C#" AutoEventWireup="true" Inherits="NhaHang.BanHang.banhang"
    EnableEventValidation="true" ViewStateMode="Disabled" %>

<!DOCTYPE html
<html>
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="msapplication-tap-highlight" content="no" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="icon" href="../MacBrain.ico">
    <link href="../css/bootstrap336.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/ie10-viewport-bug-workaround.css" rel="stylesheet" type="text/css" />
    <title>BAN HANG</title>
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function setCookie(cname, cvalue, exdays) {
            var d = new Date();
            d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
            var expires = "expires=" + d.toGMTString();
            document.cookie = cname + "=" + encodeURIComponent(cvalue) + "; " + expires;
        }

        function getCookie(cname) {
            var name = cname + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                if (c.indexOf(name) == 0) {
                    var kq = decodeURIComponent(c.substring(name.length, c.length));
                    return kq;
                }
            }
            return "";
        }
    </script>
    <script type="text/javascript">
        var userName = '<%=@HttpContext.Current.User.Identity.Name%>';
        var kttruongnhom = '<%=@ktTruongNhom%>'            
    </script>
    <style type="text/css">
        @media (min-width: 768px) {
            .modal-dialog {
                /*width: 600px;*/
                font-size: larger;
            }
        }

        .gv {
            margin-top: 2px;
            height: 371px;
            overflow: auto;
        }

        .label {
            font-size: 20px;
            font-weight: bold;
            color: #000;
            text-align: center;
            background-color: #FFFF00;
            padding-top: 10px;
            width: 50px;
            height: 40px;
            display: block;
        }

        .styleMaSo {
            width: 10%;
        }

        .styleTen {
            width: 40%;
        }

        .styleSoLuong {
            width: 10%;
        }

        .styleGhiChu {
            width: 40%;
        }

        .thembot_SoLuong {
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            background-color: #FFFF00;
            width: 100%;
            height: 40px;
            padding-top: 10px;
        }

        .thembot_TenMon {
            font-size: 14px;
            font-weight: bold;
            text-align: center;
            background-color: #99CCFF;
            width: 100%;
            height: 40px;
            padding-top: 10px;
        }

        .thembot_Ghichu {
            font-size: 11px;
            font-weight: bold;
            text-align: center;
            background-color: #00CC99;
            width: 100%;
            height: 40px;
            padding-top: 10px;
        }

        #form1 {
            top: 2px;
            left: 0px;
        }

        .btn {
            width: 99%; /*height: 35px;*/ /*font-family: Arial, Helvetica, sans-serif;
            font-size: 0.8em;*/
            padding: 2px 2px;
            margin: 2px 0px;
        }

        .btn-timkiem {
            width: 99%; /*height: 35px;*/ /*font-family: Arial, Helvetica, sans-serif;
            font-size: 0.8em;*/
            padding: 2px 2px;
            margin: 2px 0px;
        }

        .col {
            padding: 0px 2px;
        }

        .form {
            padding: 2px 2px;
            height: 25px;
        }
    </style>
</head>
<body onmousemove="ResetTimers();" onunload="Leave();">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="True"
        EnablePageMethods="True">
        <Scripts>
            <asp:ScriptReference Path="../js/m.bh.1.js" />
            <asp:ScriptReference Path="../js/m.bh.2.js" />
            <asp:ScriptReference Path="../js/m.bh.nv.js" />
        </Scripts>
    </asp:ScriptManager>
    <div class="container">
        <div class="container-fluid">
            <asp:Label ID="lbHetHanASP" runat="server" CssClass="label-warning" Text="Đã hết hạn sử dụng, Liên hệ 0913858801"
                Visible="False"></asp:Label>
        </div>
        <div class="modal fade" id="PhieuTinhTienModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            &times;</button>
                        <h4 class="modal-title">
                            PHIẾU TÍNH TIỀN</h4>
                    </div>
                    <div class="modal-body">
                        <asp:Label ID="lbPTT" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="modal-footer">
                        <div style="clear: both">
                        </div>
                        <div style="float: left">
                            <input id="btnTT" onclick="TinhTienClick()" type="button" value="IN PHIẾU" style="width: 70px"
                                class="btn btn-default" />
                        </div>
                        <div style="float: right">
                            <input id="btnDong" onclick="OnBtnClientClick()" type="button" value="ĐÓNG" style="width: 70px"
                                class="btn btn-default" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="ChuyenBanModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            &times;</button>
                        <h4 class="modal-title">
                            CHUYỂN BÀN</h4>
                    </div>
                    <div class="modal-body">
                        <div style="clear: both">
                        </div>
                        <div style="float: left; margin-left: 20px">
                            <div>
                                Bàn chuyển</div>
                            <asp:DropDownList ID="drBanChuyen" runat="server" CssClass="form form-control">
                            </asp:DropDownList>
                        </div>
                        <div style="float: right; margin-right: 20px">
                            <div>
                                Bàn Nhận</div>
                            <asp:DropDownList ID="drBanNhan" runat="server" CssClass="form form-control">
                            </asp:DropDownList>
                        </div>
                        <div style="clear: both">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div style="clear: both">
                            <div style="float: left">
                                <input id="btnChuyen" onclick="chuyenBanClick()" type="button" value="CHUYỂN" style="width: 70px"
                                    class="btn btn-default" />
                            </div>
                            <div style="float: right">
                                <input id="btnKhChuyen" onclick="khongChuyenBanClick()" type="button" value="ĐÓNG"
                                    style="width: 70px" class="btn btn-default" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="SMSModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            &times;</button>
                        <h4 class="modal-title">
                            GỬI TIN NHẮN</h4>
                    </div>
                    <div class="modal-body">
                        <div style="clear: both">
                        </div>
                        <asp:TextBox ID="txtSmsThuNgan" runat="server" CssClass="text" Width="99%"></asp:TextBox>
                        <div style="clear: both">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div style="float: left">
                            <input id="btnSend" onclick="Send_clicked()" type="button" value="GỬI" style="width: 70px"
                                class="btn btn-default" />
                        </div>
                        <div style="float: right">
                            <input id="btnDongSMS" onclick="CloseSmsClick()" type="button" value="ĐÓNG" style="width: 70px"
                                class="btn btn-default" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="ThemBotModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            &times;</button>
                        <h4 class="modal-title">
                            THÊM BỚT</h4>
                    </div>
                    <div class="modal-body">
                        <div style="clear: both">
                        </div>
                        <div style="width: 100%">
                            <div style="width: 25%; float: left">
                                <asp:DropDownList ID="drSoThemBot" runat="server" Width="95%" CssClass="drList">
                                    <asp:ListItem>  </asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>và</asp:ListItem>
                                    <asp:ListItem>Xóa</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div style="width: 35%; float: left">
                                <asp:DropDownList ID="drItNhieu" runat="server" Width="95%" CssClass="drList">
                                    <asp:ListItem> </asp:ListItem>
                                    <asp:ListItem>Nhiều</asp:ListItem>
                                    <asp:ListItem>Ít</asp:ListItem>
                                    <asp:ListItem>Không</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div style="width: 40%; float: left">
                                <asp:DropDownList ID="drLoaiThemBot" runat="server" DataSourceID="sqlThemBot" DataTextField="TenThemBot"
                                    DataValueField="TenThemBot" Width="100%" CssClass="drList">
                                </asp:DropDownList>
                            </div>
                            <asp:SqlDataSource ID="sqlThemBot" runat="server" ConnectionString="<%$ ConnectionStrings:QuynhLinhDbConnectionString %>"
                                SelectCommand="SELECT [TenThemBot] FROM [DMThemBot]"></asp:SqlDataSource>
                        </div>
                        <div style="clear: both; height: 10px;">
                        </div>
                        <asp:TextBox ID="txtSMS" runat="server" Font-Size="18px" Height="25px" Width="99%"></asp:TextBox>
                        <div style="clear: both; height: 10px;">
                        </div>
                        <div id="divMon2" style="overflow: auto; height: 240px">
                            <asp:GridView ID="gvThemBot" runat="server" AutoGenerateColumns="False" Height="140px"
                                ShowHeaderWhenEmpty="True" Width="99%">
                                <Columns>
                                    <asp:TemplateField HeaderText="Ma"></asp:TemplateField>
                                    <asp:TemplateField HeaderText="Ten"></asp:TemplateField>
                                    <asp:TemplateField HeaderText="Luong"></asp:TemplateField>
                                    <asp:TemplateField HeaderText="GhiChu"></asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                        <div style="clear: both">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div style="float: left">
                            <input id="btnTB" onclick="TB_clicked()" type="button" value="OK" style="width: 70px"
                                class="btn btn-default" />
                        </div>
                        <div style="float: right">
                            <input id="btnDongTB" onclick="CloseThemBotClick()" type="button" value="ĐÓNG" style="width: 70px"
                                class="btn btn-default" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="ChuyenMonModal" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            &times;</button>
                        <h4 class="modal-title">
                            CHUYỂN MÓN</h4>
                    </div>
                    <div class="modal-body">
                        <div style="clear: both">
                        </div>
                        <div style="margin-bottom: 40px;">
                            <div style="float: left; margin-left: 20px">
                                <div>
                                    Từ Bàn</div>
                                <asp:DropDownList ID="drNguon" runat="server" CssClass="drList">
                                </asp:DropDownList>
                            </div>
                            <div style="float: right; margin-right: 20px">
                                <div>
                                    Đến Bàn</div>
                                <asp:DropDownList ID="drDich" runat="server" CssClass="drList">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div style="clear: both">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div style="clear: both">
                            <div style="float: left">
                                <input id="btnChuyenMon" onclick="chuyenMonClick()" type="button" value="CH.MÓN"
                                    style="width: 70px" class="btn btn-default" />
                            </div>
                            <div style="float: right">
                                <input id="btnKhChuyenMon" onclick="khongChuyenMonClick()" type="button" value="ĐÓNG"
                                    style="width: 70px" class="btn btn-default" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="float: right">
            <input id="logoutID" onclick="thoat()" type="button" value="LOGOUT" style="width: 70px"
                class="btn btn-default" />
            <span id="lbUsername" runat="server"></span>
        </div>
        <div style="clear: both"></div>
        <div class="row">
            <div class="col col-xs-3 col-sm-3">
                <input id="ycTT" onclick="yeuCauTinhTienClick()" class="btn btn-success" type="button"
                    value="T.TIỀN" />
            </div>
            <div class="col col-xs-3 col-sm-3">
                <input id="btnChyenBan" onclick="ycChuyenBanClick()" class="btn btn-default" type="button"
                    value="CH.BÀN" />
            </div>
            <div class="col col-xs-2 col-sm-3">
                <input id="btnSMS" onclick="guiTinNhan()" class="btn btn-default" type="button" value="SMS" />
            </div>
            <div class="col col-xs-4 col-sm-3">
                <asp:DropDownList ID="cbBanAn" runat="server" CssClass="form form-control">
                </asp:DropDownList>
            </div>
            <!---->
        </div>
        <div class="row">
            <div class="col col-xs-2 col-sm-1">
                <input id="btnShowAll" onclick="Minh.search(this.value)" class="btn btn-default"
                    type="button" value="*" />
            </div>
            <div class="col col-xs-2 col-sm-1">
                <input id="bnXem" onclick="Minh.soLuong()" class="btn btn-default" type="button"
                    value="XEM" />
            </div>
            <div class="col col-xs-2 col-sm-1">
                <input id="bnXoa" onclick="Minh.soLuong0()" class="btn btn-default" type="button"
                    value="XÓA" />
            </div>
            <div class="col col-xs-2 col-sm-1">
                <input id="bnTB" onclick="ThemBot()" class="btn btn-default" type="button" value="TB" />
            </div>
            <div class="col col-xs-2 col-sm-1">
                <input id="bnCM" onclick="ycChuyenMon()" class="btn btn-default" type="button" value="CM" />
            </div>
            <div class="col col-xs-2 col-sm-2 col-sm-offset-5">
                <input id="bnOK" onclick="button_clicked()" class="btn btn-success" type="button"
                    value="OK" />
            </div>
        </div>
        <div class="row">
            <div class="col-xs-11" style="padding: 0px; top: 0px; left: 0px;">
                <div class="col col-xs-2 col-sm-1">
                    <input id="bn1" onclick="Minh.setLbSo(this.value)" type="button" value="1" class="btn btn-default" />
                </div>
                <div class="col col-xs-2 col-sm-1">
                    <input id="bn2" onclick="Minh.setLbSo(this.value)" type="button" value="2" class="btn btn-default" />
                </div>
                <div class="col col-xs-2 col-sm-1">
                    <input id="bn3" onclick="Minh.setLbSo(this.value)" type="button" value="3" class="btn btn-default" />
                </div>
                <div class="col col-xs-2 col-sm-1">
                    <input id="bn4" onclick="Minh.setLbSo(this.value)" type="button" value="4" class="btn btn-default" />
                </div>
                <div class="col col-xs-2 col-sm-1">
                    <input id="bn5" onclick="Minh.setLbSo(this.value)" type="button" value="5" class="btn btn-default" />
                </div>
                <div class="col col-xs-2 col-sm-1">
                    <input id="bn6" onclick="Minh.setLbSo(this.value)" type="button" value="6" class="btn btn-default" />
                </div>
                <div class="col col-xs-2 col-sm-1">
                    <input id="bn7" onclick="Minh.setLbSo(this.value)" type="button" value="7" class="btn btn-default" />
                </div>
                <div class="col col-xs-2 col-sm-1">
                    <input id="bn8" onclick="Minh.setLbSo(this.value)" type="button" value="8" class="btn btn-default" />
                </div>
                <div class="col col-xs-2 col-sm-1">
                    <input id="bn9" onclick="Minh.setLbSo(this.value)" type="button" value="9" class="btn btn-default" />
                </div>
                <div class="col col-xs-2 col-sm-1">
                    <input id="bn0" onclick="Minh.setLbSo(this.value)" type="button" value="0" class="btn btn-default" />
                </div>
                <div class="col col-xs-2 col-sm-1">
                    <input id="btnCongTru" onclick="Minh.setTextCongTru('btnCongTru')" type="button"
                        value="+" class="btn btn-success" />
                </div>
                <div class="col col-xs-2 col-sm-1">
                    <input id="bnCl" onclick="Minh.Clear()" type="button" value="C" class="btn btn-default" />
                </div>
            </div>
            <span id="lbSo" runat="server"></span>
        </div>
        <div class="row">
            <div class="col col-xs-2">
                <input id="bnA" onclick="Minh.search(this.value)" type="button" value="A" class="btn btn-default" />
                <input id="bnB" onclick="Minh.search(this.value)" type="button" value="B" class="btn btn-default" />
                <input id="bnC" onclick="Minh.search(this.value)" type="button" value="C" class="btn btn-default" />
                <input id="bnD" onclick="Minh.search(this.value)" type="button" value="D" class="btn btn-default" />
                <input id="bnE" onclick="Minh.search(this.value)" type="button" value="E" class="btn btn-default" />
                <input id="bnG" onclick="Minh.search(this.value)" type="button" value="G" class="btn btn-default" />
                <input id="bnH" onclick="Minh.search(this.value)" type="button" value="H" class="btn btn-default" />
                <input id="bnI" onclick="Minh.search(this.value)" type="button" value="I" class="btn btn-default" />
                <input id="bnK" onclick="Minh.search(this.value)" type="button" value="K" class="btn btn-default" />
                <input id="bnL" onclick="Minh.search(this.value)" type="button" value="L" class="btn btn-default" />
                <input id="bnM" onclick="Minh.search(this.value)" type="button" value="M" class="btn btn-default" />
                <div class="checkbox">
                    <label>
                        <input id="chBanPhim" type="checkbox" value="" />
                        Bàn phím
                    </label>
                </div>
            </div>
            <div class="col col-xs-2">
                <input id="bnN" onclick="Minh.search(this.value)" type="button" value="N" class="btn btn-default" />
                <input id="bnO" onclick="Minh.search(this.value)" type="button" value="O" class="btn btn-default" />
                <input id="bnP" onclick="Minh.search(this.value)" type="button" value="P" class="btn btn-default" />
                <input id="bnQ" onclick="Minh.search(this.value)" type="button" value="Q" class="btn btn-default" />
                <input id="bnR" onclick="Minh.search(this.value)" type="button" value="R" class="btn btn-default" />
                <input id="bnS" onclick="Minh.search(this.value)" type="button" value="S" class="btn btn-default" />
                <input id="bnT" onclick="Minh.search(this.value)" type="button" value="T" class="btn btn-default" />
                <input id="bnU" onclick="Minh.search(this.value)" type="button" value="U" class="btn btn-default" />
                <input id="bnV" onclick="Minh.search(this.value)" type="button" value="V" class="btn btn-default" />
                <input id="bnX" onclick="Minh.search(this.value)" type="button" value="X" class="btn btn-default" />
                <input id="bnY" onclick="Minh.search(this.value)" type="button" value="Y" class="btn btn-default" />
                <div class="checkbox">
                    <label>
                        <input id="chSoKyTu" type="checkbox" value="" />
                        2 ký tự
                    </label>
                </div>
            </div>
            <div id="divMon1" class="gv col col-xs-8">
                <asp:GridView ID="grv" runat="server" OnRowDataBound="grv_RowDataBound" AutoGenerateColumns="False"
                    ShowHeader="False" CssClass="table table-hover">
                    <Columns>
                        <asp:TemplateField HeaderText="Mã">
                            <ItemTemplate>
                                <asp:Label ID="Label0" runat="server" Text='<%# Eval("Mã") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="1%" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tên">
                            <ItemTemplate>
                                <asp:Label ID="lb" runat="server" Text='<%# Eval("Tên") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Lượng">
                            <ItemTemplate>
                                <asp:Label ID="lb2" runat="server" Text='<%# Eval("Lượng") %>' CssClass="label"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
