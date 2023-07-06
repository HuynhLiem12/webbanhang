<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="TienMat.aspx.cs" Inherits="NhaHang.KiemKe.TienMat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Width="77%" 
        HeaderText="TỒN QUỸ TIỀN MẶT (KHÔNG PHẬN SỰ KHÔNG ĐƯỢC SỬA)">
        <PanelCollection>
            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                <br />
                <dx:ASPxTextBox ID="txtPass" runat="server" AutoPostBack="True" 
                    Width="170px" NullText="Mật mã điều chỉnh">
                    <NullTextStyle ForeColor="#CCCCCC">
                    </NullTextStyle>
                </dx:ASPxTextBox>
                <dx:ASPxGridView ID="gvSoTien" runat="server" AutoGenerateColumns="False" DataSourceID="lqTonTienMat"
                    Font-Size="18pt" KeyFieldName="Id" 
                    OnCommandButtonInitialize="gvSoTien_CommandButtonInitialize">
                    <Columns>
                        <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
                        <dx:GridViewDataTextColumn FieldName="Id" ReadOnly="True" Visible="False" VisibleIndex="1">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn FieldName="SoLuongTien" VisibleIndex="2" 
                            Width="450px">
                            <PropertiesTextEdit DisplayFormatString="### ### ### ##0" Height="45px" 
                                Width="450px">
                                <ValidationSettings>
                                    <RegularExpression ErrorText="Nhập số" ValidationExpression="-?\d+" />
                                </ValidationSettings>
                                <Style Font-Size="36pt" ForeColor="Red" HorizontalAlign="Right" VerticalAlign="Middle">
                                    
                                </Style>
                            </PropertiesTextEdit>
                            <EditCellStyle Font-Size="36pt">
                            </EditCellStyle>
                            <CellStyle Font-Size="36pt">
                            </CellStyle>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <SettingsEditing Mode="Inline" />
                    <SettingsText CommandCancel="Không" CommandEdit="Sửa" CommandUpdate="Có" />
                    <Styles>
                        <Row Font-Size="36pt">
                        </Row>
                    </Styles>
                </dx:ASPxGridView>
                <asp:LinqDataSource ID="lqTonTienMat" runat="server" ContextTypeName="NhaHangSql.PhieuTinhTienDataContext"
                    EnableUpdate="True" EntityTypeName="" StoreOriginalValuesInViewState="False"
                    TableName="TienMats">
                </asp:LinqDataSource>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
</asp:Content>
