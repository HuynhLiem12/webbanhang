<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="KhoaNhanVien.aspx.cs" Inherits="NhaHang.Account.KhoaNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlNhanVien" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QuynhLinhDbConnectionString %>" 
        SelectCommand="SELECT aspnet_Membership.UserId, aspnet_Users.UserName, aspnet_Membership.IsLockedOut FROM aspnet_Membership INNER JOIN aspnet_Users ON aspnet_Membership.UserId = aspnet_Users.UserId" 
        UpdateCommand="UPDATE aspnet_Membership SET IsLockedOut = @IsLockedOut WHERE (UserId = @UserId)">
        <UpdateParameters>
            <asp:Parameter Name="IsLockedOut" />
            <asp:Parameter Name="UserId" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlNhanVien" KeyFieldName="UserId">
        <Columns>
            <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
            <dx:GridViewDataTextColumn FieldName="UserId" ReadOnly="True" Visible="False" 
                VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Tên Nhân Viên" FieldName="UserName" 
                ReadOnly="True" VisibleIndex="2">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataCheckColumn Caption="Khóa Nhân viên (có đánh dấu)" 
                FieldName="IsLockedOut" VisibleIndex="3">
                <PropertiesCheckEdit DisplayTextChecked="Khóa" 
                    DisplayTextUnchecked="Không Khóa">
                </PropertiesCheckEdit>
            </dx:GridViewDataCheckColumn>
        </Columns>
        <Settings ShowFilterRow="True" />
        <SettingsText CommandCancel="KHÔNG" CommandDelete="Xóa" CommandEdit="Sửa" 
            CommandNew="Thêm" CommandUpdate="CÓ" />
    </dx:ASPxGridView>
</asp:Content>
