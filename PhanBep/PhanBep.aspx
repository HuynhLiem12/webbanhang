<%@ Page Title="PHAN BEP" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="PhanBep.aspx.cs" Inherits="NhaHang.PhanBep.PhanBep" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" Font-Bold="True" HeaderText="PHÂN LOẠI BẾP">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxGridView ID="gvPhanBep" runat="server" AutoGenerateColumns="False" DataSourceID="lqPhanLoaiBep"
                            KeyFieldName="TenBep;KhuVucId;LoaiCheBien">
                            <Columns>
                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowEditButton="True" ShowNewButton="True" ShowDeleteButton="True"/>
                                <dx:GridViewDataComboBoxColumn Caption="Tên Bếp" FieldName="TenBep" ShowInCustomizationForm="True"
                                    VisibleIndex="1">
                                    <PropertiesComboBox DataSourceID="lqTenBep" TextField="TenBep" ValueField="TenBep">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Khu Vực" FieldName="KhuVucId" ShowInCustomizationForm="True"
                                    VisibleIndex="2">
                                    <PropertiesComboBox DataSourceID="lqKhuVuc" TextField="TenKhuVuc" ValueField="KhuVucId">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Loại Chế Biến" FieldName="LoaiCheBien" ShowInCustomizationForm="True"
                                    VisibleIndex="3">
                                    <PropertiesComboBox DataSourceID="lqLoaiCheBien" TextField="TenLoaiHang" ValueField="LoaiHangId">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="True" />
                            <SettingsText CommandCancel="Không" CommandDelete="Xóa" CommandEdit="Sửa" CommandNew="Thêm"
                                CommandUpdate="Có" ConfirmDelete="Đồng ý XÓA?" />
                        </dx:ASPxGridView>
                        <asp:LinqDataSource ID="lqPhanLoaiBep" runat="server" ContextTypeName="NhaHangSql.PhanBepDbDataContext"
                            EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                            TableName="PhanLoaiBep_pbs" StoreOriginalValuesInViewState="False">
                        </asp:LinqDataSource>
                        <asp:LinqDataSource ID="lqKhuVuc" runat="server" ContextTypeName="NhaHangSql.PhanBepDbDataContext"
                            EntityTypeName="" TableName="DMKhuVuc_pbs">
                        </asp:LinqDataSource>
                        <asp:LinqDataSource ID="lqLoaiCheBien" runat="server" ContextTypeName="NhaHangSql.PhanBepDbDataContext"
                            EntityTypeName="" TableName="DMLoaiHang_pbs">
                        </asp:LinqDataSource>
                        <asp:LinqDataSource ID="lqTenBep" runat="server" ContextTypeName="NhaHangSql.PhanBepDbDataContext"
                            EntityTypeName="" TableName="DMBep_pbs">
                        </asp:LinqDataSource>
                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
