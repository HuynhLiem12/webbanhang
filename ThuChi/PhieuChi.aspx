<%@ Page Title="PHIEU CHI" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="PhieuChi.aspx.cs" Inherits="NhaHang.ThuChi.PhieuChi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript" language="javascript">
    // <![CDATA[
        var GridViewAdjustRequired = true;
        function DropDownHandler(s, e) {
            SynchronizeFocusedRow();
            if (GridViewAdjustRequired)
                GridView.AdjustControl();
            GridViewAdjustRequired = false;
        }
        function GridViewInitHandler(s, e) {
            SynchronizeFocusedRow();
        }
        function RowClickHandler(s, e) {
            DropDownEdit.SetKeyValue(GridView.cpKeyValues[e.visibleIndex]);
            var s = GridView.cpTenKhachHang[e.visibleIndex];
            var r = s.split(";");
            DropDownEdit.SetText(r[0]);
            lbTenKhachHang.SetText(r[1]);
            lbDienThoai.SetText(r[2]);
            lbDiaChi.SetText(r[3]);
            DropDownEdit.HideDropDown();
        }
        function EndCallbackHandler(s, e) {
            DropDownEdit.AdjustDropDownWindow();
            UpdateEditBox();
        }
        function SynchronizeFocusedRow() {
            var keyValue = DropDownEdit.GetKeyValue();
            var index = -1;
            if (keyValue != null)
                index = ASPxClientUtils.ArrayIndexOf(GridView.cpKeyValues, keyValue);
            GridView.SetFocusedRowIndex(index);
            GridView.MakeRowVisible(index);
            UpdateEditBox();
        }
        function UpdateEditBox() {
            var rowIndex = GridView.GetFocusedRowIndex();
            var focusedEmployeeName = rowIndex == -1 ? "" : GridView.cpTenKhachHang[rowIndex];
            var employeeNameInEditBox = DropDownEdit.GetText();
            if (employeeNameInEditBox != focusedEmployeeName)
                DropDownEdit.SetText(focusedEmployeeName);
        }
    // ]]> 
    </script>
    <script type="text/javascript" language="javascript">
    // <![CDATA[
        var GridViewAdjustRequired = true;
        function DropDownHandlerLp(s, e) {
            SynchronizeFocusedRowLp();
            if (GridViewAdjustRequired)
                gvLoaiPhieu.AdjustControl();
            GridViewAdjustRequired = false;
        }
        function GridViewInitHandlerLp(s, e) {
            SynchronizeFocusedRowLp();
        }
        function RowClickHandlerLp(s, e) {
            drLoaiPhieu.SetKeyValue(gvLoaiPhieu.cpKeyValues[e.visibleIndex]);
            var s = gvLoaiPhieu.cpTenPhieuChi[e.visibleIndex];
            var r = s.split(";");
            drLoaiPhieu.SetText(r[0]);
            //lbTenKhachHang.SetText(r[1]);
            //lbDienThoai.SetText(r[2]);
            drLoaiPhieu.HideDropDown();
        }
        function EndCallbackHandlerLp(s, e) {
            drLoaiPhieu.AdjustDropDownWindow();
            UpdateEditBox();
        }
        function SynchronizeFocusedRowLp() {
            var keyValue = drLoaiPhieu.GetKeyValue();
            var index = -1;
            if (keyValue != null)
                index = ASPxClientUtils.ArrayIndexOf(gvLoaiPhieu.cpKeyValues, keyValue);
            gvLoaiPhieu.SetFocusedRowIndex(index);
            gvLoaiPhieu.MakeRowVisible(index);
            UpdateEditBoxLp();
        }
        function UpdateEditBoxLp() {
            var rowIndex = gvLoaiPhieu.GetFocusedRowIndex();
            var focusedTenPhieuChi = rowIndex == -1 ? "" : gvLoaiPhieu.cpTenPhieuChi[rowIndex];
            var tenPhieuChiInEditBox = drLoaiPhieu.GetText();
            if (tenPhieuChiInEditBox != focusedTenPhieuChi)
                DropDownEdit.SetText(focusedTenPhieuChi);
        }
    // ]]> 
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <dx:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" HeaderText="PHIẾU CHI" Theme="Youthful">
        <HeaderStyle Font-Bold="True" Font-Size="14" HorizontalAlign="Center" />
        <PanelCollection>
            <dx:PanelContent runat="server" SupportsDisabledAttribute="True">
                <table style="text-align: left">
                    <tr>
                        <td>
                            SỐ PHIẾU CHI:
                        </td>
                        <td>
                            <dx:ASPxLabel ID="lbSoPhieuChi" runat="server">
                            </dx:ASPxLabel>
                        </td>
                        <td>
                            LOẠI PHIẾU CHI:
                        </td>
                        <td>
                            <dx:ASPxDropDownEdit ID="drLoaiPhieu" runat="server" Width="121px" ClientInstanceName="drLoaiPhieu"
                                Theme="Youthful">
                                <DropDownWindowTemplate>
                                    <dx:ASPxGridView ID="gvLoaiPhieu" runat="server" AutoGenerateColumns="False" ClientInstanceName="gvLoaiPhieu"
                                        DataSourceID="lqLoaiPhieu" KeyFieldName="LoaiPhieuChiId" OnAfterPerformCallback="gvLoaiPhieu_AfterPerformCallback"
                                        OnCustomJSProperties="gvLoaiPhieu_CustomJSProperties" OnInitNewRow="GridView_InitNewRow"
                                        OnRowInserting="gvLoaiPhieu_RowInserting">
                                        <ClientSideEvents EndCallback="EndCallbackHandlerLp" Init="GridViewInitHandlerLp"
                                            RowClick="RowClickHandlerLp" />
                                        <Columns>
                                            <dx:GridViewCommandColumn VisibleIndex="2" ShowEditButton="True" ShowNewButton="True" ShowDeleteButton="True"/>
                                            <dx:GridViewDataTextColumn FieldName="LoaiPhieuChiId" VisibleIndex="0" Width="70px">
                                                <PropertiesTextEdit Width="70px">
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="TenPhieuChi" VisibleIndex="1" Width="150px">
                                                <PropertiesTextEdit Width="150px">
                                                </PropertiesTextEdit>
                                            </dx:GridViewDataTextColumn>
                                        </Columns>
                                        <SettingsBehavior ConfirmDelete="True" />
                                        <SettingsText CommandCancel="Không" CommandDelete="Xóa" CommandEdit="Sửa" CommandNew="Thêm"
                                            CommandUpdate="Có" ConfirmDelete="Đồng ý XÓA?" EmptyDataRow="Chưa có dữ liệu" />
                                    </dx:ASPxGridView>
                                </DropDownWindowTemplate>
                                <ClientSideEvents DropDown="DropDownHandlerLp" />
                                <ValidationSettings ErrorDisplayMode="ImageWithTooltip">
                                    <RequiredField IsRequired="True" />
                                </ValidationSettings>
                            </dx:ASPxDropDownEdit>
                            <asp:LinqDataSource ID="lqLoaiPhieu" runat="server" ContextTypeName="NhaHangSql.ThuChiDataContext"
                                EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                                TableName="DMLoaiPhieuChis" StoreOriginalValuesInViewState="False">
                            </asp:LinqDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            NGÀY CHI:
                        </td>
                        <td style="float: left">
                            <dx:ASPxDateEdit ID="dNgayChi" runat="server" Theme="Youthful">
                                <ButtonStyle HorizontalAlign="Left">
                                </ButtonStyle>
                                <ValidationSettings ErrorDisplayMode="ImageWithTooltip">
                                    <RequiredField IsRequired="True" />
                                </ValidationSettings>
                            </dx:ASPxDateEdit>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            DIỄN GIẢI CHUNG:
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtGhiChu" runat="server" Width="305px">
                            </dx:ASPxTextBox>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            MÃ KHÁCH HÀNG:
                        </td>
                        <td style="float: left">
                            <dx:ASPxDropDownEdit ID="DropDownEdit" runat="server" ClientInstanceName="DropDownEdit"
                                Width="170px" AllowUserInput="False" EnableAnimation="False" Theme="Youthful">
                                <DropDownWindowStyle>
                                    <Border BorderWidth="0px" />
                                </DropDownWindowStyle>
                                <DropDownWindowTemplate>
                                    <dx:ASPxGridView ID="GridView" runat="server" AutoGenerateColumns="False" ClientInstanceName="GridView"
                                        Width="500px" DataSourceID="lqKhachHang" KeyFieldName="KhachHangId" OnRowInserting="GridView_RowInserting"
                                        OnInitNewRow="GridView_InitNewRow" OnCustomJSProperties="GridView_CustomJSProperties"
                                        OnAfterPerformCallback="GridView_AfterPerformCallback">
                                        <ClientSideEvents EndCallback="EndCallbackHandler" Init="GridViewInitHandler" RowClick="RowClickHandler" />
                                        <Columns>
                                            <dx:GridViewCommandColumn VisibleIndex="7" ShowEditButton="True" ShowNewButton="True" ShowDeleteButton="True"/>
                                            <dx:GridViewDataTextColumn FieldName="KhachHangId" ReadOnly="True" VisibleIndex="0">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="TenKhachHang" VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="DienThoai" VisibleIndex="2">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="DiaChi" VisibleIndex="3">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="GhiChu" VisibleIndex="5">
                                            </dx:GridViewDataTextColumn>
                                        </Columns>
                                        <Settings ShowFilterRow="True" />
                                        <SettingsText CommandCancel="Không" CommandDelete="Xóa" CommandEdit="Sửa" CommandNew="Thêm"
                                            CommandUpdate="Có" ConfirmDelete="Đồng ý XÓA?" />
                                    </dx:ASPxGridView>
                                </DropDownWindowTemplate>
                                <ClientSideEvents DropDown="DropDownHandler" />
                                <ValidationSettings ErrorDisplayMode="ImageWithTooltip">
                                    <RequiredField IsRequired="True" />
                                </ValidationSettings>
                            </dx:ASPxDropDownEdit>
                            <asp:LinqDataSource ID="lqKhachHang" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
                                EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName=""
                                TableName="DMKhachHang_dms" StoreOriginalValuesInViewState="False">
                            </asp:LinqDataSource>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            TÊN KHACH HÀNG:
                        </td>
                        <td>
                            <dx:ASPxLabel ID="lbTenKhachHang" runat="server" ClientInstanceName="lbTenKhachHang"
                                Text="">
                            </dx:ASPxLabel>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ĐIỆN THOẠI
                        </td>
                        <td>
                            <dx:ASPxLabel ID="lbDienThoai" runat="server" ClientInstanceName="lbDienThoai" Text="">
                            </dx:ASPxLabel>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            ĐỊA CHỈ
                        </td>
                        <td>
                            <dx:ASPxLabel ID="lbDiaChi" runat="server" ClientInstanceName="lbDiaChi" Text="">
                            </dx:ASPxLabel>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            SỐ TIỀN CHI:
                        </td>
                        <td>
                            <dx:ASPxTextBox ID="txtSoTien" runat="server" Width="170px" Font-Bold="True" Font-Size="18"
                                Height="25px">
                                <ValidationSettings>
                                    <RegularExpression ErrorText="Nhập số" ValidationExpression="\d+" />
                                    <RequiredField IsRequired="True" />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </td>
                        <td>
                        </td>
                        <td>
                            <dx:ASPxButton ID="btOk" runat="server" OnClick="btOk_Click" Text="OK" Width="100px">
                            </dx:ASPxButton>
                        </td>
                    </tr>
                </table>
            </dx:PanelContent>
        </PanelCollection>
    </dx:ASPxRoundPanel>
</asp:Content>
