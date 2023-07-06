<%@ Page Title="LOAI HANG" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DMLoaiHang.aspx.cs" Inherits="NhaHang.DMLoaiHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="LOẠI HÀNG HÓA">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="LoaiHangDb"
                            KeyFieldName="LoaiHangId" ClientInstanceName="grid" OnCustomErrorText="grid_CustomErrorText"
                            OnRowValidating="grid_RowValidating" OnStartRowEditing="grid_StartRowEditing">
                            <Columns>
                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" Width="20%" ShowEditButton="True" ShowNewButton="True" ShowDeleteButton="True"/>
                                <dx:GridViewDataTextColumn FieldName="LoaiHangId" ShowInCustomizationForm="True"
                                    VisibleIndex="1" Width="35%" Caption="Mã Loại Hàng">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="TenLoaiHang" ShowInCustomizationForm="True"
                                    VisibleIndex="2" Width="45%" Caption="Tên Loại Hàng">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="True" />
                            <Settings ShowFilterRow="True" />
                            <SettingsText CommandCancel="KHÔNG" CommandDelete="Xóa" CommandEdit="Sửa" CommandNew="Thêm"
                                CommandUpdate="CÓ" ConfirmDelete="Đồng ý XÓA ?" />
                        </dx:ASPxGridView>
                        <asp:LinqDataSource ID="LoaiHangDb" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                            EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                            StoreOriginalValuesInViewState="False" TableName="DMLoaiHang_dms">
                        </asp:LinqDataSource>
                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
