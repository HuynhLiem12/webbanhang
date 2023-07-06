<%@ Page Title="THEM BOT" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DMThemBot.aspx.cs" Inherits="NhaHang.DMThemBot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="LOẠI THÊM BỚT">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="lqThemBot"
                            KeyFieldName="TenThemBot" ClientInstanceName="grid" OnCustomErrorText="grid_CustomErrorText"
                            OnRowValidating="grid_RowValidating" OnStartRowEditing="grid_StartRowEditing">
                            <Columns>
                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowNewButton="True" ShowDeleteButton="True"/>
                                <dx:GridViewDataTextColumn FieldName="TenThemBot" ShowInCustomizationForm="True"
                                    VisibleIndex="1" Caption="Tên Thêm Bớt">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="True" />
                            <SettingsText CommandCancel="KHÔNG" CommandDelete="Xóa" CommandEdit="Sửa" CommandNew="Thêm"
                                CommandUpdate="CÓ" ConfirmDelete="Đồng ý XÓA ?" />
                        </dx:ASPxGridView>
                        <asp:LinqDataSource ID="lqThemBot" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                            EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                            StoreOriginalValuesInViewState="False" TableName="DMThemBot_dms">
                        </asp:LinqDataSource>
                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
