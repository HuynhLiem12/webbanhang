<%@ Page Title="DANH MUC MON" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DMMon.aspx.cs" Inherits="NhaHang.DMMon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" 
            HeaderText="DANH MỤC HÀNG BÁN">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="DMMonAnDb"
                            KeyFieldName="MonAnId" ClientInstanceName="grid" OnCustomErrorText="grid_CustomErrorText"
                            OnRowValidating="grid_RowValidating" OnStartRowEditing="grid_StartRowEditing"
                            OnProcessColumnAutoFilter="grid_ProcessColumnAutoFilter" 
                            OnRowDeleted="grid_RowDeleted" OnRowInserted="grid_RowInserted" 
                            OnRowUpdated="grid_RowUpdated" OnRowInserting="grid_RowInserting">
                            <Columns>
                                <dx:GridViewDataCheckColumn Caption="Đếm Phút" FieldName="DemThoiGian" 
                                    ShowInCustomizationForm="True" VisibleIndex="9">
                                </dx:GridViewDataCheckColumn>
                                <dx:GridViewDataTextColumn Caption="Ưu Tiên" FieldName="UuTien" ReadOnly="True" 
                                    ShowInCustomizationForm="True" VisibleIndex="10">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowEditButton="True" ShowNewButton="True" ShowDeleteButton="True" ShowClearFilterButton="True"/>
                                <dx:GridViewDataTextColumn Caption="Mã Hàng" FieldName="MonAnId" 
                                    ReadOnly="True" ShowInCustomizationForm="True"
                                    VisibleIndex="1" Width="10%" Visible="False">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="TenMonAn" ShowInCustomizationForm="True" VisibleIndex="2"
                                    Caption="Tên Hàng">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Đơn Vị" FieldName="DonViTinh" ShowInCustomizationForm="True"
                                    VisibleIndex="3" Width="10%">
                                    <PropertiesComboBox DataSourceID="DonViDb" TextField="DONVI" ValueField="DONVI" IncrementalFilteringMode="Contains">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataTextColumn FieldName="DonGiaBan" ShowInCustomizationForm="True" VisibleIndex="4"
                                    Caption="Đơn Giá Bán">
                                    <Settings AllowAutoFilter="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataCheckColumn Caption="Có Hàng" FieldName="CoHang" ShowInCustomizationForm="True"
                                    VisibleIndex="5" Width="10%">
                                </dx:GridViewDataCheckColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Loại Mua Bán" FieldName="MuaBan" ShowInCustomizationForm="True"
                                    VisibleIndex="8">
                                    <PropertiesComboBox IncrementalFilteringMode="Contains" DataSourceID="lqLoaiHang"
                                        TextField="TenLoaiHang" ValueField="LoaiHangId">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="True" />
                            <Settings ShowFilterRow="True" />
                            <SettingsText CommandCancel="KHÔNG" CommandDelete="Xóa" CommandEdit="Sửa" CommandNew="Thêm"
                                CommandUpdate="CÓ" ConfirmDelete="Đồng ý XÓA ?" />
                        </dx:ASPxGridView>
                        <asp:LinqDataSource ID="DMMonAnDb" runat="server" ContextTypeName="NhaHangSql.CheBienDataContext"
                            EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                            OrderBy="MonAnId" TableName="DMMonAn_CheBiens" StoreOriginalValuesInViewState="False"
                            Where="MuaBan.Contains(@MuaBan)">
                            <WhereParameters>
                                <asp:Parameter DefaultValue="B" Name="MuaBan" Type="String" />
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
