<%@ Page Title="SUA PHIEU" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="NhaHang.SuaPhieu.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="SỬA CÁC PHIẾU CHƯA TÍNH TIỀN">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <table>
                            <tr>
                                <td>
                                    Chọn bàn:&nbsp;
                                </td>
                                <td>
                                    <dx:ASPxComboBox ID="cbBan" runat="server" DataSourceID="lqDMBan" TextField="TenBan"
                                        ValueField="BanId" ClientInstanceName="cbBan" Width="100px">
                                        <ValidationSettings>
                                            <RequiredField IsRequired="True" />
                                        </ValidationSettings>
                                    </dx:ASPxComboBox>
                                </td>
                                <td>
                                    Số phiếu:
                                </td>
                                <td>
                                    <dx:ASPxLabel ID="lbPhieuId" runat="server" ClientInstanceName="lbPhieuId" Text="0">
                                    </dx:ASPxLabel>
                                </td>
                                <td>
                                    <dx:ASPxButton ID="bnSua" runat="server" Text="SỬA PHIẾU" OnClick="bnSua_Click">
                                    </dx:ASPxButton>
                                </td>
                            </tr>
                        </table>
                        <dx:ASPxGridView ID="gvPhieu" runat="server" AutoGenerateColumns="False" DataSourceID="lqPhieuChiTiet"
                            KeyFieldName="PhieuTinhTienId;SoOrder;MonAnId">
                            <TotalSummary>
                                <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="ThanhTien" ShowInColumn="Thanh Tien"
                                    SummaryType="Sum" />
                            </TotalSummary>
                            <Columns>
                                <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
                                <dx:GridViewDataTextColumn FieldName="PhieuTinhTienId" ReadOnly="True" VisibleIndex="1"
                                    Caption="Mã Phiếu">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="SoOrder" ReadOnly="True" VisibleIndex="2" Caption="Số Order">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn FieldName="MonAnId" ReadOnly="True" VisibleIndex="3"
                                    Caption="Mã Món">
                                    <PropertiesComboBox DataSourceID="lqMon" TextField="TenMonAn" ValueField="MonAnId">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataTextColumn FieldName="SoLuong" VisibleIndex="4" ReadOnly="True" Caption="Số Lượng">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="DonGiaBan" VisibleIndex="5" Caption="Đơn Giá Bán">
                                    <PropertiesTextEdit>
                                        <Style BackColor="#CCFFFF">
                                            
                                        </Style>
                                    </PropertiesTextEdit>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ThanhTien" VisibleIndex="6" Caption="Thành Tiền">
                                    <PropertiesTextEdit>
                                        <Style BackColor="#CCFFFF">
                                            
                                        </Style>
                                    </PropertiesTextEdit>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="GhiChu" VisibleIndex="7" Caption="Ghi Chú">
                                    <PropertiesTextEdit>
                                        <Style BackColor="#CCFFFF">
                                            
                                        </Style>
                                    </PropertiesTextEdit>
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <Settings ShowFooter="True" />
                            <SettingsText CommandCancel="Không" CommandEdit="Sửa" CommandUpdate="Có" />
                        </dx:ASPxGridView>
                        <asp:LinqDataSource ID="lqPhieuChiTiet" runat="server" ContextTypeName="NhaHangSql.PhieuTinhTienDataContext"
                            EnableUpdate="True" EntityTypeName="" TableName="PhieuTinhTienChiTiets" Where="PhieuTinhTienId == @PhieuTinhTienId"
                            StoreOriginalValuesInViewState="False">
                            <WhereParameters>
                                <asp:ControlParameter ControlID="lbPhieuId" Name="PhieuTinhTienId" PropertyName="Text"
                                    Type="Int32" />
                            </WhereParameters>
                        </asp:LinqDataSource>
                        <asp:LinqDataSource ID="lqMon" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                            EntityTypeName="" Select="new (MonAnId, TenMonAn)" TableName="DMMonAn_dms">
                        </asp:LinqDataSource>
                        <br />
                        <asp:LinqDataSource ID="lqDMBan" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                            EntityTypeName="" TableName="DMBan_dms" Where="CoKhach == @CoKhach">
                            <WhereParameters>
                                <asp:Parameter DefaultValue="True" Name="CoKhach" Type="Boolean" />
                            </WhereParameters>
                        </asp:LinqDataSource>
                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
