<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="message.aspx.cs" Inherits="NhaHang.message" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<audio id="audiotag1" src="ThemMon.mp3" preload="auto"></audio>
<a href="javascript:play_single_sound();">Play 5-sec sound on single channel</a>
<script type="text/javascript">
    function play_single_sound() {
        document.getElementById('audiotag1').play();
    }
</script>

</asp:Content>
