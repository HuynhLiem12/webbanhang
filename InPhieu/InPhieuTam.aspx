<%@ Page Title="IN PHIEU" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="InPhieuTam.aspx.cs" Inherits="NhaHang.InPhieuTam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="True"
        EnablePageMethods="True">
        <Scripts>
            <asp:ScriptReference Path="scriptsINTam.js" />
        </Scripts>
    </asp:ScriptManager>
    <div align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px;
        font-weight: bold; margin-top: 20px;">
        IN PHIẾU TẠM TRỰC TIẾP TỪ ĐIỆN THOẠI
        <%-- 
        <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="ASPxButton">
        </dx:ASPxButton>
        --%>
        <br />
    </div>
</asp:Content>
