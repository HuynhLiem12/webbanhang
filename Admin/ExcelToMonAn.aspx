<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExcelToMonAn.aspx.cs" Inherits="NhaHang.Admin.ExcelToMonAn"%>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">

        function pasteContent() {
            document.getElementById('ClipboardContent').value = window.clipboardData.getData('Text');
            return (true);
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Button ID="ReloadCtl" runat="server" Text="Paste" OnClick="ReloadCtl_Click"
            OnClientClick="return pasteContent();" />
        &nbsp;(Cần Copy cả phần tiêu đề Cột)<asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" Font-Names="Tahoma">
                </asp:GridView>
                <asp:HiddenField ID="ClipboardContent" runat="server" ClientIDMode="Static" />
                <asp:Label ID="lblMsg" runat="server" Text="" style="color: #FF0000"></asp:Label>
                <br />
                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Tạo Mới Danh Sach Món" 
                    onclick="btnSend_Click">
                    <ClientSideEvents Click="function(s, e) {
	e.processOnServer = confirm('Xóa các món cũ, tạo các món mới, đồng ý thì OK?');
}" />
                </dx:ASPxButton>
                &nbsp;&nbsp;<asp:Button ID="btnXoaNoiDung" runat="server" Text="Hủy Bỏ" 
                    onclick="btnXoaNoiDung_Click" />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="ReloadCtl" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>
