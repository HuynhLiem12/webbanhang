<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="PhieuBanHangDayDu.aspx.cs" Inherits="NhaHang.KeToan.PhieuBanHangDayDu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="XEM PHIẾU BÁN HÀNG">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <dx:ASPxGridView ID="gvPhieuChinh" runat="server" AutoGenerateColumns="False" DataSourceID="lqChinh"
                            KeyFieldName="PhieuTinhTienId">
                            <TotalSummary>
                                <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="TongTien" ShowInColumn="Tong Tien"
                                    SummaryType="Sum" />
                                <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="GiamTien" ShowInColumn="Giam Tien"
                                    SummaryType="Sum" />
                                <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="ThanhToan" SummaryType="Sum" />
                                <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="KhachThieu" SummaryType="Sum" />
                            </TotalSummary>
                            <Columns>
                                <dx:GridViewCommandColumn VisibleIndex="0" ShowClearFilterButton="True"/>
                                <dx:GridViewDataTextColumn FieldName="PhieuTinhTienId" ReadOnly="True" VisibleIndex="1"
                                    Caption="Mã phiếu" Width="10%">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="BanId" VisibleIndex="2" Caption="Mã Bàn" Width="10%">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn FieldName="NgayGioBan" VisibleIndex="3" Caption="Ngày Giờ Bán"
                                    Width="15%">
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataTextColumn FieldName="TongTien" VisibleIndex="6" Caption="Tổng Tiền">
                                    <PropertiesTextEdit DisplayFormatString="### ### ###">
                                    </PropertiesTextEdit>
                                    <Settings AllowAutoFilter="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="GiamTien" VisibleIndex="7" Caption="Giảm Tiền">
                                    <PropertiesTextEdit DisplayFormatString="### ### ###">
                                    </PropertiesTextEdit>
                                    <Settings AllowAutoFilter="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ThanhToan" VisibleIndex="8" Caption="Thanh Toán">
                                    <PropertiesTextEdit DisplayFormatString="### ### ###">
                                    </PropertiesTextEdit>
                                    <Settings AllowAutoFilter="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Khách Hàng" FieldName="KhachHangId" VisibleIndex="11">
                                    <PropertiesComboBox DataSourceID="lqKhach" TextField="TenKhachHang" ValueField="KhachHangId">
                                    </PropertiesComboBox>
                                    <Settings AllowAutoFilter="True" />
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataTextColumn FieldName="KhachThieu" VisibleIndex="12" Caption="Khách Thiếu">
                                    <PropertiesTextEdit DisplayFormatString="### ### ###">
                                    </PropertiesTextEdit>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="GhiChu" VisibleIndex="14" Caption="Ghi chú">
                                    <Settings AllowAutoFilter="True" />
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <Settings ShowFilterRow="True" ShowFooter="True" />
                            <SettingsDetail ShowDetailRow="True" />
                            <Templates>
                                <DetailRow>
                                    <dx:ASPxGridView ID="gvPhu" runat="server" AutoGenerateColumns="False" DataSourceID="lqPhu"
                                        KeyFieldName="PhieuTinhTienId" OnBeforePerformDataSelect="gvPhu_BeforePerformDataSelect">
                                        <TotalSummary>
                                            <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="ThanhTien" SummaryType="Sum" />
                                        </TotalSummary>
                                        <Columns>
                                            <dx:GridViewDataTextColumn Caption="Mã Phiếu" FieldName="PhieuTinhTienId" ReadOnly="True"
                                                VisibleIndex="0">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Số Order" FieldName="SoOrder" ReadOnly="True"
                                                VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataComboBoxColumn Caption="Món" FieldName="MonAnId" ReadOnly="True"
                                                VisibleIndex="2">
                                                <PropertiesComboBox DataSourceID="lqMon" TextField="TenMonAn" ValueField="MonAnId">
                                                </PropertiesComboBox>
                                            </dx:GridViewDataComboBoxColumn>
                                            <dx:GridViewDataTextColumn Caption="Số Lượng" FieldName="SoLuong" VisibleIndex="3">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Đơn Giá Bán" FieldName="DonGiaBan" VisibleIndex="4">
                                                <PropertiesTextEdit DisplayFormatString="### ### ###">
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Thành Tiền" FieldName="ThanhTien" VisibleIndex="5">
                                                <PropertiesTextEdit DisplayFormatString="### ### ###">
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn Caption="Ghi Chú" FieldName="GhiChu" VisibleIndex="6">
                                            </dx:GridViewDataTextColumn>
                                        </Columns>
                                        <SettingsPager Mode="ShowAllRecords">
                                        </SettingsPager>
                                        <Settings ShowFooter="True" />
                                    </dx:ASPxGridView>
                                    <asp:LinqDataSource ID="lqPhu" runat="server" ContextTypeName="NhaHangSql.PhieuTinhTienDataContext"
                                        EntityTypeName="" TableName="PhieuTinhTienChiTiets" Where="PhieuTinhTienId == @PhieuTinhTienId">
                                        <WhereParameters>
                                            <asp:SessionParameter Name="PhieuTinhTienId" SessionField="PhieuId" Type="Int32" />
                                        </WhereParameters>
                                    </asp:LinqDataSource>
                                </DetailRow>
                            </Templates>
                        </dx:ASPxGridView>
                        <asp:LinqDataSource ID="lqChinh" runat="server" ContextTypeName="NhaHangSql.PhieuTinhTienDataContext"
                            EntityTypeName="" TableName="PhieuTinhTiens">
                        </asp:LinqDataSource>
                        <asp:LinqDataSource ID="lqKhach" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                            EntityTypeName="" Select="new (KhachHangId, TenKhachHang)" TableName="DMKhachHang_dms">
                        </asp:LinqDataSource>
                        <asp:LinqDataSource ID="lqMon" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                            EntityTypeName="" Select="new (MonAnId, TenMonAn)" TableName="DMMonAn_dms">
                        </asp:LinqDataSource>
                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
