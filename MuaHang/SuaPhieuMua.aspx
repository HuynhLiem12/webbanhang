<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="SuaPhieuMua.aspx.cs" Inherits="NhaHang.MuaHang.SuaPhieuMua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Width="90%" HeaderText="SỬA PHIẾU MUA HÀNG">
        <PanelCollection>
            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                <asp:LinqDataSource ID="lqPhieuChinh" runat="server" ContextTypeName="NhaHangSql.MuaHangDataContext"
                    EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                    TableName="PhieuMuaHang_muahangs" StoreOriginalValuesInViewState="False">
                </asp:LinqDataSource>
                <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="lqPhieuChinh"
                    KeyFieldName="SoPhieuChi" OnRowUpdating="ASPxGridView1_RowUpdating">
                    <TotalSummary>
                        <dx:ASPxSummaryItem DisplayFormat="### ### ### ##0" FieldName="TongTienMua" SummaryType="Sum"
                            ValueDisplayFormat="### ### ##0" />
                        <dx:ASPxSummaryItem DisplayFormat="### ### ##0" FieldName="GiamTienMua" SummaryType="Sum"
                            ValueDisplayFormat="### ### ##0" />
                        <dx:ASPxSummaryItem DisplayFormat="### ### ##0" FieldName="ThanhToanMua" SummaryType="Sum"
                            ValueDisplayFormat="### ### ##0" />
                    </TotalSummary>
                    <GroupSummary>
                        <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="TongTienMua" ShowInGroupFooterColumn="Tổng tiền mua"
                            SummaryType="Sum" />
                        <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="GiamTienMua" ShowInGroupFooterColumn="Giảm tiền mua"
                            SummaryType="Sum" ValueDisplayFormat="### ### ###" />
                        <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="ThanhToanMua" ShowInGroupFooterColumn="Tồng tiền thực mua"
                            SummaryType="Sum" />
                    </GroupSummary>
                    <Columns>
                        <dx:GridViewCommandColumn VisibleIndex="0" ShowInCustomizationForm="True" ShowEditButton="True" ShowClearFilterButton="True"/>
                        <dx:GridViewDataTextColumn FieldName="SoPhieuChi" ReadOnly="True" VisibleIndex="1"
                            Caption="Số phiếu chi" ShowInCustomizationForm="True">
                            <Settings AllowAutoFilter="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="LoaiPhieuChi" VisibleIndex="2" Caption="Loại phiếu chi"
                            ReadOnly="True" ShowInCustomizationForm="True">
                            <Settings AllowAutoFilter="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataDateColumn FieldName="NgayChi" VisibleIndex="3" Caption="Ngày chi"
                            ShowInCustomizationForm="True">
                            <PropertiesDateEdit DisplayFormatString="dd/MM/yyyy" EditFormat="Custom" EditFormatString="dd/MM/yyyy">
                            </PropertiesDateEdit>
                        </dx:GridViewDataDateColumn>
                        <dx:GridViewDataTextColumn FieldName="DienGiaiChung" VisibleIndex="4" Caption="Diễn giãi chung"
                            ShowInCustomizationForm="True">
                            <Settings AllowAutoFilter="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="TongTienMua" VisibleIndex="5" Caption="Tổng tiền mua"
                            ReadOnly="True" ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatString="### ### ###">
                            </PropertiesTextEdit>
                            <Settings AllowAutoFilter="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="GiamTienMua" VisibleIndex="6" Caption="Giảm tiền mua"
                            ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatString="### ### ###">
                                <Style BackColor="Yellow">
                                    
                                </Style>
                            </PropertiesTextEdit>
                            <Settings AllowAutoFilter="False" />
                            <CellStyle BackColor="#66FFFF">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="ThanhToanMua" VisibleIndex="7" Caption="Tồng tiền thực mua"
                            ReadOnly="True" ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatString="### ### ###">
                            </PropertiesTextEdit>
                            <Settings AllowAutoFilter="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataComboBoxColumn FieldName="KhachHangId" VisibleIndex="8" Caption="Khách hàng"
                            ShowInCustomizationForm="True">
                            <PropertiesComboBox DataSourceID="lqKhachBan" TextField="TenKhachHang" ValueField="KhachHangId"
                                IncrementalFilteringMode="Contains">
                            </PropertiesComboBox>
                            <Settings AllowAutoFilter="True" />
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataTextColumn FieldName="ThieuKhach" VisibleIndex="9" Caption="Tiền thiếu khách"
                            ShowInCustomizationForm="True">
                            <PropertiesTextEdit DisplayFormatString="### ### ###">
                                <Style BackColor="Yellow">
                                    
                                </Style>
                            </PropertiesTextEdit>
                            <Settings AllowAutoFilter="False" />
                            <CellStyle BackColor="#66FFFF">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <SettingsPager Mode="ShowAllRecords">
                    </SettingsPager>
                    <Settings ShowFilterRow="True" ShowFooter="True" ShowGroupFooter="VisibleIfExpanded"
                        ShowGroupPanel="True" />
                    <SettingsText CommandCancel="Không" CommandEdit="Sửa phiếu chính" CommandUpdate="Có"
                        EmptyDataRow="Chưa có dữ liệu" GroupPanel="Nhắp Kéo tên cột Thả vào đây để tạo nhóm" />
                    <SettingsDetail AllowOnlyOneMasterRowExpanded="True" ShowDetailRow="True" />
                    <Templates>
                        <DetailRow>
                            <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="lqPhieuChiTietMua"
                                KeyFieldName="SoPhieuChi;MonAnId" OnBeforePerformDataSelect="ASPxGridView2_BeforePerformDataSelect"
                                OnRowUpdating="ASPxGridView2_RowUpdating" OnRowUpdated="ASPxGridView2_RowUpdated">
                                <TotalSummary>
                                    <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="TienMua" SummaryType="Sum" />
                                </TotalSummary>
                                <Columns>
                                    <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
                                    <dx:GridViewDataTextColumn Caption="Số phiếu chi" FieldName="SoPhieuChi" ReadOnly="True"
                                        VisibleIndex="1">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataComboBoxColumn Caption="Hàng mua" FieldName="MonAnId" ReadOnly="True"
                                        VisibleIndex="2">
                                        <PropertiesComboBox DataSourceID="lqHangMua" TextField="TenMonAn" ValueField="MonAnId">
                                        </PropertiesComboBox>
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataTextColumn Caption="Đơn vị mua" FieldName="DonViTinh" VisibleIndex="3">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Số lượng" FieldName="SoLuong" VisibleIndex="4">
                                        <PropertiesTextEdit>
                                            <Style BackColor="Yellow">
                                                
                                            </Style>
                                        </PropertiesTextEdit>
                                        <CellStyle BackColor="#66FFFF">
                                        </CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Đơn giá mua" FieldName="DonGiaMua" VisibleIndex="5"
                                        ReadOnly="True">
                                        <PropertiesTextEdit DisplayFormatString="### ### ###">
                                        </PropertiesTextEdit>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Tiền mua" FieldName="TienMua" VisibleIndex="6">
                                        <PropertiesTextEdit DisplayFormatString="### ### ###">
                                            <Style BackColor="Yellow">
                                                
                                            </Style>
                                        </PropertiesTextEdit>
                                        <CellStyle BackColor="#66FFFF">
                                        </CellStyle>
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Số con" FieldName="SoCon" VisibleIndex="7">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Ghi chú" FieldName="GhiChu" VisibleIndex="8">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                                <Settings ShowFooter="True" />
                                <SettingsText CommandCancel="Không" CommandEdit="Sửa phiếu phụ" CommandUpdate="Có"
                                    EmptyDataRow="Chưa có dữ liệu" />
                            </dx:ASPxGridView>
                        </DetailRow>
                    </Templates>
                </dx:ASPxGridView>
                <asp:LinqDataSource ID="lqPhieuChiTietMua" runat="server" ContextTypeName="NhaHangSql.MuaHangDataContext"
                    EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                    TableName="PhieuMuaHangChiTiet_muahangs" Where="SoPhieuChi == @SoPhieuChi" StoreOriginalValuesInViewState="False">
                    <WhereParameters>
                        <asp:SessionParameter Name="SoPhieuChi" SessionField="sophieuchi" Type="Int32" />
                    </WhereParameters>
                </asp:LinqDataSource>
                <asp:LinqDataSource ID="lqKhachBan" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                    EntityTypeName="" Select="new (KhachHangId, TenKhachHang)" TableName="DMKhachHang_dms">
                </asp:LinqDataSource>
                <asp:LinqDataSource ID="lqHangMua" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                    EntityTypeName="" Select="new (MonAnId, TenMonAn)" TableName="DMMonAn_dms">
                </asp:LinqDataSource>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
</asp:Content>
