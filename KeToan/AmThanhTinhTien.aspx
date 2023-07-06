<%@ Page Title="AM BAO TINH TIEN" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="AmThanhTinhTien.aspx.cs" Inherits="NhaHang.AmThanhTinhTien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <audio id="audiotag1" src="tinhtien.mp3"></audio>
    <script type="text/javascript">
        function play_single_sound() {
            document.getElementById('audiotag1').load();
            document.getElementById('audiotag1').play();
        }
    </script>
    ÂM BÁO TÍNH TIỀN
    <br />
    <input type="button" onclick="play_single_sound()" value="Play Sound" />
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="True"
        EnablePageMethods="True">
        <Scripts>
            <asp:ScriptReference Path="scriptsAmBao.js" />
        </Scripts>
    </asp:ScriptManager>
</asp:Content>
