<%@ Page Language="C#" AutoEventWireup="true" Inherits="NhaHang.BanHang.banhang"
    EnableEventValidation="true" ViewStateMode="Disabled" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="msapplication-tap-highlight" content="no" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link rel="icon" href="../MacBrain.ico">
    <title>BAN HANG</title>
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
    <style type="text/css">
        .protected
        {
            position: absolute;
            font-weight: bold;
            vertical-align: text-bottom;
            top: 0px;
            left: 0px;
            width: 100%;
            height: 350px;
            -moz-user-select: none;
            -webkit-user-select: none;
            -ms-user-select: none;
        }
        .lbStyle
        {
            vertical-align: middle;
            text-align: center;
            color: #3333FF;
            background-color: #FFFF00;
            padding-top: 10px;
        }
        .abcBn
        {
            width: 100%;
            margin: 9px 2px 2px 2px;
        }
        .abcBn .dxbButton
        {
            /*    
            font-size: 45px !important;
            font-weight: bold;
            */
        }
        
        .dxbButton_iOS div.dxb
        {
            padding: 0px 10px !important;
        }
        .dxbButton_iOS
        {
            height: 35px !important;
        }
        .commBn
        {
            width: 13%;
            float: left;
            margin-left: 2px;
        }
        .commBn1
        {
            width: 16%;
            float: left;
            margin-left: 2px;
        }
        .FixedHeader
        {
            position: absolute;
            font-weight: bold;
            vertical-align: text-bottom;
            top: 0px;
            left: 0px;
            width: 100%;
            height: 350px;
        }
        .label
        {
            font-size: 20px;
            font-weight: bold;
            text-align: center;
            background-color: #FFFF00;
            padding-top: 10px;
            width: 50px;
            height: 40px;
            display: block;
        }
        .thembot_SoLuong
        {
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            background-color: #FFFF00;
            width: 50px;
            height: 40px;
            padding-top: 10px;
        }
        
        .thembot_TenMon
        {
            font-size: 14px;
            font-weight: bold;
            text-align: center;
            background-color: #99CCFF;
            width: 95px;
            height: 40px;
            padding-top: 10px;
        }
        
        .thembot_Ghichu
        {
            font-size: 11px;
            font-weight: bold;
            text-align: center;
            background-color: #00CC99;
            width: 100px;
            height: 40px;
            padding-top: 10px;
        }
        
        #form1
        {
            top: 2px;
            left: 0px;
        }
        .btn
        {
            width: 99%;
            height: 35px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 0.8em;
        }
        .goiBtn
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
            border: 1px solid #C0C0C0;
            border-radius: 5px;
            height: 36px;
            width: 95%;
        }
        .drList
        {
            height: 40px;
        }
    </style>
    <script type="text/javascript" src="../Scripts/jquery-1.7.1.min.js"></script>
</head>
<body onmousemove="ResetTimers();" onunload="Leave();">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="True"
        EnablePageMethods="True">
        <Scripts>
            <asp:ScriptReference Path="scripts.banhang.js" />
        </Scripts>
    </asp:ScriptManager>
    <div align="center" class="protected">
        <div style="width: 100%;">
            <dx:ASPxLabel ID="lbHetHan" runat="server" Text="Đã hết hạn sử dụng, Liên hệ 0913858801"
                Visible="False" Theme="iOS">
            </dx:ASPxLabel>
        </div>
        <div style="width: 100%; display: inline-block; margin-top: 5px;">
            <div style="float: left; width: 65%;">
                <div style="width: 35%; float: left">
                    <input id="ycTT" onclick="yeuCauTinhTienClick_MTB()" type="button" value="T.TIỀN"
                        class="goiBtn" style="background-color: #00FF00" />
                </div>
                <div style="width: 35%; float: left">
                    <input id="btnChyenBan" onclick="ycChuyenBanClick()" type="button" value="CH.BÀN"
                        class="goiBtn" />
                </div>
                <div style="width: 29%; float: left">
                    <input id="btnSMS" onclick="guiTinNhan()" type="button" value="SMS" class="goiBtn" />
                </div>
                <dx:ASPxPopupControl ID="ppPhieu" runat="server" HeaderText="Phiếu tính tiền" LoadingPanelText="Xin chờ..."
                    ClientInstanceName="ClientPopupControl" ScrollBars="Auto" Width="595px" EncodeHtml="False"
                    CloseAction="CloseButton" ShowFooter="True" CssClass="goiBtn" Modal="True">
                    <FooterContentTemplate>
                        <div style="clear: both">
                            <div style="float: left">
                                <input id="btnTT" onclick="TinhTienClick()" type="button" value="IN PHIẾU" style="width: 70px"
                                    class="goiBtn" />
                            </div>
                            <%-- 
                            <div style="float: left; margin-left: 36px;">
                                <input id="btIN" onclick="InClick()" type="button" value="IN" style="width: 70px"
                                    class="goiBtn" />
                            </div>
                            --%>
                            <div style="float: right">
                                <input id="btnDong" onclick="OnBtnClientClick()" type="button" value="ĐÓNG" style="width: 70px"
                                    class="goiBtn" />
                            </div>
                        </div>
                    </FooterContentTemplate>
                    <ContentCollection>
                        <dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server" SupportsDisabledAttribute="True">
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
                <dx:ASPxPopupControl ID="ppChuyenBan" runat="server" HeaderText="CHUYỂN BÀN" LoadingPanelText="Xin chờ..."
                    ClientInstanceName="ppChuyenBan" ScrollBars="Auto" Width="595px" EncodeHtml="False"
                    CloseAction="CloseButton" ShowFooter="True" Modal="True">
                    <FooterContentTemplate>
                        <div style="clear: both">
                            <div style="float: left">
                                <input id="btnChuyen" onclick="chuyenBanClick()" type="button" value="CHUYỂN" style="width: 70px"
                                    class="goiBtn" />
                            </div>
                            <div style="float: right">
                                <input id="btnKhChuyen" onclick="khongChuyenBanClick()" type="button" value="ĐÓNG"
                                    style="width: 70px" class="goiBtn" />
                            </div>
                        </div>
                    </FooterContentTemplate>
                    <ContentCollection>
                        <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                            <div style="margin-bottom: 40px;">
                                <div style="float: left; margin-left: 20px">
                                    <div>
                                        Bàn chuyển</div>
                                    <asp:DropDownList ID="drBanChuyen" runat="server" CssClass="drList">
                                    </asp:DropDownList>
                                </div>
                                <div style="float: right; margin-right: 20px">
                                    <div>
                                        Bàn Nhận</div>
                                    <asp:DropDownList ID="drBanNhan" runat="server" CssClass="drList">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
                <dx:ASPxPopupControl ID="ppChuyenMon" runat="server" HeaderText="CHUYỂN MÓN" LoadingPanelText="Xin chờ..."
                    ClientInstanceName="ppChuyenMon" ScrollBars="Auto" Width="595px" EncodeHtml="False"
                    CloseAction="CloseButton" ShowFooter="True" Modal="True">
                    <FooterContentTemplate>
                        <div style="clear: both">
                            <div style="float: left">
                                <input id="btnChuyen" onclick="chuyenMonClick()" type="button" value="CH.MÓN" style="width: 70px"
                                    class="goiBtn" />
                            </div>
                            <div style="float: right">
                                <input id="btnKhChuyen" onclick="khongChuyenMonClick()" type="button" value="ĐÓNG"
                                    style="width: 70px" class="goiBtn" />
                            </div>
                        </div>
                    </FooterContentTemplate>
                    <ContentCollection>
                        <dx:PopupControlContentControl ID="PopupControlContentControl3" runat="server" SupportsDisabledAttribute="True">
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
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
                <dx:ASPxPopupControl ID="ppThemBot" runat="server" HeaderText="Them bot" LoadingPanelText="Xin chờ..."
                    ClientInstanceName="ppThemBot" ScrollBars="Auto" Width="595px" EncodeHtml="False"
                    CloseAction="CloseButton" ShowFooter="True" CssClass="goiBtn">
                    <FooterContentTemplate>
                        <div style="clear: both">
                            <div style="float: left">
                                <input id="btnTT" onclick="TB_clicked()" type="button" value="OK" style="width: 70px"
                                    class="goiBtn" />
                            </div>
                            <div style="float: right">
                                <input id="btnDong" onclick="CloseThemBotClick()" type="button" value="ĐÓNG" style="width: 70px"
                                    class="goiBtn" />
                            </div>
                        </div>
                    </FooterContentTemplate>
                    <ContentCollection>
                        <dx:PopupControlContentControl ID="PopupControlContentControl2" runat="server" SupportsDisabledAttribute="True">
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
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
                <dx:ASPxPopupControl ID="ppSMS" runat="server" HeaderText="Nhan Tin" LoadingPanelText="Xin chờ..."
                    ClientInstanceName="ppSMS" ScrollBars="Auto" Width="595px" EncodeHtml="False"
                    CloseAction="CloseButton" ShowFooter="True" CssClass="goiBtn">
                    <FooterContentTemplate>
                        <div style="clear: both">
                            <div style="float: left">
                                <input id="btnSend" onclick="Send_clicked()" type="button" value="GỬI" style="width: 70px"
                                    class="goiBtn" />
                            </div>
                            <div style="float: right">
                                <input id="btnDongSMS" onclick="CloseSmsClick()" type="button" value="ĐÓNG" style="width: 70px"
                                    class="goiBtn" />
                            </div>
                        </div>
                    </FooterContentTemplate>
                    <ContentCollection>
                        <dx:PopupControlContentControl runat="server" SupportsDisabledAttribute="True">
                            <asp:TextBox ID="txtSmsThuNgan" runat="server" Font-Size="18pt" Height="25px" Width="99%"></asp:TextBox>
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                </dx:ASPxPopupControl>
            </div>
            <div style="width: 35%; float: right;">
                <asp:DropDownList ID="cbBanAn" runat="server" Height="38px" CssClass="drList">
                </asp:DropDownList>
            </div>
        </div>
        <div style="width: 100%; display: inline-block; margin-top: 9px;">
            <div class="commBn1" style="width: 60px">
                <dx:ASPxButton ID="btnShowAll" runat="server" Text="*" Theme="iOS" CausesValidation="False"
                    AutoPostBack="False" CssClass="commBn1" Width="95%">
                    <ClientSideEvents Click="function(s, e) {
Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
            </div>
            <div class="commBn1">
                <dx:ASPxButton ID="ASPxButton23" runat="server" Text="XEM" CausesValidation="False"
                    AutoPostBack="False" Theme="iOS" CssClass="commBn1" Width="95%">
                    <ClientSideEvents Click="function(s, e) {
	Minh.soLuong()
}" />
                </dx:ASPxButton>
            </div>
            <div class="commBn1">
                <dx:ASPxButton ID="btXoa" runat="server" Text="XÓA" Theme="iOS" CausesValidation="False"
                    AutoPostBack="False" CssClass="commBn1" Width="95%">
                    <ClientSideEvents Click="function(s, e) {
	Minh.soLuong0()
}" />
                </dx:ASPxButton>
            </div>
            <div class="commBn1">
                <input id="Button1" onclick="ThemBot()" type="button" value="TB" class="goiBtn" />
            </div>
            <div class="commBn1">
                <input id="Button2" onclick="ycChuyenMon()" type="button" value="CM" class="goiBtn" />
            </div>
            <div style="float: right; margin-right: 6px; width: 18%;" class="btn">
                <input id="btn" onclick="button_clicked()" type="button" value="OK" class="goiBtn"
                    style="background-color: #FFCC66" />
            </div>
        </div>
        <div class="clear">
            <div style="width: 100%; display: inline-block; margin-top: 9px;">
                <div class="commBn">
                    <dx:ASPxButton ID="bt1" runat="server" Text="1" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="bt2" runat="server" Text="2" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="bt3" runat="server" Text="3" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="bt4" runat="server" Text="4" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="bt5" runat="server" Text="5" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="bt6" runat="server" Text="6" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
            </div>
            <div class="clear">
            </div>
            <div style="width: 100%; display: inline-block; margin-top: 9px;">
                <div class="commBn">
                    <dx:ASPxButton ID="bt7" runat="server" Text="7" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="bt8" runat="server" Text="8" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="bt9" runat="server" Text="9" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="ASPxButton25" runat="server" Text="0" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxLabel ID="btPhepTinh" runat="server" ClientInstanceName="btPhepTinh" Theme="iOS"
                        Text="+" Font-Size="18pt" Width="95%" BackColor="#00CC99" CssClass="goiBtn">
                        <ClientSideEvents Click="function(s, e) {
	if(s.GetText()=='+')
		s.SetText('*');
	else if(s.GetText()=='*')
		s.SetText('-');
	else if(s.GetText()=='-')
		s.SetText('+');
}" />
                    </dx:ASPxLabel>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="ASPxButton27" runat="server" Text="C" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.Clear()
}" />
                    </dx:ASPxButton>
                </div>
                <dx:ASPxLabel ID="lbSo" runat="server" ClientInstanceName="lbSo" Theme="iOS" Font-Size="20pt">
                </dx:ASPxLabel>
            </div>
            <div class="clear">
            </div>
        </div>
        <div style="width: 25%; float: left; margin-left: 2px;">
            <div style="float: left; width: 48%;">
                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="A" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton2" runat="server" Text="B" AutoPostBack="False" ClientInstanceName="nutB"
                    CausesValidation="False" Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton3" runat="server" Text="C" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton4" runat="server" Text="D" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton5" runat="server" Text="E" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton6" runat="server" Text="G" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton7" runat="server" Text="H" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton8" runat="server" Text="I" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton9" runat="server" Text="K" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton10" runat="server" Text="L" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton11" runat="server" Text="M" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
            </div>
            <div style="float: left; margin-left: 2px; width: 48%;">
                <dx:ASPxButton ID="ASPxButton12" runat="server" Text="N" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton13" runat="server" Text="O" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton14" runat="server" Text="P" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton15" runat="server" Text="Q" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton16" runat="server" Text="R" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton17" runat="server" Text="S" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton18" runat="server" Text="T" AutoPostBack="False" CausesValidation="False"
                    ClientInstanceName="nutT" Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton19" runat="server" Text="U" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton20" runat="server" Text="V" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton21" runat="server" Text="X" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton22" runat="server" Text="Y" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
            </div>
        </div>
        <div style="float: left; width: 74%; text-align: left;">
            <div style="position: absolute; width: 73%; height: 640px; top: 195px; overflow: auto;"
                id="divMon1">
                <asp:GridView ID="GridView1" runat="server" Width="99%" OnRowDataBound="GridView1_RowDataBound"
                    AutoGenerateColumns="False" ShowHeader="False" Font-Size="15pt">
                    <Columns>
                        <asp:TemplateField HeaderText="Mã">
                            <ItemTemplate>
                                <asp:Label ID="Label0" runat="server" Text='<%# Eval("Mã") %>'></asp:Label>
                            </ItemTemplate>
                            <HeaderStyle Width="1%" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tên">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Tên") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Lượng">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Lượng") %>' CssClass="label"></asp:Label>
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
