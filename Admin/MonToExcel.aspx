<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MonToExcel.aspx.cs" Inherits="NhaHang.Admin.MonToExcel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
    <asp:Label ID="lbTenCSDL" runat="server" Text="Ten CSDL: "></asp:Label>
    <asp:TextBox ID="txtTenCSDL" runat="server"></asp:TextBox>
</div>
<div>
    <asp:Label ID="lbUser" runat="server" Text="Username: "></asp:Label>
    <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
</div>
<div>
    <asp:Label ID="lbPass" runat="server" Text="Password: "></asp:Label>
    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
</div>
    <p>
        <asp:Button ID="sql2excel" runat="server" onclick="sql2excel_Click" 
            Text="Xuất Món ra Excel" />
    </p>
</asp:Content>
