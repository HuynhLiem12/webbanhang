<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="CapNhatMon.aspx.cs" Inherits="NhaHang.KeToan.CapNhat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td>
                <dx:ASPxButton ID="bnCapNhat" runat="server" OnClick="bnCapNhat_Click" 
                    Text="Cap Nhat Mon" Width="98px">
                </dx:ASPxButton>
            </td>
            <td>
                <dx:ASPxButton ID="bnXem" runat="server" Text="XEM" onclick="bnXem_Click" 
                    Width="98px">
                </dx:ASPxButton>
            </td>
        </tr>
    </table>
    <br />
    <dx:ASPxGridView ID="gvMonXml" runat="server" AutoGenerateColumns="False">
        <Columns>
            <dx:GridViewCommandColumn VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn Caption="Mã Món" FieldName="Mã" VisibleIndex="1">
                <CellStyle HorizontalAlign="Right">
                </CellStyle>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn Caption="Tên món" FieldName="Tên" VisibleIndex="2">
                <Settings AllowAutoFilter="True" AutoFilterCondition="Contains" />
                <CellStyle HorizontalAlign="Left">
                </CellStyle>
            </dx:GridViewDataTextColumn>
        </Columns>
        <SettingsPager Mode="ShowAllRecords">
        </SettingsPager>
    </dx:ASPxGridView>
    <br />
</asp:Content>
