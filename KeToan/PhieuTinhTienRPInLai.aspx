<%@ Page Title="IN PHIEU LAI" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="PhieuTinhTienRPInLai.aspx.cs" Inherits="NhaHang.PhieuTinhTienRPInLai" %>

<%@ Register Assembly="DevExpress.XtraReports.v15.1.Web, Version=15.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="IN PHIẾU TÍNH TIỀN"
            TabIndex="3" Width="50%">
            <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
            <PanelCollection>
                <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                    <div align="center">
                        <div style="float: left; text-align: left;">
                            <table>
                                <tr>
                                    <td>
                                        Nhập số phiếu:
                                    </td>
                                    <td>
                                        <dx:ASPxTextBox ID="txtSoPhieu" runat="server" Width="100px" AutoPostBack="True"
                                            Font-Bold="True" Font-Size="12pt" Height="20px" OnTextChanged="Page_Load">
                                            <ValidationSettings>
                                                <RegularExpression ErrorText="Nhập số" ValidationExpression="\d+" />
                                                <RequiredField IsRequired="True" />
                                            </ValidationSettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                    <td>
                                        <dx:ASPxButton ID="bnXem" runat="server" Text="XEM">
                                        </dx:ASPxButton>
                                    </td>
                                    <td>
                                        <dx:ASPxButton ID="btInTrucTiep" runat="server" OnClick="btInTrucTiep_Click" Text="IN TRỰC TIẾP">
                                        </dx:ASPxButton>
                                    </td>
                                    <td>
                                        <dx:ASPxButton ID="btHoanTat" runat="server" Text="ĐÓNG" AutoPostBack="False" TabIndex="2"
                                            CausesValidation="False" OnClick="btHoanTat_Click">
                                        </dx:ASPxButton>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <div style="clear: both">
                        </div>
                        <dx:ReportToolbar ID="ReportToolbar1" runat="server" ShowDefaultButtons="False" ReportViewerID="ReportViewer1">
                            <Items>
                                <dx:ReportToolbarButton ItemKind="Search" />
                                <dx:ReportToolbarSeparator />
                                <dx:ReportToolbarButton ItemKind="PrintReport" />
                                <dx:ReportToolbarButton ItemKind="PrintPage" />
                                <dx:ReportToolbarSeparator />
                                <dx:ReportToolbarButton Enabled="False" ItemKind="FirstPage" />
                                <dx:ReportToolbarButton Enabled="False" ItemKind="PreviousPage" />
                                <dx:ReportToolbarLabel ItemKind="PageLabel" />
                                <dx:ReportToolbarComboBox ItemKind="PageNumber" Width="65px">
                                </dx:ReportToolbarComboBox>
                                <dx:ReportToolbarLabel ItemKind="OfLabel" />
                                <dx:ReportToolbarTextBox IsReadOnly="True" ItemKind="PageCount" />
                                <dx:ReportToolbarButton ItemKind="NextPage" />
                                <dx:ReportToolbarButton ItemKind="LastPage" />
                                <dx:ReportToolbarSeparator />
                                <dx:ReportToolbarButton ItemKind="SaveToDisk" />
                                <dx:ReportToolbarButton ItemKind="SaveToWindow" />
                                <dx:ReportToolbarComboBox ItemKind="SaveFormat" Width="70px">
                                    <Elements>
                                        <dx:ListElement Value="pdf" />
                                        <dx:ListElement Value="xls" />
                                        <dx:ListElement Value="xlsx" />
                                        <dx:ListElement Value="rtf" />
                                        <dx:ListElement Value="mht" />
                                        <dx:ListElement Value="html" />
                                        <dx:ListElement Value="txt" />
                                        <dx:ListElement Value="csv" />
                                        <dx:ListElement Value="png" />
                                    </Elements>
                                </dx:ReportToolbarComboBox>
                            </Items>
                            <Styles>
                                <LabelStyle>
                                    <Margins MarginLeft="3px" MarginRight="3px" />
                                </LabelStyle>
                            </Styles>
                        </dx:ReportToolbar>
                        <br />
                        <dx:ReportViewer ID="ReportViewer1" runat="server" OnUnload="ReportViewer1_Unload"
                            TabIndex="1" PrintUsingAdobePlugIn="False">
                        </dx:ReportViewer>
                    </div>
                </dx:PanelContent>
            </PanelCollection>
        </dx:ASPxRoundPanel>
    </div>
</asp:Content>
