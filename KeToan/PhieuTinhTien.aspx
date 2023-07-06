<%@ Page Title="XEM VA IN" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="PhieuTinhTien.aspx.cs" Inherits="NhaHang.PhieuTinhTien" EnableViewState="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .divText
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 14px;
            font-weight: bold;
            color: #003399;
        }
        .inpText
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 18px;
            font-weight: bold;
            color: #003399;
            width: 95px;
            height: 23px;
        }
        #btnIn
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="True"
        EnablePageMethods="True">
        <Scripts>
            <asp:ScriptReference Path="scripts.ketoan.js" />
        </Scripts>
    </asp:ScriptManager>
    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" Width="100%" HeaderText="Phiếu tính tiền">
        <PanelCollection>
            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                <div align="center">
                    <div align="right" style="padding-top: 5px; padding-bottom: 5px; float: right;">
                        <input id="btnIn" onclick="In_click()" type="button" value="IN PHIẾU" style="width: 100px;
                            height: 27px;" />
                    </div>
                    <div align="right" style="padding-top: 5px; padding-bottom: 5px; float: right;">
                        &nbsp;</div>
                    <div align="right" style="padding-top: 5px; padding-bottom: 5px; float: right;">
                        <input id="btnInTam" onclick="InTam_click()" type="button" value="IN TẠM" style="width: 100px;
                            height: 27px;" hidden="hidden" />
                        <input id="Button1" onclick="HoanTat_click()" type="button" value="HOÀN TẤT - KHÔNG IN" style="width: 200px;
                            height: 27px;" />
                    </div>
                    <div style="float: left">
                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" KeyFieldName="PhieuTinhTienId"
                            Font-Bold="False" Font-Size="18pt">
                            <Columns>
                                <dx:GridViewDataTextColumn Caption="Số Phiếu" FieldName="SoPhieu" ReadOnly="True"
                                    ShowInCustomizationForm="True" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Bàn" FieldName="Ban" ShowInCustomizationForm="True"
                                    VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn Caption="Ngày" FieldName="Ngay" ShowInCustomizationForm="True"
                                    VisibleIndex="3">
                                </dx:GridViewDataDateColumn>
                            </Columns>
                            <SettingsPager Visible="False">
                            </SettingsPager>
                        </dx:ASPxGridView>
                    </div>
                </div>
                <div style="clear: both">
                </div>
                <div style="width: 99%; padding-top: 20px;" class="inpText">
                    <div style="float: left; font-weight: bold;">
                        Khách hàng
                        <asp:DropDownList ID="drKhach" runat="server" DataSourceID="lqDMKH" DataTextField="TenKhachHang"
                            DataValueField="KhachHangId" Font-Size="14pt" ForeColor="#003399" Height="25px">
                        </asp:DropDownList>
                    </div>
                    <div style="float: left; padding-right: 5px; padding-left: 30px; font-weight: bold;">
                        TỔNG<dx:ASPxTextBox ID="txtTong" runat="server" Width="117px" DisplayFormatString="### ### ##0"
                            Text="0" Font-Size="14pt" ForeColor="#003399" Height="20px" Enabled="False">
                            <ValidationSettings ErrorDisplayMode="None" ErrorText="*">
                                <RegularExpression ErrorText="*" ValidationExpression="\d+" />
                            </ValidationSettings>
                        </dx:ASPxTextBox>
                    </div>
                    <div style="float: left; padding-right: 5px; padding-left: 5px; font-weight: bold;">
                        Giảm (đồng)<br />
                        <input type="text" id="inGiamDong" onblur="myFunction()" onkeypress="return clickButton(event)"
                            class="inpText" value="0">
                    </div>
                    <div style="float: left; padding-right: 5px; padding-left: 5px; font-weight: bold;">
                        Giảm (%)<br />
                        <input type="text" id="inGiamPT" onblur="myFunction()" onkeypress="return clickButton(event)"
                            class="inpText" value="0">
                    </div>
                    <div style="float: left; padding-right: 5px; padding-left: 5px; font-weight: bold;">
                        Thanh toán<br />
                        <input type="text" id="txtThanhToan" onblur="myFunction()" onkeypress="return clickButton(event)"
                            class="inpText" value="0" readonly="readonly">
                    </div>
                    <div style="float: left; padding-right: 5px; padding-left: 5px; font-weight: bold;">
                        Tổng giảm
                        <dx:ASPxTextBox ID="txtTongGiam" runat="server" Width="100px" DisplayFormatString="### ### ##0"
                            Text="0" Font-Size="14pt" ForeColor="#003399" Height="20px" ClientInstanceName="txtKhachTra"
                            Enabled="False">
                            <ValidationSettings ErrorDisplayMode="None" ErrorText="*">
                                <RegularExpression ErrorText="*" ValidationExpression="\d+" />
                            </ValidationSettings>
                        </dx:ASPxTextBox>
                    </div>
                </div>
                <div style="clear: both; height: 1px;">
                </div>
                <div style="width: 98%; padding-top: 10px; padding-left: 20px; padding-right: 5px;"
                    class="inpText">
                    <div style="float: right; font-weight: bold; padding-right: 5px; padding-left: 5px;">
                        Tiền thiếu
                        <dx:ASPxTextBox ID="txtTienThieu" runat="server" Width="100px" DisplayFormatString="### ### ##0"
                            Text="0" Font-Size="14pt" ForeColor="Red" Height="20px" ClientInstanceName="txtKhachTra"
                            Enabled="False">
                            <ValidationSettings ErrorDisplayMode="None" ErrorText="*">
                                <RegularExpression ErrorText="*" ValidationExpression="\d+" />
                            </ValidationSettings>
                        </dx:ASPxTextBox>
                    </div>
                    <div style="float: right; font-weight: bold; padding-right: 5px; padding-left: 5px;">
                        Tiền thồi
                        <dx:ASPxTextBox ID="txtTienThoi" runat="server" Width="100px" DisplayFormatString="### ### ##0"
                            Text="0" Font-Size="14pt" ForeColor="#003399" Height="20px" ClientInstanceName="txtKhachTra"
                            Enabled="False">
                            <ValidationSettings ErrorDisplayMode="None" ErrorText="*">
                                <RegularExpression ErrorText="*" ValidationExpression="\d+" />
                            </ValidationSettings>
                        </dx:ASPxTextBox>
                    </div>
                    <div style="float: right; font-weight: bold; padding-right: 5px; padding-left: 5px;">
                        Khách đưa<br />
                        <input type="text" onblur="myFunction()" onkeypress="return clickButton(event)" id="txtKhachDua"
                            value="0" style="font-family: Arial, Helvetica, sans-serif; font-size: 18px;
                            font-weight: bold; color: #003300; width: 117px;">
                    </div>
                </div>
                <div style="clear: both; height: 20px;">
                </div>
                <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="PhieuPhu"
                    Font-Size="14pt" KeyFieldName="PhieuTinhTienId; SoOrder;MonAnId" Width="100%"
                    OnRowUpdating="ASPxGridView2_RowUpdating" EnableCallBacks="False" 
                    OnRowUpdated="ASPxGridView2_RowUpdated">
                    <TotalSummary>
                        <dx:ASPxSummaryItem DisplayFormat="{0:### ### ###}" FieldName="ThanhTien" SummaryType="Sum" />
                    </TotalSummary>
                    <Columns>
                        <dx:GridViewCommandColumn ShowInCustomizationForm="True" VisibleIndex="0" ShowEditButton="True">
                            <FooterCellStyle Font-Bold="True">
                            </FooterCellStyle>
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn FieldName="SoOrder" ReadOnly="True" ShowInCustomizationForm="True"
                            VisibleIndex="1" Caption="Lần Gọi">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Món" FieldName="MonAnId" ReadOnly="True"
                            ShowInCustomizationForm="True" VisibleIndex="2" Width="350px">
                            <PropertiesComboBox DataSourceID="MonAnDb" TextField="TenMonAn" ValueField="MonAnId">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataTextColumn Caption="Số Lượng" FieldName="SoLuong" ShowInCustomizationForm="True"
                            VisibleIndex="3">
                            <EditCellStyle BackColor="#CC3300">
                            </EditCellStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Đơn Giá" FieldName="DonGiaBan" ShowInCustomizationForm="True"
                            VisibleIndex="4" Width="63px">
                            <PropertiesTextEdit DisplayFormatString="### ### ###">
                            </PropertiesTextEdit>
                            <EditCellStyle BackColor="#CC3300">
                            </EditCellStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Thành Tiền" FieldName="ThanhTien" ShowInCustomizationForm="True"
                            VisibleIndex="5" Width="63px" ReadOnly="True">
                            <PropertiesTextEdit DisplayFormatString="### ### ###">
                            </PropertiesTextEdit>
                            <CellStyle Font-Size="14pt" ForeColor="Red" Font-Bold="True">
                            </CellStyle>
                            <FooterCellStyle Font-Size="14pt" ForeColor="Red" Font-Bold="True">
                            </FooterCellStyle>
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Nhân Viên" FieldName="NhanVien" ShowInCustomizationForm="True"
                            VisibleIndex="7" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Ghi Chú" FieldName="GhiChu" ShowInCustomizationForm="True"
                            VisibleIndex="6">
                            <EditCellStyle BackColor="#CC3300">
                            </EditCellStyle>
                        </dx:GridViewDataTextColumn>
                    </Columns>
                    <SettingsBehavior ConfirmDelete="True" />
                    <Settings ShowFooter="True" />
                    <SettingsText CommandCancel="Không" CommandDelete="Xóa" CommandEdit="Sửa" CommandNew="Thêm"
                        CommandUpdate="Có" ConfirmDelete="Đồng ý XÓA?" EmptyDataRow="Chưa có dữ liệu" />
                </dx:ASPxGridView>
                <asp:LinqDataSource ID="PhieuPhu" runat="server" ContextTypeName="NhaHangSql.PhieuTinhTienDataContext"
                    EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                    OnSelecting="PhieuPhu_Selecting" OrderBy="SoOrder" StoreOriginalValuesInViewState="False"
                    TableName="PhieuTinhTienChiTiets">
                </asp:LinqDataSource>
                <asp:LinqDataSource ID="MonAnDb" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                    EntityTypeName="" Select="new (MonAnId, TenMonAn)" TableName="DMMonAn_dms">
                </asp:LinqDataSource>
                <asp:LinqDataSource ID="lqDMKH" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                    EntityTypeName="" Select="new (KhachHangId, TenKhachHang)" TableName="DMKhachHang_dms">
                </asp:LinqDataSource>
                <asp:LinqDataSource ID="PhieuChinh" runat="server" ContextTypeName="NhaHangSql.PhieuTinhTienDataContext"
                    EntityTypeName="" TableName="PhieuTinhTiens" Where="BanId == @BanId &amp;&amp; TinhTien == @TinhTien">
                    <WhereParameters>
                        <asp:SessionParameter Name="BanId" SessionField="banId" Type="String" />
                        <asp:Parameter DefaultValue="false" Name="TinhTien" Type="Boolean" />
                    </WhereParameters>
                </asp:LinqDataSource>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
    <dx:ASPxTextBox ID="txtGiam" runat="server" Width="0px" Enabled="False">
        <Border BorderStyle="None" BorderWidth="0px" />
    </dx:ASPxTextBox>
</asp:Content>
