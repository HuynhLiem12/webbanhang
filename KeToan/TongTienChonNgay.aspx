<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="TongTienChonNgay.aspx.cs" Inherits="NhaHang.KeToan.TongTienChonNgay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: medium;
        }
        .style2
        {
            font-size: medium;
            color: #003399;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="TỔNG HỢP TIỀN THEO NGÀY" Width="72%">
        <PanelCollection>
            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                <div align="center">
                    <div style="width: 520px">
                        <div style="float: left">
                            TỪ NGÀY:
                            <dx:ASPxDateEdit ID="dtNgayBatDau" runat="server" DisplayFormatString="dd/MM/yyyy">
                            </dx:ASPxDateEdit>
                        </div>
                        <div style="float: left">
                            ĐẾN NGÀY:
                            <dx:ASPxDateEdit ID="dtNgayKetThuc" runat="server" DisplayFormatString="dd/MM/yyyy">
                            </dx:ASPxDateEdit>
                        </div>
                        <div style="float: right">
                            <dx:ASPxButton ID="btXem" runat="server" Text="XEM" OnClick="btXem_Click" 
                                Width="126px">
                            </dx:ASPxButton>
                        </div>
                    </div>
                </div>
                <div class="clear">
                </div>
                <div align="center" style="width: 100%">
                    <div align="left" style="width: 520px;">
                        <table style="width: 345px; text-align: right;">
                            <tr>
                                <td style="text-align: left" width="35%">
                                    <span class="style1">TỔNG THU:</span>
                                </td>
                                <td style="text-align: right" width="65%">
                                    <dx:ASPxLabel ID="lblTongTienTheoNgay" runat="server" Font-Size="27pt">
                                    </dx:ASPxLabel>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left" width="35%">
                                    <span class="style1">TỔNG GIẢM:</span>
                                </td>
                                <td style="text-align: right" width="65%">
                                    <dx:ASPxLabel ID="lblTongGiamTheoNgay" runat="server" Font-Size="27pt">
                                    </dx:ASPxLabel>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left" width="35%">
                                    <span class="style1">TỔNG THIẾU:</span>
                                </td>
                                <td style="text-align: right" width="65%">
                                    <dx:ASPxLabel ID="lblTongThieuTheoNgay" runat="server" Font-Size="27pt">
                                    </dx:ASPxLabel>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: left" width="35%">
                                    <span class="style2">THỰC THU:</span>
                                </td>
                                <td style="text-align: right" width="65%">
                                    <dx:ASPxLabel ID="lblTongThuTheoNgay" runat="server" Font-Size="27pt" 
                                        Style="color: #FF0000">
                                    </dx:ASPxLabel>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
</asp:Content>
