<%@ Page Title="THUC PHAM" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DMThucPham.aspx.cs" Inherits="NhaHang.DMThucPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="HÀNG MUA VÀO ĐỂ CHẾ BIẾN">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="DMMonAnDb"
                            KeyFieldName="MonAnId" ClientInstanceName="grid" OnCustomErrorText="grid_CustomErrorText"
                            OnRowValidating="grid_RowValidating" OnStartRowEditing="grid_StartRowEditing"
                            OnProcessColumnAutoFilter="grid_ProcessColumnAutoFilter" 
                            OnRowDeleted="grid_RowDeleted" OnRowInserted="grid_RowInserted" 
                            OnRowInserting="grid_RowInserting" OnRowUpdated="grid_RowUpdated">
                            <Columns>
                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowEditButton="True" ShowNewButton="True" ShowDeleteButton="True" ShowClearFilterButton="True"/>
                                <dx:GridViewDataTextColumn Caption="Mã Hàng" FieldName="MonAnId" ShowInCustomizationForm="True"
                                    VisibleIndex="1" ReadOnly="True" Width="10%">
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="TenMonAn" ShowInCustomizationForm="True" VisibleIndex="2"
                                    Caption="Tên Hàng">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Đơn Vị" FieldName="DonViTinh" ShowInCustomizationForm="True"
                                    VisibleIndex="3" Width="10%">
                                    <PropertiesComboBox DataSourceID="DonViDb" IncrementalFilteringMode="Contains" TextField="DONVI"
                                        ValueField="DONVI">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataCheckColumn Caption="Có Hàng" FieldName="CoHang" ShowInCustomizationForm="True"
                                    VisibleIndex="8" Width="10%">
                                </dx:GridViewDataCheckColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Loại Mua Bán" FieldName="MuaBan" ShowInCustomizationForm="True"
                                    VisibleIndex="7">
                                    <PropertiesComboBox DataSourceID="lqLoaiHang" DisplayFormatInEditMode="True" TextField="TenLoaiHang"
                                        ValueField="LoaiHangId">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataTextColumn Caption="Đơn Giá Bán" FieldName="DonGiaBan" 
                                    ShowInCustomizationForm="True" VisibleIndex="10">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Đơn Giá Mua" FieldName="DonGiaMua" 
                                    ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="12">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="True" />
                            <Settings ShowFilterRow="True" />
                            <SettingsText CommandCancel="KHÔNG" CommandDelete="Xóa" CommandEdit="Sửa" CommandNew="Thêm"
                                CommandUpdate="CÓ" ConfirmDelete="Đồng ý XÓA ?" />
                        </dx:ASPxGridView>
                        <asp:LinqDataSource ID="DMMonAnDb" runat="server" ContextTypeName="NhaHangSql.CheBienDataContext"
                            EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                            OrderBy="MonAnId" StoreOriginalValuesInViewState="False" TableName="DMMonAn_CheBiens"
                            Where="MuaBan.Contains(@MuaBan)">
                            <WhereParameters>
                                <asp:Parameter DefaultValue="MM" Name="MuaBan" Type="String" />
                            </WhereParameters>
                        </asp:LinqDataSource>
                        <asp:LinqDataSource ID="DonViDb" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                            EntityTypeName="" TableName="DMDV_dms" Select="new (DONVI)">
                        </asp:LinqDataSource>
                        <asp:LinqDataSource ID="lqLoaiHang" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                            EntityTypeName="" TableName="DMLoaiHang_dms">
                        </asp:LinqDataSource>
                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
