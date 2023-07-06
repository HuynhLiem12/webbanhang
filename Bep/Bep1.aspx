<%@ Page Title="BEP" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Bep1.aspx.cs" Inherits="NhaHang.Bep1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <script language="javascript" type="text/javascript">
        var focusedIndex1 = -1;
        var focusedIndex2 = -1;
        var focusedIndex3 = -1;
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        function OnFocusedRowChanged(s, e) {
            var visibleIndex = s.GetFocusedRowIndex();
            if (focusedIndex != visibleIndex) {
                s.ExpandDetailRow(visibleIndex);
                //s.CollapseDetailRow(visibleIndex);
                focusedIndex = visibleIndex;
            } else {
                s.CollapseDetailRow(visibleIndex);
            }
        }
        function OnRowClick1(s, e) {
            var visibleIndex = e.visibleIndex;
            if (focusedIndex1 != visibleIndex) {
                s.ExpandDetailRow(visibleIndex);
                //s.CollapseDetailRow(visibleIndex);
                focusedIndex1 = visibleIndex;
            } else {
                s.CollapseDetailRow(visibleIndex);
                focusedIndex1 = -1;
            }
        }
        function OnRowClick2(s, e) {
            var visibleIndex = e.visibleIndex;
            if (focusedIndex2 != visibleIndex) {
                s.ExpandDetailRow(visibleIndex);
                //s.CollapseDetailRow(visibleIndex);
                focusedIndex2 = visibleIndex;
            } else {
                s.CollapseDetailRow(visibleIndex);
                focusedIndex2 = -1;
            }
        }

        function OnRowClick3(s, e) {
            var visibleIndex = e.visibleIndex;
            if (focusedIndex3 != visibleIndex) {
                s.ExpandDetailRow(visibleIndex);
                //s.CollapseDetailRow(visibleIndex);
                focusedIndex3 = visibleIndex;
            } else {
                s.CollapseDetailRow(visibleIndex);
                focusedIndex3 = -1;
            }
        }

    </script>
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="True"
        EnablePageMethods="True">
        <Scripts>
            <asp:ScriptReference Path="scriptsMon.js" />
        </Scripts>
    </asp:ScriptManager>

   CHỌN BẾP
    <dx:ASPxComboBox ID="cbBep" runat="server" DataSourceID="lqDMBep" TextField="TenBep"
        ValueField="TenBep" Font-Size="18pt" Height="36px" Width="280px" AutoPostBack="True"
        OnSelectedIndexChanged="cbBep_SelectedIndexChanged" ClientInstanceName="cbBep"
        OnDataBound="cbBep_DataBound" SelectedIndex="0">
    </dx:ASPxComboBox>
    <div style="clear: both; width: 100%; margin-top: 10px;">
        <div style="float: left; width: 30%; margin-left: 3%;">
            <dx:ASPxGridView ID="gvBan1" runat="server" AutoGenerateColumns="False"
                Font-Size="15pt" KeyFieldName="BanId">
                <ClientSideEvents RowClick="OnRowClick1" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="BanId" ReadOnly="True" VisibleIndex="1" Caption="BỘ PHẬN 1">
                    </dx:GridViewDataTextColumn>
                </Columns>
                <SettingsBehavior AllowSort="False" />
                <SettingsText EmptyDataRow="HOÀN TẤT" />
                <SettingsDetail ExportMode="Expanded" ShowDetailRow="True" AllowOnlyOneMasterRowExpanded="True" />
                <Styles>
                    <Header BackColor="#99CCFF">
                    </Header>
                </Styles>
                <Templates>
                    <DetailRow>
                        <dx:ASPxGridView ID="gvBep" runat="server" AutoGenerateColumns="False" DataSourceID="BepDb"
                            Font-Size="15pt" KeyFieldName="ID" OnBeforePerformDataSelect="gvBep_BeforePerformDataSelect"
                            Width="99%" OnHtmlRowCreated="gvBep_HtmlRowCreated">
                            <Columns>
                                <dx:GridViewCommandColumn VisibleIndex="0" ShowDeleteButton="True"/>
                                <dx:GridViewDataTextColumn Caption="Bàn" FieldName="BanId" VisibleIndex="2" Visible="False">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Gọi" FieldName="SoOrder" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Món ăn" FieldName="MonAnId" VisibleIndex="4">
                                    <PropertiesComboBox DataSourceID="MonAnDb" TextField="TenMonAn" ValueField="MonAnId">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataTextColumn Caption="SL" FieldName="SoLuong" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Ghi chú" FieldName="GhiChu" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Phiếu" FieldName="PhieuId" VisibleIndex="1" Visible="False">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Bếp" FieldName="TenBep" VisibleIndex="8" Visible="False">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior AllowSort="False" />
                            <SettingsPager Mode="ShowAllRecords">
                            </SettingsPager>
                            <SettingsText CommandDelete="Xong" ConfirmDelete="Xong chưa?" EmptyDataRow="ĐÃ LÀM XONG" />
                            <Styles>
                                <AlternatingRow BackColor="#B3E7FF">
                                </AlternatingRow>
                            </Styles>
                        </dx:ASPxGridView>
                    </DetailRow>
                </Templates>
            </dx:ASPxGridView>
        </div>
        <div style="width: 30%; float: left; margin-left: 3%;">
            <dx:ASPxGridView ID="gvBan2" runat="server" AutoGenerateColumns="False"
                Font-Size="15pt" KeyFieldName="BanId">
                <ClientSideEvents RowClick="OnRowClick2" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="BanId" ReadOnly="True" VisibleIndex="1" Caption="BỘ PHẬN 2">
                    </dx:GridViewDataTextColumn>
                </Columns>
                <SettingsBehavior AllowSort="False" />
                <SettingsText EmptyDataRow="HOÀN TẤT" />
                <SettingsDetail ExportMode="Expanded" ShowDetailRow="True" AllowOnlyOneMasterRowExpanded="True" />
                <Styles>
                    <Header BackColor="#FFCC00">
                    </Header>
                </Styles>
                <Templates>
                    <DetailRow>
                        <dx:ASPxGridView ID="gvBep" runat="server" AutoGenerateColumns="False" DataSourceID="BepDb"
                            Font-Size="15pt" KeyFieldName="ID" OnBeforePerformDataSelect="gvBep_BeforePerformDataSelect"
                            Width="99%" OnHtmlRowCreated="gvBep_HtmlRowCreated">
                            <Columns>
                                <dx:GridViewCommandColumn VisibleIndex="0" ShowDeleteButton="True"/>
                                <dx:GridViewDataTextColumn Caption="Bàn" FieldName="BanId" VisibleIndex="2" Visible="False">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Gọi" FieldName="SoOrder" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Món ăn" FieldName="MonAnId" VisibleIndex="4">
                                    <PropertiesComboBox DataSourceID="MonAnDb" TextField="TenMonAn" ValueField="MonAnId">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataTextColumn Caption="SL" FieldName="SoLuong" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Ghi chú" FieldName="GhiChu" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Phiếu" FieldName="PhieuId" VisibleIndex="1" Visible="False">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Bếp" FieldName="TenBep" VisibleIndex="8" Visible="False">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior AllowSort="False" />
                            <SettingsPager Mode="ShowAllRecords">
                            </SettingsPager>
                            <SettingsText CommandDelete="Xong" ConfirmDelete="Xong chưa?" EmptyDataRow="ĐÃ LÀM XONG" />
                            <Styles>
                                <AlternatingRow BackColor="#FFCC99">
                                </AlternatingRow>
                            </Styles>
                        </dx:ASPxGridView>
                    </DetailRow>
                </Templates>
            </dx:ASPxGridView>
        </div>
        <div style="float: left; width: 30%; margin-left: 3%;">
            <dx:ASPxGridView ID="gvBan3" runat="server" AutoGenerateColumns="False"
                Font-Size="15pt" KeyFieldName="BanId">
                <ClientSideEvents RowClick="OnRowClick3" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="BanId" ReadOnly="True" VisibleIndex="1" Caption="BỘ PHẬN 3">
                    </dx:GridViewDataTextColumn>
                </Columns>
                <SettingsBehavior AllowSort="False" />
                <SettingsText EmptyDataRow="HOÀN TẤT" />
                <SettingsDetail ExportMode="Expanded" ShowDetailRow="True" AllowOnlyOneMasterRowExpanded="True" />
                <Styles>
                    <Header BackColor="#66FF66">
                    </Header>
                </Styles>
                <Templates>
                    <DetailRow>
                        <dx:ASPxGridView ID="gvBep" runat="server" AutoGenerateColumns="False" DataSourceID="BepDb"
                            Font-Size="15pt" KeyFieldName="ID" OnBeforePerformDataSelect="gvBep_BeforePerformDataSelect"
                            Width="99%" OnHtmlRowCreated="gvBep_HtmlRowCreated">
                            <Columns>
                                <dx:GridViewCommandColumn VisibleIndex="0" ShowDeleteButton="True"/>
                                <dx:GridViewDataTextColumn Caption="Bàn" FieldName="BanId" VisibleIndex="2" Visible="False">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Gọi" FieldName="SoOrder" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Món ăn" FieldName="MonAnId" VisibleIndex="4">
                                    <PropertiesComboBox DataSourceID="MonAnDb" TextField="TenMonAn" ValueField="MonAnId">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataTextColumn Caption="SL" FieldName="SoLuong" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Ghi chú" FieldName="GhiChu" VisibleIndex="6">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Phiếu" FieldName="PhieuId" VisibleIndex="1" Visible="False">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Bếp" FieldName="TenBep" VisibleIndex="8" Visible="False">
                                </dx:GridViewDataTextColumn>
                            </Columns>
                            <SettingsBehavior AllowSort="False" />
                            <SettingsPager Mode="ShowAllRecords">
                            </SettingsPager>
                            <SettingsText CommandDelete="Xong" ConfirmDelete="Xong chưa?" EmptyDataRow="ĐÃ LÀM XONG" />
                            <Styles>
                                <AlternatingRow BackColor="#CCFFCC">
                                </AlternatingRow>
                            </Styles>
                        </dx:ASPxGridView>
                    </DetailRow>
                </Templates>
            </dx:ASPxGridView>
        </div>
    </div>
    <asp:LinqDataSource ID="BepDb" runat="server" ContextTypeName="NhaHangSql.PhieuTinhTienDataContext"
        EnableDelete="True" EntityTypeName="" TableName="Beps" OrderBy="ID desc" 
        Where="BanId == @BanId &amp;&amp; TenBep == @TenBep" 
        StoreOriginalValuesInViewState="False">
        <WhereParameters>
            <asp:SessionParameter Name="BanId" SessionField="BanId" Type="String" />
            <asp:ControlParameter ControlID="cbBep" Name="TenBep" PropertyName="Value" 
                Type="String" />
        </WhereParameters>
    </asp:LinqDataSource>
    <asp:LinqDataSource ID="MonAnDb" runat="server" ContextTypeName="NhaHangSql.DanhMucDataContext"
        EntityTypeName="" Select="new (MonAnId, TenMonAn)" TableName="DMMonAn_dms" 
        StoreOriginalValuesInViewState="False">
    </asp:LinqDataSource>
    <asp:LinqDataSource ID="lqDMBep" runat="server" ContextTypeName="NhaHangSql.PhanBepDbDataContext"
        EntityTypeName="" TableName="DMBep_pbs" EnableDelete="True" 
        StoreOriginalValuesInViewState="False">
    </asp:LinqDataSource>
    <audio id="audiotag1" src="themmon.mp3"></audio>
    <script type="text/javascript">
        function play_single_sound() {
            //document.getElementById('audiotag1').load();
            document.getElementById('audiotag1').play();
        }
    </script>
</asp:Content>
