<%@ Page Title="DANH MUC BEP" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DMBep.aspx.cs" Inherits="NhaHang.PhanBep.DMBep" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Font-Bold="True" HeaderText="DANH MỤC BẾP">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="lqDMBep"
                            KeyFieldName="TenBep">
                            <Columns>
                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowEditButton="True" ShowNewButton="True" ShowDeleteButton="True"/>
                                <dx:GridViewDataTextColumn Caption="Tên Bếp" FieldName="TenBep" ShowInCustomizationForm="True"
                                    VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Ghi Chú" FieldName="GhiChu" ShowInCustomizationForm="True"
                                    VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="True" />
                            <SettingsText CommandCancel="Không" CommandDelete="Xóa" CommandEdit="Sửa" CommandNew="Thêm"
                                CommandUpdate="Có" ConfirmDelete="Đồng ý XÓA?" />
                        </dx:ASPxGridView>
                        <asp:LinqDataSource ID="lqDMBep" runat="server" ContextTypeName="NhaHangSql.PhanBepDbDataContext"
                            EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                            TableName="DMBep_pbs" StoreOriginalValuesInViewState="False">
                        </asp:LinqDataSource>
                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
