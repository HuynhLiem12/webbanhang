<%@ Page Title="AM BAO BEP" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="BaoBep.aspx.cs" Inherits="NhaHang.BaoBep" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <audio id="audiotag1" src="ThemMon.wav" preload="auto"></audio>
    <script type="text/javascript">
        function play_single_sound() {
            document.getElementById('audiotag1').play();
        }
    </script>
    ÂM BÁO BẾP
    <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <asp:Timer runat="server" ID="UpdateTimer" Interval="10000" 
        OnTick="UpdateTimer_Tick" />
    <br />
    Chọn Bếp<dx:ASPxComboBox ID="cbBep" runat="server" DataSourceID="lqBep" TextField="TenBep"
        ValueField="TenBep" Font-Size="18pt" Height="63px" SelectedIndex="0" 
        Width="280px">
    </dx:ASPxComboBox>
    <asp:LinqDataSource ID="lqBep" runat="server" ContextTypeName="NhaHangSql.PhanBepDbDataContext"
        EntityTypeName="" Select="new (TenBep)" TableName="DMBep_pbs">
    </asp:LinqDataSource>
</asp:Content>
