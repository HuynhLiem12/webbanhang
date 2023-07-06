<%@ Page Title="KHACH HANG" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="DMKhachHang.aspx.cs" Inherits="NhaHang.DMKhachHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="DANH MỤC KHÁCH HÀNG">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxGridView ID="gvDMKhachHang" runat="server" AutoGenerateColumns="False" DataSourceID="DMKHDB"
                            KeyFieldName="KhachHangId">
                            <Columns>
                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowEditButton="True" ShowNewButton="True" ShowDeleteButton="True"/>
                                <dx:GridViewDataTextColumn FieldName="KhachHangId" ReadOnly="True" ShowInCustomizationForm="True"
                                    VisibleIndex="1" Caption="Mã Khách Hàng">
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="TenKhachHang" ShowInCustomizationForm="True"
                                    VisibleIndex="2" Caption="Tên Khách Hàng">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="DienThoai" ShowInCustomizationForm="True" VisibleIndex="3"
                                    Caption="Điện Thoại">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="DiaChi" ShowInCustomizationForm="True" VisibleIndex="4"
                                    Caption="Địa Chỉ">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="GhiChu" ShowInCustomizationForm="True" VisibleIndex="7"
                                    Caption="Ghi chú">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior ConfirmDelete="True" />
                            <SettingsText CommandCancel="Không" CommandDelete="Xóa" CommandEdit="Sửa" CommandNew="Thêm"
                                ConfirmDelete="Đồng ý XÓA?" EmptyDataRow="Chưa có dữ liệu" CommandUpdate="Có" />
                        </dx:ASPxGridView>
                    </div>
                    <asp:LinqDataSource ID="DMKHDB" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                        EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                        StoreOriginalValuesInViewState="False" TableName="DMKhachHang_dms">
                    </asp:LinqDataSource>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
