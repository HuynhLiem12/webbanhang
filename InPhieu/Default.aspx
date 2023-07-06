<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="NhaHang.inPhieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="True"
        EnablePageMethods="True">
        <Scripts>
            <asp:ScriptReference Path="scriptsIN.js" />
        </Scripts>
    </asp:ScriptManager>
    <div align="center" style="font-family: Arial, Helvetica, sans-serif; font-size: 14px;
        font-weight: bold; margin-top: 20px;">
        IN PHIẾU TRỰC TIẾP TỪ ĐIỆN THOẠI
        <%-- 
        <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="ASPxButton">
        </dx:ASPxButton>
        --%>
    </div>
</asp:Content>
