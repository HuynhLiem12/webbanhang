<%@ Page Title="KIEM TRA GOI" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="KiemTraGoiMonTinhTien.aspx.cs" Inherits="NhaHang.KeToan.KiemTraGoiMonTinhTien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuynhLinhDbConnectionString %>"
        
        
        SelectCommand="SELECT PhieuTinhTien.PhieuTinhTienId AS [Ma Phieu], PhieuTinhTien.BanId AS Ban, DMMonAn.TenMonAn, PhieuTinhTienChiTiet.SoOrder AS [Luot Goi], PhieuTinhTienChiTiet.SoLuong, PhieuTinhTien.NVPhucVu AS [Goi Tinh Tien], PhieuTinhTienChiTiet.NhanVien AS [Goi Mon], PhieuTinhTienChiTiet.ThoiGianGoi FROM PhieuTinhTien INNER JOIN PhieuTinhTienChiTiet ON PhieuTinhTien.PhieuTinhTienId = PhieuTinhTienChiTiet.PhieuTinhTienId INNER JOIN DMMonAn ON PhieuTinhTienChiTiet.MonAnId = DMMonAn.MonAnId ORDER BY [Ma Phieu] DESC, [Luot Goi]">
    </asp:SqlDataSource>
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Width="99%" HeaderText="Kiểm Tra Gọi Món">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowClearFilterButton="True"/>
                                <dx:GridViewDataTextColumn FieldName="Ma Phieu" VisibleIndex="1" 
                                    Caption="Mã Phiếu">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Ban" VisibleIndex="2" Caption="Bàn">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="TenMonAn" VisibleIndex="3" 
                                    Caption="Tên Món">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Luot Goi" VisibleIndex="4" 
                                    Caption="Lượt Gọi">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="SoLuong" VisibleIndex="5" 
                                    Caption="Số Lượng">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Goi Tinh Tien" VisibleIndex="6" 
                                    Caption="Gọi Tính Tiền">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="Goi Mon" VisibleIndex="7" 
                                    Caption="Gọi Món">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn Caption="Thời Gian Gọi Món" FieldName="ThoiGianGoi" 
                                    ShowInCustomizationForm="True" VisibleIndex="8">
                                    <PropertiesDateEdit DisplayFormatString="dd/MM/yyyy hh:mm:ss">
                                    </PropertiesDateEdit>
                                </dx:GridViewDataDateColumn>
                            </Columns>
                            <Settings ShowFilterRow="True" />
                        </dx:ASPxGridView>
                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
