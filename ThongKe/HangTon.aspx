<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="HangTon.aspx.cs" Inherits="NhaHang.ThongKe.HangTon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Width="54%" HeaderText="HÀNG TỒN KHO">
        <PanelCollection>
            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                <dx:ASPxGridView ID="gvTonKho" runat="server" AutoGenerateColumns="False" DataSourceID="lqHangTon"
                    OnProcessColumnAutoFilter="gvTonKho_ProcessColumnAutoFilter">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="Hàng" FieldName="TenMonAn" ReadOnly="True" ShowInCustomizationForm="True"
                            VisibleIndex="0">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Số lượng" FieldName="SoLuong" ReadOnly="True"
                            ShowInCustomizationForm="True" VisibleIndex="1">
                            <Settings AllowAutoFilter="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Loại" FieldName="MuaBan" ReadOnly="True" ShowInCustomizationForm="True"
                            VisibleIndex="2">
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <Settings ShowFilterRow="True" />
                </dx:ASPxGridView>
                <asp:LinqDataSource ID="lqHangTon" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                    EntityTypeName="" Select="new (TenMonAn, SoLuong, MuaBan)" TableName="DMMonAn_dms"
                    Where="SoLuong != @SoLuong">
                    <WhereParameters>
                        <asp:Parameter DefaultValue="0" Name="SoLuong" Type="Decimal" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
</asp:Content>
