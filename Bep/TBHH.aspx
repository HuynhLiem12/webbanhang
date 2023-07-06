<%@ Page Title="TB HET HANG" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="TBHH.aspx.cs" Inherits="NhaHang.TBHH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="msapplication-tap-highlight" content="no" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <style type="text/css">
        .btn
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 18px;
            border: 1px solid #C0C0C0;
            border-radius: 5px;
            height: 29px;
            width: 95%;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="True"
        EnablePageMethods="True">
        <Scripts>
            <asp:ScriptReference Path="scriptsTBHH.js" />
        </Scripts>
    </asp:ScriptManager>
    <div align="center" style="font-size: 18px">
        THÔNG BÁO HẾT HÀNG
    </div>
    <div style="width: 100%; float: left">
        <dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" Width="99%" ClientInstanceName="edit_panel"
            OnCallback="ASPxCallbackPanel1_Callback">
            <PanelCollection>
                <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                    <dx:ASPxTextBox ID="txtNd" runat="server" Width="99%" Font-Bold="True" Font-Size="18pt"
                        Height="27" ClientInstanceName="txtNd">
                    </dx:ASPxTextBox>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxCallbackPanel>
    </div>
    <div style="clear: both; height: 5px;">
    </div>
    <div style="width: 40%; float: right">
        <input id="Button1" type="button" value="GỬI TB" onclick="GuiThongBao('')" class="btn" />
    </div>
    <div style="width: 50%; float: right">
        <input id="btGuiTB" type="button" value="GỬI HẾT HÀNG" onclick="GuiThongBao(' - HẾT HÀNG')" class="btn" />
    </div>
    <div style="clear: both; height: 5px;">
    </div>
    <div>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" Font-Size="18pt"
            KeyFieldName="MonAnId" DataSourceID="LinqDataSource1" Width="99%">
            <ClientSideEvents RowClick="function(s, e) {
	edit_panel.PerformCallback(e.visibleIndex);
}" />
            <Columns>
                <dx:GridViewDataTextColumn FieldName="MonAnId" VisibleIndex="1" ReadOnly="True" Width="10%"
                    Caption="MÃ">
                    <Settings ShowInFilterControl="False" />
                    <FilterCellStyle Font-Size="18pt">
                    </FilterCellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="TenMonAn" VisibleIndex="2" ReadOnly="True"
                    Width="89%" Caption="TÊN">
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsBehavior AllowFocusedRow="True" AllowSelectByRowClick="True" AllowSelectSingleRowOnly="True" />
            <Settings ShowFilterRow="True" />
        </dx:ASPxGridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
            EntityTypeName="" Select="new (MonAnId, TenMonAn)" TableName="DMMonAn_dms" Where="CoHang == @CoHang">
            <WhereParameters>
                <asp:Parameter DefaultValue="true" Name="CoHang" Type="Boolean" />
            </WhereParameters>
        </asp:LinqDataSource>
    </div>
</asp:Content>
