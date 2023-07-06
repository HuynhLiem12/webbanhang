<%@ Page Title="KHU VUC - NHAN VIEN" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="KhuVucUser.aspx.cs" Inherits="NhaHang.PhanKhu.KhuVucUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="KHU VỰC - NHÂN VIÊN">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxGridView ID="gvKhuVucNhanVien" runat="server" AutoGenerateColumns="False"
                            DataSourceID="lqKhuVucNhanVien" KeyFieldName="KhuVucId" OnCustomErrorText="gvKhuVucNhanVien_CustomErrorText">
                            <Columns>
                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowNewButton="True" ShowDeleteButton="True" ShowClearFilterButton="True"/>
                                <dx:GridViewDataComboBoxColumn Caption="Mã Khu Vực" FieldName="KhuVucId" ShowInCustomizationForm="True"
                                    VisibleIndex="1">
                                    <PropertiesComboBox DataSourceID="lqDMKhuVuc" TextField="TenKhuVuc" ValueField="KhuVucId">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Tên Nhân Viên" FieldName="UserName" ShowInCustomizationForm="True"
                                    VisibleIndex="2">
                                    <PropertiesComboBox DataSourceID="lqUser" TextField="UserName" ValueField="UserName">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="True" />
                            <Settings ShowFilterRow="True" />
                            <SettingsText CommandCancel="Không" CommandDelete="Xóa" CommandEdit="Sửa" CommandNew="Thêm"
                                CommandUpdate="Có" ConfirmDelete="Đồng ý XÓA?" />
                        </dx:ASPxGridView>
                    </div>
                    <asp:LinqDataSource ID="lqKhuVucNhanVien" runat="server" ContextTypeName="NhaHangSql.PhanKhuDbDataContext"
                        EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                        StoreOriginalValuesInViewState="False" TableName="KhuVucUser_pks">
                    </asp:LinqDataSource>
                    <asp:LinqDataSource ID="lqDMKhuVuc" runat="server" ContextTypeName="NhaHangSql.PhanKhuDbDataContext"
                        EntityTypeName="" TableName="DMKhuVuc_pks">
                    </asp:LinqDataSource>
                    <asp:LinqDataSource ID="lqUser" runat="server" ContextTypeName="NhaHangSql.PhanKhuDbDataContext"
                        EntityTypeName="" Select="new (UserName)" TableName="aspnet_User_pks">
                    </asp:LinqDataSource>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
