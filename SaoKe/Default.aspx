<%@ Page Title="SAO KE" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="NhaHang.SaoKe.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="SAO KÊ">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent ID="PanelContent1" runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <table>
                            <tr>
                                <td>
                                    Từ ngày
                                </td>
                                <td>
                                    <dx:ASPxDateEdit ID="dTuNgay" runat="server" Width="139px" DisplayFormatString="dd/MM/yyyy"
                                        EditFormat="DateTime" EditFormatString="dd/MM/yyyy">
                                    </dx:ASPxDateEdit>
                                </td>
                                <td>
                                    Đến ngày
                                </td>
                                <td>
                                    <dx:ASPxDateEdit ID="dDenNgay" runat="server" Width="139px" DisplayFormatString="dd/MM/yyyy"
                                        EditFormat="DateTime" EditFormatString="dd/MM/yyyy">
                                    </dx:ASPxDateEdit>
                                </td>
                                <td>
                                    <dx:ASPxButton ID="bnXem" runat="server" OnClick="bnXem_Click" Text="XEM" Width="70px">
                                    </dx:ASPxButton>
                                </td>
                                <td>
                                    <dx:ASPxButton ID="bnIn" runat="server" Text="IN" Width="70px" 
                                        OnClick="bnIn_Click">
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
                                    <dx:ASPxLabel ID="lbTonDau" runat="server" Text="" Font-Bold="True" ForeColor="Red">
                                    </dx:ASPxLabel>
                                </td>
                                <td>
                                    Tồn cuối kỳ:&nbsp;
                                </td>
                                <td>
                                    <dx:ASPxLabel ID="lbTonCuoi" runat="server" Text="" Font-Bold="True" ForeColor="Red">
                                    </dx:ASPxLabel>
                                </td>
                            </tr>
                        </table>
                        <dx:ASPxGridView ID="gvSaoKeTien" runat="server" AutoGenerateColumns="False" OnProcessColumnAutoFilter="gvSaoKeTien_ProcessColumnAutoFilter"
                            OnCustomColumnDisplayText="gvSaoKeTien_CustomColumnDisplayText">
                            <TotalSummary>
                                <dx:ASPxSummaryItem DisplayFormat="Thu: ### ### ###" FieldName="Thu" ShowInColumn="Thu"
                                    SummaryType="Sum" />
                                <dx:ASPxSummaryItem DisplayFormat="Chi: ### ### ###" FieldName="Chi" ShowInColumn="Chi"
                                    SummaryType="Sum" />
                            </TotalSummary>
                            <GroupSummary>
                                <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="Thu" ShowInGroupFooterColumn="Thu"
                                    SummaryType="Sum" />
                                <dx:ASPxSummaryItem DisplayFormat="### ### ###" FieldName="Chi" ShowInGroupFooterColumn="Chi"
                                    SummaryType="Sum" />
                            </GroupSummary>
                            <Columns>
                                <dx:GridViewCommandColumn VisibleIndex="0" ShowClearFilterButton="True"/>
                                <dx:GridViewDataDateColumn Caption="Ngày Giờ" FieldName="Ngay" VisibleIndex="1" Width="15%">
                                    <PropertiesDateEdit DisplayFormatString="dd/MM/yyyy">
                                    </PropertiesDateEdit>
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataTextColumn Caption="Bàn" FieldName="Ban" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Nhân Viên" FieldName="NhanVien" ShowInCustomizationForm="True"
                                    VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Mã Phiếu" FieldName="Phieu" VisibleIndex="2"
                                    Width="10%">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Thu" FieldName="Thu" VisibleIndex="5" Width="100px">
                                    <PropertiesTextEdit DisplayFormatString="### ### ###">
                                    </PropertiesTextEdit>
                                    <Settings AllowAutoFilter="False" />
                                    <CellStyle HorizontalAlign="Right">
                                    </CellStyle>
                                    <GroupFooterCellStyle HorizontalAlign="Right">
                                    </GroupFooterCellStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Chi" FieldName="Chi" VisibleIndex="6" Width="100px">
                                    <PropertiesTextEdit DisplayFormatString="### ### ###">
                                    </PropertiesTextEdit>
                                    <Settings AllowAutoFilter="False" />
                                    <CellStyle HorizontalAlign="Right">
                                    </CellStyle>
                                    <GroupFooterCellStyle HorizontalAlign="Right">
                                    </GroupFooterCellStyle>
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Ghi Chú" FieldName="GhiChu" VisibleIndex="7">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <Settings ShowFooter="True" ShowFilterRow="True" ShowGroupFooter="VisibleAlways"
                                ShowGroupPanel="True" />
                            <SettingsText EmptyDataRow="Không có giao dịch" GroupPanel="Nhắp Kéo tên cột Thả vào đây để tạo nhóm" />
                            <Styles>
                                <Footer BackColor="#3366CC" Font-Bold="True" Font-Size="14pt" ForeColor="White">
                                </Footer>
                            </Styles>
                        </dx:ASPxGridView>
                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
