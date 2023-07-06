<%@ Page Title="DINH LUONG" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DinhLuong.aspx.cs" Inherits="NhaHang.DinhLuong.DinhLuong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="ĐỊNH LƯỢNG">
        <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
        <PanelCollection>
            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                <div align="center">
                    <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="lqDinhLuong"
                        KeyFieldName="MonBanId;MonCheBienId" ClientInstanceName="grid" OnCustomErrorText="grid_CustomErrorText"
                        OnRowValidating="grid_RowValidating" OnStartRowEditing="grid_StartRowEditing"
                        Theme="PlasticBlue">
                        <Columns>
                            <dx:GridViewCommandColumn VisibleIndex="0" ShowClearFilterButton="True" ShowEditButton="True" ShowNewButton="True" ShowDeleteButton="True"/>
                            <dx:GridViewDataComboBoxColumn Caption="Hàng Bán" FieldName="MonBanId" VisibleIndex="1">
                                <PropertiesComboBox DataSourceID="lqBan" IncrementalFilteringMode="Contains" TextField="TenMonAn"
                                    ValueField="MonAnId">
                                </PropertiesComboBox>
                            </dx:GridViewDataComboBoxColumn>
                            <dx:GridViewDataComboBoxColumn FieldName="MonCheBienId" VisibleIndex="2" Caption="Hàng Pha Chế">
                                <PropertiesComboBox DataSourceID="lqMua" TextField="TenMonAn" ValueField="MonAnId"
                                    IncrementalFilteringMode="Contains" TextFormatString="{0} ({1})">
                                    <Columns>
                                        <dx:ListBoxColumn Caption="Tên" FieldName="TenMonAn" />
                                        <dx:ListBoxColumn Caption="Đơn vị" FieldName="DonViTinh" />
                                    </Columns>
                                </PropertiesComboBox>
                            </dx:GridViewDataComboBoxColumn>
                            <dx:GridViewDataTextColumn FieldName="TyLeBan" VisibleIndex="3" Caption="Tỷ Lệ Bán">
                                <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="TyLeMua" VisibleIndex="4" Caption="Tỷ Lệ Mua">
                                <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataTextColumn>
                        </Columns>
                        <SettingsBehavior ConfirmDelete="True" />
                        <Settings ShowFilterRow="True" />
                        <SettingsText CommandCancel="Không" CommandDelete="Xóa" CommandEdit="Sửa" CommandNew="Thêm"
                            CommandUpdate="Có" ConfirmDelete="Đồng ý XÓA?" EmptyDataRow="Chưa có dữ liệu" />
                    </dx:ASPxGridView>
                    <asp:LinqDataSource ID="lqDinhLuong" runat="server" ContextTypeName="NhaHangSql.DinhLuongDbDataContext"
                        EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                        TableName="DinhLuong_dls" StoreOriginalValuesInViewState="False">
                    </asp:LinqDataSource>
                    <asp:LinqDataSource ID="lqBan" runat="server" ContextTypeName="NhaHangSql.DinhLuongDbDataContext"
                        EntityTypeName="" Select="new (MonAnId, TenMonAn)" TableName="DMMonAn_dls" Where="MuaBan.Contains(@MuaBan)">
                        <WhereParameters>
                            <asp:Parameter DefaultValue="B" Name="MuaBan" Type="String" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                    <asp:LinqDataSource ID="lqMua" runat="server" ContextTypeName="NhaHangSql.DinhLuongDbDataContext"
                        EntityTypeName="" Select="new (TenMonAn, MonAnId, DonViTinh)" TableName="DMMonAn_dls"
                        Where="MuaBan.Contains(@MuaBan)">
                        <WhereParameters>
                            <asp:Parameter DefaultValue="M" Name="MuaBan" Type="String" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                </div>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
</asp:Content>
