<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="NhaHang.KiemKe.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Width="99%" HeaderText=" NHẬP HÀNG TỒN">
        <PanelCollection>
            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                <dx:ASPxGridView ID="gvHangTon" runat="server" AutoGenerateColumns="False" DataSourceID="lqKiemKe"
                    KeyFieldName="MonAnId" OnProcessColumnAutoFilter="gvHangTon_ProcessColumnAutoFilter"
                    OnCustomErrorText="grid_CustomErrorText" OnStartRowEditing="grid_StartRowEditing">
                    <Columns>
                        <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
                        <dx:GridViewDataTextColumn FieldName="MonAnId" ReadOnly="True" VisibleIndex="1">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="TenMonAn" VisibleIndex="2" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="DonViTinh" VisibleIndex="3" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="DonGiaBan" ReadOnly="True" VisibleIndex="6">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="DonGiaMua" ReadOnly="True" VisibleIndex="7">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="SoLuong" VisibleIndex="4">
                            <PropertiesTextEdit>
                                <Style BackColor="#FFFF66">
                                    
                                </Style>
                            </PropertiesTextEdit>
                            <EditCellStyle Font-Bold="False">
                            </EditCellStyle>
                            <CellStyle BackColor="#CCFFFF">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataCheckColumn FieldName="CoHang" VisibleIndex="10" ReadOnly="True">
                        </dx:GridViewDataCheckColumn>
                        <dx:GridViewDataTextColumn FieldName="MuaBan" VisibleIndex="5" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <SettingsEditing Mode="Inline" />
                    <Settings ShowFilterRow="True" />
                    <SettingsText CommandCancel="Không" CommandEdit="Sửa" CommandUpdate="Có" />
                </dx:ASPxGridView>
                <asp:LinqDataSource ID="lqHangMua" runat="server" ContextTypeName="NhaHangSql.MuaHangDataContext"
                    EnableUpdate="True" EntityTypeName="" TableName="DMMonAn_muahangs" Where='MuaBan.Contains("M")'
                    StoreOriginalValuesInViewState="False">
                </asp:LinqDataSource>
                <asp:LinqDataSource ID="lqKiemKe" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                    EntityTypeName="" StoreOriginalValuesInViewState="False" TableName="DMMonAn_dms"
                    Where='MuaBan.Contains("M")&amp;&amp;CoHang' EnableUpdate="True">
                </asp:LinqDataSource>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
</asp:Content>
