<%@ Page Title="AM BAO BEP" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="AmBep.aspx.cs" Inherits="NhaHang.AmBep" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="True"
        EnablePageMethods="True">
        <Scripts>
            <asp:ScriptReference Path="scripts.bep.js" />
        </Scripts>
    </asp:ScriptManager>
    <br />
    <audio id="audiotag1" src="ThemMon.mp3"></audio>
    <script type="text/javascript">
        function play_single_sound() {
            document.getElementById('audiotag1').load();
            document.getElementById('audiotag1').play();
        }
    </script>
    ÂM BÁO BẾP<br />
    Chọn Bếp
    <dx:ASPxComboBox ID="cbBep" runat="server" DataSourceID="lqBep" TextField="TenBep"
        ValueField="TenBep" Font-Size="18pt" Height="63px" SelectedIndex="0" Width="280px"
        ClientInstanceName="cbBep">
    </dx:ASPxComboBox>
    <br />
    &nbsp;<asp:LinqDataSource ID="lqBep" runat="server" ContextTypeName="NhaHangSql.PhanBepDbDataContext"
        EntityTypeName="" Select="new (TenBep)" TableName="DMBep_pbs">
    </asp:LinqDataSource>
</asp:Content>
