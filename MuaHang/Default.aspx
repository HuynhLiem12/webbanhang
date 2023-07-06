<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NhaHang.MuaHang.Default"
    ViewStateMode="Disabled" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <%-- <meta name="viewport" content="initial-scale=1" /> --%>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="msapplication-tap-highlight" content="no" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <title>MACBRAIN</title>
    <script type="text/javascript">
        function ProcessValueChanged(key, SoLuong, Tien) {
            var currentKey = "key" + key.toString();
            if (!clientHiddenField.Contains(currentKey)) {
                clientHiddenField.Add(currentKey, SoLuong + ";" + Tien);
            }
            else {
                clientHiddenField.Set(currentKey, SoLuong + ";" + Tien);
            }
        }
    </script>
    <script type="text/javascript">
        function grid_RowDblClick(s, e) {
            //s.StartEditRow(e.visibleIndex);
        }
        function grid_RowClick(s, e) {
            //s.StartEditRow(e.visibleIndex);
        }
        function grid_FocusedRowChanged(s, e) {
            //if (s.cpIsEditing)
            //s.UpdateEdit();
        }
        /*
        function editor_KeyDown(s, e) {
        switch (e.htmlEvent.keyCode) {
        case 13:
        grid.UpdateEdit();
        break;
        case 27:
        grid.CancelEdit();
        break;
        }
        }
        */
        function grid_EndCallback(s, e) {
            //    var edit = s.GetEditor(1);
            //    if (edit) {
            //        edit.SelectAll();
            //        edit.SetFocus();
            //    }
        }
    </script>
    <link href="../Styles/Site.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .protected
        {
            -moz-user-select: none;
            -webkit-user-select: none;
            -ms-user-select: none;
        }
        .newStyleRow
        {
            /*height: 150px;*/
        }
        .abcBn
        {
            width: 100%;
            margin: 2px;
        }
        .abcBn .dxbButton
        {
            /*    
            font-size: 45px !important;
            font-weight: bold;
            */
        }
        
        .dxbButton_iOS div.dxb
        {
            padding: 0px 10px !important;
        }
        
        .commBn
        {
            width: 10%;
            float: left;
            margin-top: 2px;
            margin-bottom: 4px;
            margin-left: 2px;
        }
    </style>
</head>
<body>
    <script type="text/javascript">
    // <![CDATA[
        var CustomPager = {
            gotoBox_Init: function (s, e) {
                s.SetText(1 + clientGridView.GetPageIndex());
            },
            gotoBox_KeyPress: function (s, e) {
                if (e.htmlEvent.keyCode != 13)
                    return;
                ASPxClientUtils.PreventEventAndBubble(e.htmlEvent);
                CustomPager.applyGotoBoxValue(s);
            },
            gotoBox_ValueChanged: function (s, e) {
                CustomPager.applyGotoBoxValue(s);
            },
            applyGotoBoxValue: function (textBox) {
                if (clientGridView.InCallback())
                    return;
                var pageIndex = parseInt(textBox.GetText()) - 1;
                if (pageIndex < 0)
                    pageIndex = 0;
                clientGridView.GotoPage(pageIndex);
            }
        };
    // ]]>
    </script>
    <script type="text/javascript">
        var Minh = {
            goto: function (text) {
                var k = 0;
                for (var i = 0; i < clientGridView.pageRowCount; i++) {
                    var id = clientGridView.keys[i].indexOf("|");
                    var chudau = clientGridView.keys[i].substring(id + 1, id + 2);
                    var last = clientGridView.keys[i].lastIndexOf("|");
                    var sl = clientGridView.keys[i].substring(last + 1, last + 2);
                    if (text == chudau && sl == "0") {
                        clientGridView.MakeRowVisible(i);
                        return;
                    }
                }
            },
            setLbSo: function (text) {
                lbSo.SetText(lbSo.GetText() + text)
            },
            xoaCuoi: function () {
                lbSo.SetText(lbSo.GetText().slice(0, -1));
            },
            Clear: function () {
                lbSo.SetText();
            }
        }
    </script>
    <form id="form1" runat="server">
    <div align="center" class="protected">
        <div style="width: 100%; display: inline-block; margin-top: 3px;">
            <div style="float: left">
            </div>
            <div style="float: left; margin-top: 4px; margin-bottom: 4px; margin-left: 2px;">
                <dx:ASPxButton ID="btXem" runat="server" OnClick="btXem_Click" Text="XEM" CausesValidation="False"
                    Theme="iOS">
                </dx:ASPxButton>
            </div>
            <div style="float: left; margin-top: 4px; margin-bottom: 4px; margin-left: 10px;">
                <dx:ASPxButton ID="btXoa" runat="server" Text="XÓA" CausesValidation="False" OnClick="btXoa_Click"
                    Theme="iOS">
                </dx:ASPxButton>
            </div>
            <div align="right" style="margin-right: 10px">
                <dx:ASPxLabel ID="lbSo" runat="server" ClientInstanceName="lbSo" Theme="iOS">
                </dx:ASPxLabel>
            </div>
            <div class="clear">
            </div>
            <div style="width: 99%">
                <div class="commBn">
                    <dx:ASPxButton ID="bt1" runat="server" Text="1" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="bt2" runat="server" Text="2" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="bt3" runat="server" Text="3" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="bt4" runat="server" Text="4" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="bt5" runat="server" Text="5" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="bt6" runat="server" Text="6" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="bt7" runat="server" Text="7" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
            </div>
            <div class="clear">
            </div>
            <div style="width: 99%">
                <div class="commBn">
                    <dx:ASPxButton ID="bt8" runat="server" Text="8" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="bt9" runat="server" Text="9" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="btCham" runat="server" Text="." AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="btKhong" runat="server" Text="0" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="btTru" runat="server" Text="-" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="btXoaLeft" runat="server" Text="<" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.xoaCuoi()
}" />
                    </dx:ASPxButton>
                </div>
                <div class="commBn">
                    <dx:ASPxButton ID="btXoaHet" runat="server" Text="C" AutoPostBack="False" Theme="iOS"
                        Width="95%">
                        <ClientSideEvents Click="function(s, e) {
	Minh.Clear()
}" />
                    </dx:ASPxButton>
                </div>
                <div style="float: right; margin-top: 2px; margin-bottom: 4px; margin-right: 2px;
                    width: 15%;">
                    <dx:ASPxButton ID="btChuyenPhieu" runat="server" Text="OK" OnClick="btChuyenPhieu_Click"
                        Theme="iOS" Width="95%">
                    </dx:ASPxButton>
                </div>
            </div>
        </div>
        <div style="width: 25%; float: left; margin-left: 2px;">
            <div style="float: left; width: 48%;">
                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="A" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton2" runat="server" Text="B" AutoPostBack="False" ClientInstanceName="nutB"
                    CausesValidation="False" Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton3" runat="server" Text="C" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton4" runat="server" Text="D" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton5" runat="server" Text="E" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton6" runat="server" Text="G" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton7" runat="server" Text="H" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton8" runat="server" Text="I" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton9" runat="server" Text="K" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton10" runat="server" Text="L" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton11" runat="server" Text="M" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
            </div>
            <div style="float: left; margin-left: 2px; width: 48%;">
                <dx:ASPxButton ID="ASPxButton12" runat="server" Text="N" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton13" runat="server" Text="O" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton14" runat="server" Text="P" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton15" runat="server" Text="Q" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton16" runat="server" Text="R" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton17" runat="server" Text="S" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton18" runat="server" Text="T" AutoPostBack="False" CausesValidation="False"
                    ClientInstanceName="nutT" Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton19" runat="server" Text="U" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton20" runat="server" Text="V" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton21" runat="server" Text="X" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton22" runat="server" Text="Y" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.goto(s.GetText())
}" />
                </dx:ASPxButton>
            </div>
        </div>
        <div style="float: left; width: 74%">
            <dx:ASPxGridView ID="gvMonAn" runat="server" AutoGenerateColumns="False" KeyFieldName="Mã;Tên;Lượng"
                ClientInstanceName="clientGridView" Width="98%" OnCustomJSProperties="gvMonAn_CustomJSProperties"
                Theme="iOS">
                <ClientSideEvents FocusedRowChanged="grid_FocusedRowChanged" EndCallback="grid_EndCallback"
                    RowClick="grid_RowClick" />
                <Columns>
                    <dx:GridViewDataTextColumn Caption="Mã" FieldName="Mã" VisibleIndex="0" Visible="False"
                        ReadOnly="True" ShowInCustomizationForm="True">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Tên" Name="Tên" Width="46%" Caption="Tên" VisibleIndex="1"
                        ReadOnly="True" ShowInCustomizationForm="True">
                        <EditFormSettings Visible="False" />
                        <EditCellStyle>
                        </EditCellStyle>
                        <EditItemTemplate>
                            <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text='<%# Eval("Tên") %>' Theme="iOS">
                            </dx:ASPxLabel>
                        </EditItemTemplate>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Lượng" FieldName="Lượng" VisibleIndex="3" Width="24%"
                        ShowInCustomizationForm="True">
                        <DataItemTemplate>
                            <dx:ASPxLabel ID="lbSoLuong" runat="server" OnDataBound="lbSoLuong_DataBound" Text='<%# Bind("Lượng") %>'
                                Theme="iOS">
                            </dx:ASPxLabel>
                        </DataItemTemplate>
                        <CellStyle HorizontalAlign="Right" VerticalAlign="Middle">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Tiền" FieldName="Tiền" VisibleIndex="4" Width="30%"
                        Name="Lượng">
                        <EditCellStyle>
                            <Paddings />
                        </EditCellStyle>
                        <DataItemTemplate>
                            <dx:ASPxLabel ID="lbTien" runat="server" OnDataBound="lbTien_DataBound" Text='<%# Bind("Tiền") %>'
                                Theme="iOS">
                            </dx:ASPxLabel>
                        </DataItemTemplate>
                        <CellStyle HorizontalAlign="Right" VerticalAlign="Middle">
                            <Paddings PaddingLeft="10px" />
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                </Columns>
                <SettingsBehavior AllowFocusedRow="True" />
                <SettingsPager PageSize="500" Position="TopAndBottom" Visible="False">
                </SettingsPager>
                <SettingsEditing Mode="Inline" />
                <Settings HorizontalScrollBarMode="Auto" ShowGroupButtons="False" ShowHeaderFilterBlankItems="False"
                    ShowStatusBar="Hidden" ShowColumnHeaders="False" VerticalScrollableHeight="345"
                    VerticalScrollBarMode="Visible" />
                <SettingsText CommandEdit="O" CommandCancel="K" CommandUpdate="C" />
            </dx:ASPxGridView>
        </div>
        <dx:ASPxHiddenField ID="hiddenField" runat="server" ClientInstanceName="clientHiddenField">
        </dx:ASPxHiddenField>
    </div>
    </form>
</body>
</html>
