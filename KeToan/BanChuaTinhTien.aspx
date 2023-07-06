<%@ Page Title="BAN CHUA TINH TIEN" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="BanChuaTinhTien.aspx.cs" Inherits="NhaHang.BanChuaTinhTien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <meta http-equiv="refresh" content="15" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="BÀN CHƯA TÍNH TIỀN">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxGridView ID="gvTinhTienChinh" runat="server" AutoGenerateColumns="False"
                            DataSourceID="MonChuaTinhTienDb" KeyFieldName="PhieuTinhTienId" Font-Size="14pt">
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="Số Phiếu" FieldName="PhieuTinhTienId" ReadOnly="True"
                                    VisibleIndex="0">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Bàn" FieldName="BanId" ReadOnly="True" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsDetail ShowDetailRow="True" />
                            <Templates>
                                <DetailRow>
                                    <dx:ASPxGridView ID="gvChitiet" runat="server" AutoGenerateColumns="False" DataSourceID="ChiTietDb"
                                        OnBeforePerformDataSelect="gvChitiet_BeforePerformDataSelect" OnCustomUnboundColumnData="gvChitiet_CustomUnboundColumnData"
                                        Font-Size="14pt">
                                        <Columns>
                                            <dx:GridViewDataComboBoxColumn Caption="Món" FieldName="MonAnId" ReadOnly="True"
                                                VisibleIndex="0">
                                                <PropertiesComboBox DataSourceID="DMMonanDb" TextField="TenMonAn" ValueField="MonAnId">
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataTextColumn Caption="Số Order" FieldName="SoOrder" ReadOnly="True"
                                                VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Số Lượng" FieldName="SoLuong" ReadOnly="True"
                                                VisibleIndex="3">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Đơn Giá" FieldName="DonGiaBan" ReadOnly="True"
                                                VisibleIndex="4">
                                            </dx:GridViewDataTextColumn>
                                        </Columns>
                                    </dx:ASPxGridView>
                                    <asp:LinqDataSource ID="ChiTietDb" runat="server" ContextTypeName="NhaHangSql.PhieuTinhTienDataContext"
                                        EntityTypeName="" Select="new (MonAnId, SoOrder, PhieuTinhTienId, SoLuong, DonGiaBan)"
                                        TableName="PhieuTinhTienChiTiets" Where="PhieuTinhTienId == @PhieuTinhTienId">
                                        <WhereParameters>
                                            <asp:SessionParameter Name="PhieuTinhTienId" SessionField="PhieuId" Type="Int32" />
                                        </WhereParameters>
                                    </asp:LinqDataSource>
                                </DetailRow>
                            </Templates>
                        </dx:ASPxGridView>
                        <asp:LinqDataSource ID="MonChuaTinhTienDb" runat="server" ContextTypeName="NhaHangSql.PhieuTinhTienDataContext"
                            EntityTypeName="" Select="new (PhieuTinhTienId, BanId)" TableName="PhieuTinhTiens"
                            Where="TinhTien == @TinhTien">
                            <WhereParameters>
                                <asp:Parameter DefaultValue="False" Name="TinhTien" Type="Boolean" />
                            </WhereParameters>
                        </asp:LinqDataSource>
                        <asp:LinqDataSource ID="DMMonanDb" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                            EntityTypeName="" Select="new (MonAnId, TenMonAn)" TableName="DMMonAn_dms">
                        </asp:LinqDataSource>
                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
