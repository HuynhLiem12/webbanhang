<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Excel.aspx.cs" Inherits="NhaHang.Admin.Excel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <dx:ASPxTextBox ID="txtTenBang" runat="server" NullText="Nhập Tên Bảng" 
            Width="170px">
        </dx:ASPxTextBox>
        <asp:Button ID="sql2excel" runat="server" onclick="sql2excel_Click" 
            Text="Xuất ra Excel" />
    </p>
</asp:Content>
