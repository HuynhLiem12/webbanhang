<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ThongKeHangMua.aspx.cs" Inherits="NhaHang.ThongKe.ThongKeHangMua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="THỐNG KÊ MUA HÀNG THEO NGÀY">
        <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
        <PanelCollection>
            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                <div align="center">
                    <table>
                        <tr>
                            <td>
                                Kể từ ngày:
                            </td>
                            <td>
                                <dx:ASPxDateEdit ID="dNgayBatDau" runat="server" DisplayFormatString="dd/MM/yyyy">
                                    <ValidationSettings ErrorDisplayMode="ImageWithTooltip">
                                        <RequiredField IsRequired="True" />
                                    </ValidationSettings>
                                </dx:ASPxDateEdit>
                            </td>
                            <td>
                                Đến trước ngày:
                            </td>
                            <td>
                                <dx:ASPxDateEdit ID="dNgayKetThuc" runat="server" DisplayFormatString="dd/MM/yyyy">
                                    <ValidationSettings ErrorDisplayMode="ImageWithTooltip">
                                        <RequiredField IsRequired="True" />
                                    </ValidationSettings>
                                </dx:ASPxDateEdit>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                <dx:ASPxButton ID="btXem" runat="server" Text="XEM" OnClick="btXem_Click">
                                </dx:ASPxButton>
                            </td>
                        </tr>
                    </table>
                    <dx:ASPxGridView ID="gvHangMua" runat="server" AutoGenerateColumns="False" OnProcessColumnAutoFilter="gvHangMua_ProcessColumnAutoFilter">
                        <TotalSummary>
                            <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="TongTienMua" SummaryType="Sum" />
                        </TotalSummary>
                        <Columns>
                            <dx:GridViewCommandColumn VisibleIndex="0" ShowClearFilterButton="True"/>
                            <dx:GridViewDataTextColumn Caption="Tên Hàng" FieldName="TenMonAn" VisibleIndex="1">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Tổng Số Lượng" FieldName="TongSL" VisibleIndex="2">
                                <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Tổng Tiền Mua" FieldName="TongTienMua" VisibleIndex="3">
                                <PropertiesTextEdit DisplayFormatString="### ### ###">
                                </PropertiesTextEdit>
                                <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Loại" FieldName="Loai" VisibleIndex="4">
                            </dx:GridViewDataTextColumn>
                        </Columns>
                        <Settings ShowFilterRow="True" ShowFooter="True" />
                        <SettingsText EmptyDataRow="Chưa có dữ liệu" />
                    </dx:ASPxGridView>
                </div>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
</asp:Content>
