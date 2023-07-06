<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="XoaSach.aspx.cs" Inherits="NhaHang.Admin.XoaSachDuLieuRatNguyHiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" 
        onclick="ASPxButton1_Click" Text="Xóa sạch dữ liệu" Width="130px">
        <ClientSideEvents Click="function(s, e) {
	e.processOnServer = confirm('Đồng ý xóa sạch không?');
}" />
    </dx:ASPxButton>
</asp:Content>
