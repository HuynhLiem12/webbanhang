<%@ Page Title="THU - CHI" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ThuChi.aspx.cs" Inherits="NhaHang.ThuChi.ThuChi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText=" PHIẾU THU" Theme="RedWine">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <dx:ASPxGridView ID="gvThu" runat="server" AutoGenerateColumns="False" DataSourceID="lqThu"
                        KeyFieldName="PhieuId" OnProcessColumnAutoFilter="gv_ProcessColumnAutoFilter"
                        EnableTheming="True" Theme="RedWine">
                        <TotalSummary>
                            <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="SoTien" ShowInColumn="Tiền"
                                SummaryType="Sum" />
                        </TotalSummary>
                        <Columns>
                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowClearFilterButton="True"/>
                            <dx:GridViewDataTextColumn Caption="Số Phiếu" FieldName="PhieuId" ReadOnly="True"
                                VisibleIndex="1">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Loại" FieldName="LoaiPhieu" 
                                VisibleIndex="2">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataDateColumn FieldName="Ngay" VisibleIndex="3" Caption="Ngày">
                                <PropertiesDateEdit DisplayFormatString="dd/MM/yyyy">
                                </PropertiesDateEdit>
                            </dx:GridViewDataDateColumn>
                            <dx:GridViewDataComboBoxColumn Caption="Khách Hàng" FieldName="KhachHangId" 
                                VisibleIndex="4">
                                <PropertiesComboBox DataSourceID="lqKhach" TextField="TenKhachHang" ValueField="KhachHangId">
                                </PropertiesComboBox>
                            </dx:GridViewDataComboBoxColumn>
                            <dx:GridViewDataTextColumn Caption="Tiền" FieldName="SoTien" VisibleIndex="5" 
                                Width="100px">
                                <PropertiesTextEdit DisplayFormatString="### ### ###">
                                </PropertiesTextEdit>
                                <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn Caption="Nội Dung" FieldName="GhiChu" 
                                VisibleIndex="6">
                            </dx:GridViewDataTextColumn>
                        </Columns>
                        <Settings ShowFilterRow="True" ShowFooter="True" />
                    </dx:ASPxGridView>
                    <asp:LinqDataSource ID="lqThu" runat="server" ContextTypeName="NhaHangSql.ThuChiDataContext"
                        EnableUpdate="True" EntityTypeName="" TableName="ThuChis" Where="SoTien &gt; @SoTien"
                        OrderBy="PhieuId desc">
                        <WhereParameters>
                            <asp:Parameter DefaultValue="0" Name="SoTien" Type="Int32" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
    <div style="clear: both; height: 10px"></div>
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel2" runat="server" HeaderText="PHIẾU CHI" Theme="Youthful">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="lqChi"
                        KeyFieldName="PhieuId" OnProcessColumnAutoFilter="gv_ProcessColumnAutoFilter"
                        EnableTheming="True" Theme="Youthful">
                        <TotalSummary>
                            <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="SoTien" ShowInColumn="Tiền"
                                SummaryType="Sum" />
                        </TotalSummary>
                        <Columns>
                            <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowClearFilterButton="True"/>
                            <dx:GridViewDataTextColumn FieldName="PhieuId" ReadOnly="True" VisibleIndex="1" 
                                Caption="Số Phiếu">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="LoaiPhieu" VisibleIndex="2" 
                                Caption="Loại">
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataDateColumn FieldName="Ngay" VisibleIndex="3" Caption="Ngày">
                                <PropertiesDateEdit DisplayFormatString="dd/MM/yyyy">
                                </PropertiesDateEdit>
                            </dx:GridViewDataDateColumn>
                            <dx:GridViewDataComboBoxColumn Caption="Khách Hàng" FieldName="KhachHangId" 
                                VisibleIndex="4">
                                <PropertiesComboBox DataSourceID="lqKhach" TextField="TenKhachHang" ValueField="KhachHangId">
                                </PropertiesComboBox>
                            </dx:GridViewDataComboBoxColumn>
                            <dx:GridViewDataTextColumn FieldName="SoTien" VisibleIndex="5" Caption="Tiền" 
                                Width="100px">
                                <PropertiesTextEdit DisplayFormatString="### ### ###">
                                </PropertiesTextEdit>
                                <Settings AllowAutoFilter="False" />
                            </dx:GridViewDataTextColumn>
                            <dx:GridViewDataTextColumn FieldName="GhiChu" VisibleIndex="6" 
                                Caption="Nội Dung">
                            </dx:GridViewDataTextColumn>
                        </Columns>
                        <Settings ShowFilterRow="True" ShowFooter="True" />
                    </dx:ASPxGridView>
                    <asp:LinqDataSource ID="lqChi" runat="server" ContextTypeName="NhaHangSql.ThuChiDataContext"
                        EnableUpdate="True" EntityTypeName="" TableName="ThuChis" Where="SoTien &lt; @SoTien"
                        OrderBy="PhieuId desc">
                        <WhereParameters>
                            <asp:Parameter DefaultValue="0" Name="SoTien" Type="Int32" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
    <asp:LinqDataSource ID="lqKhach" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
        EntityTypeName="" Select="new (KhachHangId, TenKhachHang)" TableName="DMKhachHang_dms">
    </asp:LinqDataSource>
</asp:Content>
