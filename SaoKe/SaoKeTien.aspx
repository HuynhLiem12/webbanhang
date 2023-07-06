<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SaoKeTien.aspx.cs" Inherits="NhaHang.SaoKe.SaoKeTien" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MACBRAIN</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    Từ ngày
                </td>
                <td>
                    <dx:ASPxDateEdit ID="dTuNgay" runat="server" Width="100px">
                    </dx:ASPxDateEdit>
                </td>
                <td>
                    Đến ngày
                </td>
                <td>
                    <dx:ASPxDateEdit ID="dDenNgay" runat="server" Width="100px">
                    </dx:ASPxDateEdit>
                </td>
                <td>
                    <dx:ASPxButton ID="bnXem" runat="server" OnClick="bnXem_Click" Text="XEM">
                    </dx:ASPxButton>
                </td>
            </tr>
        </table>
        <br />
        <table>
            <tr>
                <td>
                    Tồn đầu kỳ:&nbsp;
                </td>
                <td>
                    <dx:ASPxLabel ID="lbTonDau" runat="server" Text="" Font-Bold="True" 
                        ForeColor="Red">
                    </dx:ASPxLabel>
                </td>
                <td>
                    Tồn cuối kỳ:&nbsp;
                </td>
                <td>
                    <dx:ASPxLabel ID="lbTonCuoi" runat="server" Text="" Font-Bold="True" 
                        ForeColor="Red">
                    </dx:ASPxLabel>
                </td>
            </tr>
        </table>
        <dx:ASPxGridView ID="gvSaoKeTien" runat="server" AutoGenerateColumns="False">
            <TotalSummary>
                <dx:ASPxSummaryItem DisplayFormat="Thu: ### ### ###" FieldName="Thu" ShowInColumn="Thu"
                    SummaryType="Sum" />
                <dx:ASPxSummaryItem DisplayFormat="Chi: ### ### ###" FieldName="Chi" ShowInColumn="Chi"
                    SummaryType="Sum" />
            </TotalSummary>
            <Columns>
                <dx:GridViewCommandColumn VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn Caption="Ngày Giờ" FieldName="Ngay" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Mã Phiếu" FieldName="Phieu" 
                    VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Thu" FieldName="Thu" VisibleIndex="3">
                    <PropertiesTextEdit DisplayFormatString="### ### ###">
                    </PropertiesTextEdit>
                    <CellStyle HorizontalAlign="Right">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Chi" FieldName="Chi" VisibleIndex="4">
                    <PropertiesTextEdit DisplayFormatString="### ### ###">
                    </PropertiesTextEdit>
                    <CellStyle HorizontalAlign="Right">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Ghi chú" FieldName="GhiChu" 
                    VisibleIndex="5">
                </dx:GridViewDataTextColumn>
            </Columns>
            <Settings ShowFooter="True" />
            <SettingsText EmptyDataRow="Không có giao dịch" />
        </dx:ASPxGridView>
    </div>
    </form>
</body>
</html>
