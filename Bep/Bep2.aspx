<%@ Page Title="BEP" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Bep2.aspx.cs" Inherits="NhaHang.Bep2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="True"
        EnablePageMethods="True">
        <Scripts>
            <asp:ScriptReference Path="scriptsMon.js" />
        </Scripts>
    </asp:ScriptManager>
    <br />
    CHỌN BẾP
    <dx:ASPxComboBox ID="cbBep" runat="server" DataSourceID="lqDMBep" TextField="TenBep"
        ValueField="TenBep" Font-Size="18pt" Height="63px" Width="280px" AutoPostBack="True"
        OnSelectedIndexChanged="cbBep_SelectedIndexChanged" 
        ClientInstanceName="cbBep" ondatabound="cbBep_DataBound">
    </dx:ASPxComboBox>
    <asp:LinqDataSource ID="lqDMBep" runat="server" ContextTypeName="NhaHangSql.PhanBepDbDataContext"
        EntityTypeName="" TableName="DMBep_pbs">
    </asp:LinqDataSource>
    <dx:ASPxGridView ID="gvBep" runat="server" AutoGenerateColumns="False" DataSourceID="BepDb"
        Font-Size="15pt" KeyFieldName="ID" Width="99%">
        <Columns>
            <dx:GridViewCommandColumn VisibleIndex="0" ShowDeleteButton="True"/>
            <dx:GridViewDataTextColumn Caption="Bàn" FieldName="BanId" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Lần gọi" FieldName="SoOrder" VisibleIndex="3">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataComboBoxColumn Caption="Món ăn" FieldName="MonAnId" VisibleIndex="4">
                <PropertiesComboBox DataSourceID="MonAnDb" TextField="TenMonAn" ValueField="MonAnId">
                </PropertiesComboBox>
            </dx:GridViewDataComboBoxColumn>
            <dx:GridViewDataTextColumn Caption="SL" FieldName="SoLuong" VisibleIndex="5">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Ghi chú" FieldName="GhiChu" VisibleIndex="6">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Phiếu" FieldName="PhieuId" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Bếp" FieldName="TenBep" VisibleIndex="8">
            </dx:GridViewDataTextColumn>
        </Columns>
        <SettingsPager Mode="ShowAllRecords">
        </SettingsPager>
        <SettingsText CommandDelete="Xong" ConfirmDelete="Xong chưa?" />
    </dx:ASPxGridView>
    <asp:LinqDataSource ID="BepDb" runat="server" ContextTypeName="NhaHangSql.PhieuTinhTienDataContext"
        EnableDelete="True" EntityTypeName="" TableName="Beps" Where="TenBep == @TenBep">
        <WhereParameters>
            <asp:ControlParameter ControlID="cbBep" Name="TenBep" PropertyName="Value" Type="String" />
        </WhereParameters>
    </asp:LinqDataSource>
    <asp:LinqDataSource ID="MonAnDb" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
        EntityTypeName="" Select="new (MonAnId, TenMonAn)" TableName="DMMonAn_dms">
    </asp:LinqDataSource>
    <audio id="audiotag1" src="ThemMon.mp3"></audio>
    <script type="text/javascript">
        function play_single_sound() {
            //document.getElementById('audiotag1').load();
            document.getElementById('audiotag1').play();
        }
    </script>
</asp:Content>
