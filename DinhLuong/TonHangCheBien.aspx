<%@ Page Title="HANG TON CHE BIEN" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="TonHangCheBien.aspx.cs" Inherits="NhaHang.DinhLuong.TonHangCheBien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="HÀNG TỒN KHO">
            <HeaderStyle Font-Bold="True" />
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <table>
                            <tr>
                                <td>
                                    Tính đến ngày:
                                </td>
                                <td>
                                    <dx:ASPxDateEdit ID="dNgay" runat="server" AutoPostBack="True" DisplayFormatString="dd/MM/yyyy"
                                        OnDateChanged="dNgay_DateChanged">
                                    </dx:ASPxDateEdit>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False">
                            <Columns>
                                <dx:GridViewCommandColumn VisibleIndex="0" ShowClearFilterButton="True"/>
                                <dx:GridViewDataTextColumn Caption="Hàng" FieldName="MonCheBien" VisibleIndex="1">
                                    <Settings AutoFilterCondition="Contains" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Số Lượng Mua" FieldName="SoLuongMua" VisibleIndex="2">
                                    <Settings AllowAutoFilter="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Số Lượng Bán" FieldName="SoLuongBan" VisibleIndex="3">
                                    <Settings AllowAutoFilter="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Số Lượng Tồn" FieldName="SoLuongTon" VisibleIndex="4">
                                    <Settings AllowAutoFilter="False" />
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsPager Mode="ShowAllRecords">
                            </SettingsPager>
                            <Settings ShowFilterRow="True" />
                        </dx:ASPxGridView>
                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
