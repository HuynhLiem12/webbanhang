<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ThongKeHang.aspx.cs" Inherits="NhaHang.ThongKe.ThongKeHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Width="100%" HeaderText="THỐNG KÊ BÁN THEO NGÀY">
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
                                    <dx:ASPxButton ID="btXem" runat="server" Text="XEM" OnClick="btXem_Click">
                                    </dx:ASPxButton>
                                </td>
                            </tr>
                        </table>
                        <dx:ASPxGridView ID="gvTongHop" runat="server" OnProcessColumnAutoFilter="gvTongHop_ProcessColumnAutoFilter"
                            AutoGenerateColumns="False">
                            <TotalSummary>
                                <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="TongSoLuong" SummaryType="Sum" />
                                <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="TongTien" SummaryType="Sum" />
                            </TotalSummary>
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="Tên Món" FieldName="TenMonAn" VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Tổng Số Lượng" FieldName="TongSoLuong" 
                                    VisibleIndex="1">
                                    <Settings AllowAutoFilter="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Tổng Tiền" FieldName="TongTien" 
                                    VisibleIndex="2">
                                    <Settings AllowAutoFilter="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Loại Mua Bán" FieldName="MuaBan" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <Settings ShowFilterRow="True" ShowFooter="True" />
                        </dx:ASPxGridView>
                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
