<%@ Page Title="KHU VUC - BAN" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="KhuVucBan.aspx.cs" Inherits="NhaHang.PhanKhu.KhuVucBan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="KHU VỰC - BÀN">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxGridView ID="gvKhuVucBan" runat="server" AutoGenerateColumns="False" DataSourceID="lqKhuVucBan"
                            KeyFieldName="KhuVucId;BanId">
                            <Columns>
                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowNewButton="True" ShowDeleteButton="True" ShowClearFilterButton="True"/>
                                <dx:GridViewDataComboBoxColumn Caption="Mã Khu Vực" FieldName="KhuVucId" ShowInCustomizationForm="True"
                                    SortIndex="0" SortOrder="Ascending" VisibleIndex="1">
                                    <PropertiesComboBox DataSourceID="lqDMKhuVuc" TextField="TenKhuVuc" ValueField="KhuVucId">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Mã Bàn" FieldName="BanId" ShowInCustomizationForm="True"
                                    VisibleIndex="2">
                                    <PropertiesComboBox DataSourceID="lqDMBan" TextField="TenBan" ValueField="BanId">
                                    </PropertiesComboBox>
                                    <Settings AllowAutoFilter="False" />
                                </dx:GridViewDataComboBoxColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="True" />
                            <Settings ShowFilterRow="True" />
                            <SettingsText CommandCancel="Không" CommandDelete="Xóa" CommandEdit="Sửa" CommandNew="Thêm"
                                CommandUpdate="Có" ConfirmDelete="Đồng ý XÓA?" />
                        </dx:ASPxGridView>
                    </div>
                    <asp:LinqDataSource ID="lqKhuVucBan" runat="server" ContextTypeName="NhaHangSql.PhanKhuDbDataContext"
                        EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                        StoreOriginalValuesInViewState="False" TableName="KhuVucBan_pks">
                    </asp:LinqDataSource>
                    <asp:LinqDataSource ID="lqDMBan" runat="server" ContextTypeName="NhaHangSql.PhanKhuDbDataContext"
                        EntityTypeName="" Select="new (BanId, TenBan)" TableName="DMBan_pks">
                    </asp:LinqDataSource>
                    <asp:LinqDataSource ID="lqDMKhuVuc" runat="server" ContextTypeName="NhaHangSql.PhanKhuDbDataContext"
                        EntityTypeName="" TableName="DMKhuVuc_pks">
                    </asp:LinqDataSource>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
