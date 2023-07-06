<%@ Page Title="KHU VUC" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DMKhuVuc.aspx.cs" Inherits="NhaHang.PhanKhu.DMKhuVuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="KHU VỰC">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxGridView ID="gvKhuVuc" runat="server" AutoGenerateColumns="False" DataSourceID="lqKhuVuc"
                            KeyFieldName="KhuVucId">
                            <Columns>
                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowEditButton="True" ShowNewButton="True" ShowDeleteButton="True"/>
                                <dx:GridViewDataTextColumn Caption="Mã Khu Vực" FieldName="KhuVucId" ShowInCustomizationForm="True"
                                    VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Tên Khu Vực" FieldName="TenKhuVuc" ShowInCustomizationForm="True"
                                    VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="True" />
                            <SettingsText CommandCancel="Không" CommandDelete="Xóa" CommandEdit="Sửa" CommandNew="Thêm"
                                CommandUpdate="Có" ConfirmDelete="Đồng ý XÓA?" />
                        </dx:ASPxGridView>
                    </div>
                    <asp:LinqDataSource ID="lqKhuVuc" runat="server" ContextTypeName="NhaHangSql.PhanKhuDbDataContext"
                        EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                        StoreOriginalValuesInViewState="False" TableName="DMKhuVuc_pks">
                    </asp:LinqDataSource>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
