<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="XemTat.aspx.cs" Inherits="NhaHang.ThongKe.XemTat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Width="100%" HeaderText="CHI TIẾT BÁN HÀNG">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
                            KeyFieldName="Mon" Width="100%">
                            <TotalSummary>
                                <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="TSLuong" SummaryType="Sum" />
                                <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="TT" SummaryType="Sum" />
                            </TotalSummary>
                            <GroupSummary>
                                <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="TSLuong" ShowInGroupFooterColumn="TS Luong"
                                    SummaryType="Sum" />
                                <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="TT" ShowInGroupFooterColumn="TT"
                                    SummaryType="Sum" />
                            </GroupSummary>
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="Mon" ReadOnly="True" VisibleIndex="0" 
                                    ShowInCustomizationForm="True" Caption="Mã Món" Width="10%">
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Ten" VisibleIndex="1" 
                                    ShowInCustomizationForm="True" Caption="Tên Món" Width="30%">
                                    <Settings AutoFilterCondition="Contains" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn FieldName="NgayGio" VisibleIndex="2" ShowInCustomizationForm="True"
                                    UnboundType="DateTime" Caption="Ngày Giờ" Width="15%">
                                    <PropertiesDateEdit DisplayFormatString="dd/MM/yyyy" DisplayFormatInEditMode="True">
                                    </PropertiesDateEdit>
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataTextColumn FieldName="TSLuong" ReadOnly="True" VisibleIndex="3" 
                                    ShowInCustomizationForm="True" Caption="TS Lượng" Width="10%">
                                    <PropertiesTextEdit DisplayFormatString="### ### ###">
                                    </PropertiesTextEdit>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="TT" ReadOnly="True" VisibleIndex="4" 
                                    ShowInCustomizationForm="True" Caption="Thành Tiền" Width="25%">
                                    <PropertiesTextEdit DisplayFormatString="### ### ###">
                                    </PropertiesTextEdit>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Loai" VisibleIndex="5" 
                                    ShowInCustomizationForm="True" Caption="Loại" Width="10%">
                                    <Settings AutoFilterCondition="Contains" />
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsPager Mode="ShowAllRecords">
                            </SettingsPager>
                            <Settings ShowFilterRow="True" ShowFooter="True" ShowGroupPanel="True" ShowGroupFooter="VisibleIfExpanded"
                                VerticalScrollableHeight="360" VerticalScrollBarMode="Visible" />
                            <SettingsText GroupPanel="Nhắp Kéo tên cột Thả vào đây để tạo nhóm" />
                        </dx:ASPxGridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuynhLinhDbConnectionString %>"
                            SelectCommand="SELECT DMMonAn.MonAnId AS Mon, DMMonAn.TenMonAn AS Ten, PhieuTinhTien.NgayGioBan AS NgayGio, SUM(PhieuTinhTienChiTiet.SoLuong) AS TSLuong, SUM(PhieuTinhTienChiTiet.ThanhTien) AS TT, DMMonAn.MuaBan AS Loai FROM DMMonAn INNER JOIN PhieuTinhTienChiTiet ON DMMonAn.MonAnId = PhieuTinhTienChiTiet.MonAnId INNER JOIN PhieuTinhTien ON PhieuTinhTienChiTiet.PhieuTinhTienId = PhieuTinhTien.PhieuTinhTienId GROUP BY DMMonAn.MonAnId, DMMonAn.TenMonAn, PhieuTinhTien.NgayGioBan, DMMonAn.MuaBan">
                        </asp:SqlDataSource>
                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
