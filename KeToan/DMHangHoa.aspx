<%@ Page Title="DANH MUC HANG HOA" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DMHangHoa.aspx.cs" Inherits="NhaHang.DMHangHoa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Width="100%" HeaderText="HÀNG HÓA KHÔNG CHẾ BIẾN">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="DMMonAnDb"
                        KeyFieldName="MonAnId" ClientInstanceName="grid" OnCustomErrorText="grid_CustomErrorText"
                        OnRowValidating="grid_RowValidating" OnStartRowEditing="grid_StartRowEditing"
                        Width="100%" OnProcessColumnAutoFilter="grid_ProcessColumnAutoFilter">
                        <Columns>
                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowEditButton="True" ShowNewButton="True" ShowDeleteButton="True"/>
                            <dx:GridViewDataTextColumn Caption="Mã hàng" FieldName="MonAnId" ShowInCustomizationForm="True"
                                VisibleIndex="1" ReadOnly="True">
                                <EditFormSettings Visible="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="TenMonAn" ShowInCustomizationForm="True" VisibleIndex="3"
                                Caption="Tên hàng">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataComboBoxColumn Caption="Đơn vị" FieldName="DonViTinh" ShowInCustomizationForm="True"
                                VisibleIndex="4">
                                <PropertiesComboBox DataSourceID="DonViDb" TextField="DONVI" ValueField="DONVI" IncrementalFilteringMode="Contains">
                                </PropertiesComboBox>
                            </dx:GridViewDataComboBoxColumn>
                            <dx:GridViewDataTextColumn Caption="Đơn giá bán" FieldName="DonGiaBan" ShowInCustomizationForm="True"
                                VisibleIndex="5">
                                <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataCheckColumn Caption="Có hàng" FieldName="CoHang" ShowInCustomizationForm="True"
                                VisibleIndex="9">
                            </dx:GridViewDataCheckColumn>
                            <dx:GridViewDataComboBoxColumn Caption="Loại Mua Bán" FieldName="MuaBan" ShowInCustomizationForm="True"
                                VisibleIndex="10">
                                <PropertiesComboBox IncrementalFilteringMode="Contains" DataSourceID="lqLoaiHang"
                                    DisplayFormatInEditMode="True" TextField="TenLoaiHang" ValueField="LoaiHangId">
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
                        OrderBy="MonAnId" StoreOriginalValuesInViewState="False" TableName="DMMonAn_CheBiens"
                        Where="MuaBan.Contains(@MuaBan)">
                        <WhereParameters>
                            <asp:Parameter DefaultValue="MB" Name="MuaBan" Type="String" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                    <asp:LinqDataSource ID="lqLoaiHang" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                        EntityTypeName="" TableName="DMLoaiHang_dms">
                    </asp:LinqDataSource>
                    <asp:LinqDataSource ID="DonViDb" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                        EntityTypeName="" TableName="DMDV_dms" Select="new (DONVI)">
                    </asp:LinqDataSource>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
