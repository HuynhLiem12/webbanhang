<%@ Page Title="YC TINH TIEN" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="YeuCauTinhTien.aspx.cs" Inherits="NhaHang.YeuCauTinhTien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: 1.1em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager2" runat="server" EnablePartialRendering="True"
        EnablePageMethods="True">
        <Scripts>
            <asp:ScriptReference Path="scriptsAmBao.js" />
        </Scripts>
    </asp:ScriptManager>
    <br />
    <strong><span class="style1">YÊU CẦU TÍNH TIỀN</span></strong>
    <div align="center" style="width: 99%">
        <div align="center" style="width: 80%">
            <div style="float: left; padding-top: 5px; padding-bottom: 5px; width: 45%;">
                <dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" Width="99%" ClientInstanceName="edit_panel"
                    OnCallback="ASPxCallbackPanel1_Callback">
                    <PanelCollection>
                        <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                            <dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="95%" Font-Bold="True" Font-Size="18pt"
                                Height="27">
                            </dx:ASPxTextBox>
                        </dx:PanelContent>
                    </PanelCollection>
                </dx:ASPxCallbackPanel>
            </div>
            <div style="padding-top: 5px; padding-bottom: 5px; float: right; width: 45%;">
                <dx:ASPxButton ID="btXemPhieu" runat="server" Text="XEM PHIẾU" OnClick="btXemPhieu_Click"
                    Font-Size="14pt" Width="100%">
                </dx:ASPxButton>
            </div>
        </div>
        <div style="padding-top: 5px; padding-bottom: 5px; width: 99%; display: block;" align="center">
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                KeyFieldName="BanId" Font-Size="18pt" Width="99%" 
                onhtmlrowprepared="ASPxGridView1_HtmlRowPrepared">
                <ClientSideEvents RowClick="function(s, e) {
	edit_panel.PerformCallback(e.visibleIndex);
}" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="BanId" ReadOnly="True" VisibleIndex="0" 
                        Caption="Mã Bàn">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="TenBan" VisibleIndex="1" 
                        Caption="Tên Bàn">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataCheckColumn FieldName="DaInPhieu" VisibleIndex="2" Caption="Đã In Phiếu">
                    </dx:GridViewDataCheckColumn>
                    <dx:GridViewDataTextColumn Caption="Tiền" FieldName="Expr1" VisibleIndex="3" ReadOnly="True">
                    </dx:GridViewDataTextColumn>
                </Columns>
                <SettingsBehavior AllowFocusedRow="True" AllowSelectByRowClick="True" 
                    AllowSelectSingleRowOnly="True" AllowSort="False" />
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuynhLinhDbConnectionString %>" SelectCommand="SELECT derivedtbl_1.BanId, derivedtbl_1.TenBan, derivedtbl_1.DaInPhieu, SUM(PhieuTinhTienChiTiet.ThanhTien) AS Expr1 FROM (SELECT DMBan.BanId, DMBan.TenBan, DMBan.DaInPhieu, PhieuTinhTien.PhieuTinhTienId FROM DMBan INNER JOIN PhieuTinhTien ON DMBan.BanId = PhieuTinhTien.BanId WHERE (DMBan.GoiTinhTien = 1) AND (PhieuTinhTien.TinhTien = 0)) AS derivedtbl_1 INNER JOIN PhieuTinhTienChiTiet ON PhieuTinhTienChiTiet.PhieuTinhTienId = derivedtbl_1.PhieuTinhTienId GROUP BY derivedtbl_1.BanId, derivedtbl_1.TenBan, derivedtbl_1.DaInPhieu"></asp:SqlDataSource>
        </div>
    </div>
    <audio id="audiotag1" src="tinhtien.mp3"></audio>
    <script type="text/javascript">
        function play_single_sound() {
            //document.getElementById('audiotag1').load();
            document.getElementById('audiotag1').play();
        }
    </script>
</asp:Content>
