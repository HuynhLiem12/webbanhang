<%@ Page Title="DANH MUC DON VI" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DMDonVi.aspx.cs" Inherits="NhaHang.DMDonVi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="ĐƠN VỊ TÍNH">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="DMDonViDb"
                            KeyFieldName="DONVI" ClientInstanceName="grid" OnCustomErrorText="grid_CustomErrorText"
                            OnRowValidating="grid_RowValidating" OnStartRowEditing="grid_StartRowEditing">
                            <Columns>
                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowNewButton="True" ShowDeleteButton="True"/>
                                <dx:GridViewDataTextColumn FieldName="DONVI" ShowInCustomizationForm="True" VisibleIndex="1"
                                    Caption="Đơn Vị">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="True" />
                            <Settings ShowFilterRow="True" />
                            <SettingsText CommandCancel="KHÔNG" CommandDelete="Xóa" CommandEdit="Sửa" CommandNew="Thêm"
                                CommandUpdate="CÓ" ConfirmDelete="Đồng ý XÓA ?" />
                        </dx:ASPxGridView>
                        <asp:LinqDataSource ID="DMDonViDb" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                            EnableDelete="True" EnableInsert="True" EntityTypeName="" TableName="DMDV_dms">
                        </asp:LinqDataSource>
                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
