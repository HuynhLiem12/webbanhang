<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="File.aspx.cs" Inherits="NhaHang.Admin.Sql.File" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxFileManager ID="ASPxFileManager1" runat="server" Height="480px" 
        Width="920px">
        <Settings RootFolder="~\Admin\Sql" ThumbnailFolder="~\Admin\Sql\Thumb\" 
            AllowedFileExtensions=".jpe, .jpeg, .jpg, .gif, .png, .sql" 
            EnableMultiSelect="True" />
        <SettingsEditing AllowCreate="True" AllowDelete="True" AllowMove="True" 
            AllowRename="True" />
        <SettingsToolbar ShowDownloadButton="True" />
    </dx:ASPxFileManager>
</asp:Content>
