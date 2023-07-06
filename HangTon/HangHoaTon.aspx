<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HangHoaTon.aspx.cs" Inherits="NhaHang.HangTon.HangHoaTon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td>
                Từ ngày
            </td>
            <td>
                <dx:ASPxDateEdit ID="dTuNgay" runat="server" Width="100px" DisplayFormatString="dd/MM/yyyy">
                </dx:ASPxDateEdit>
            </td>
            <td>
                Đến ngày
            </td>
            <td>
                <dx:ASPxDateEdit ID="dDenNgay" runat="server" Width="100px" DisplayFormatString="dd/MM/yyyy">
                </dx:ASPxDateEdit>
            </td>
            <td>
                <dx:ASPxButton ID="bnXem" runat="server" OnClick="bnXem_Click" Text="XEM">
                </dx:ASPxButton>
            </td>
        </tr>
    </table>
    <br />
    <dx:ASPxGridView ID="gvHangTon" runat="server" AutoGenerateColumns="False">
        <Columns>
            <dx:GridViewCommandColumn VisibleIndex="0" ShowClearFilterButton="True"/>
            <dx:GridViewDataTextColumn FieldName="TênHàng" VisibleIndex="1">
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TồnĐầuKỳ" VisibleIndex="2">
                <PropertiesTextEdit DisplayFormatString="### ### ###">
                </PropertiesTextEdit>
                <Settings AllowAutoFilter="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="MuaGiữaKỳ" VisibleIndex="3">
                <PropertiesTextEdit DisplayFormatString="### ### ###">
                </PropertiesTextEdit>
                <Settings AllowAutoFilter="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="BánGiữaKỳ" VisibleIndex="4">
                <PropertiesTextEdit DisplayFormatString="### ### ###">
                </PropertiesTextEdit>
                <Settings AllowAutoFilter="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="CònGiữaKỳ" VisibleIndex="5">
                <PropertiesTextEdit DisplayFormatString="### ### ###">
                </PropertiesTextEdit>
                <Settings AllowAutoFilter="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TồnCuốiKỳ" VisibleIndex="6">
                <PropertiesTextEdit DisplayFormatString="### ### ###">
                </PropertiesTextEdit>
                <Settings AllowAutoFilter="False" />
            </dx:GridViewDataTextColumn>
        </Columns>
        <Settings ShowFilterRow="True" />
    </dx:ASPxGridView>
    <br />
</asp:Content>
