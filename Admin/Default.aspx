<%@ Page Title="ADMIN" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NhaHang.Admin.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/Admin/ExcelToBan.aspx">Excel-Ban</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" 
        NavigateUrl="~/Admin/ExcelToKhuVucBan.aspx">Excel-KhuVucBan</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" 
        NavigateUrl="~/Admin/ExcelToMonAn.aspx">Excel-Mon</asp:HyperLink>
&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" 
        NavigateUrl="~/Admin/MonToExcel.aspx">Mon-Excel</asp:HyperLink>
</asp:Content>
