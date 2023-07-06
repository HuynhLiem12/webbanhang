<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mh.aspx.cs" Inherits="NhaHang.MuaHang.Mh"
    EnableEventValidation="true" ViewStateMode="Disabled" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="msapplication-tap-highlight" content="no" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <title>MUA HANG</title>
    <link href="../Styles/Site.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function setCookie(cname, cvalue, exdays) {
            var d = new Date();
            d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
            var expires = "expires=" + d.toGMTString();
            document.cookie = cname + "=" + encodeURIComponent(cvalue) + "; " + expires;
        }

        function getCookie(cname) {
            var name = cname + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                if (c.indexOf(name) == 0) {
                    var kq = decodeURIComponent(c.substring(name.length, c.length));
                    return kq;
                }
            }
            return "";
        }
    </script>
    <style type="text/css">
        .protected
        {
            position: absolute;
            font-weight: bold;
            vertical-align: text-bottom;
            top: 0px;
            left: 0px;
            width: 100%;
            height: 350px;
            -moz-user-select: none;
            -webkit-user-select: none;
            -ms-user-select: none;
        }
        .lbStyle
        {
            vertical-align: middle;
            text-align: center;
            color: #3333FF;
            background-color: #FFFF00;
            padding-top: 10px;
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
            width: 13%;
            float: left;
            margin-left: 2px;
        }
        .commBn1
        {
            width: 16%;
            float: left;
            margin-left: 2px;
        }
        .FixedHeader
        {
            position: absolute;
            font-weight: bold;
            vertical-align: text-bottom;
            top: 0px;
            left: 0px;
            width: 100%;
            height: 350px;
        }
        .label
        {
            font-size: 14px;
            font-weight: bold;
            text-align: center;
            background-color: #FFFF00;
            padding-top: 10px;
            border-radius: 5px;
        }
        .label_Tien
        {
            font-size: 14px;
            font-weight: bold;
            text-align: center;
            background-color: #66FFFF;
            padding-top: 10px;
            border-radius: 5px;
        }
        .thembot_SoLuong
        {
            font-size: 18px;
            font-weight: bold;
            text-align: center;
            background-color: #FFFF00;
            width: 50px;
            height: 40px;
            padding-top: 10px;
        }
        
        .thembot_TenMon
        {
            font-size: 14px;
            font-weight: bold;
            text-align: center;
            background-color: #99CCFF;
            width: 95px;
            height: 40px;
            padding-top: 10px;
        }
        
        .thembot_Ghichu
        {
            font-size: 11px;
            font-weight: bold;
            text-align: center;
            background-color: #00CC99;
            width: 100px;
            height: 40px;
            padding-top: 10px;
        }
        
        #form1
        {
            top: 2px;
            left: 0px;
        }
        .btn
        {
            width: 99%;
            height: 35px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: 0.8em;
        }
        .goiBtn
        {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 13px;
            border: 1px solid #C0C0C0;
            border-radius: 5px;
            height: 29px;
            width: 95%;
        }
        .drList
        {
            height: 30px;
        }
    </style>
    <script language="javascript" type="text/javascript">
    </script>
    <script type="text/javascript" src="../Scripts/jquery-1.7.1.min.js"></script>
</head>
<body>
    <script type="text/javascript">
        function GetXem() {
            var kq = "";
            var stt = 1;
            for (var i = 0; i < clientGridView.pageRowCount; i++) {
                var sl = document.getElementById("gvMonAn_cell" + i + "_2_lbSoLuong").innerHTML;
                if (sl != "0") {
                    var m = stt + ') ' + clientGridView.keys[i].split('|')[1] + "->" + sl + "\n";
                    stt++;
                    kq += m;
                }
            }
            //alert(kq) 
            var t = (cbBanAn.GetText() == '' ? 'CHƯA CHỌN BÀN' : cbBanAn.GetText()) + "\n" + kq;
            return t;
        }    
    </script>
    <script type="text/javascript">
        var Minh = {
            search: function (text) {
                $("#<%=GridView1.ClientID%> tr:has(td)").hide(); // Hide all the rows.
                var iCounter = 0;
                if (text.length == 0 || text == '*') //if nothing is entered then show all the rows.
                {
                    $("#<%=GridView1.ClientID%> tr:has(td)").show();
                    return false;
                }
                //Iterate through all the td.
                $("#<%=GridView1.ClientID%> tr:has(td)").children().each(function () {
                    var cellText = $(this).text().toLowerCase().trim().substring(0, 1); //substring -> chi tim ky tu dau tien
                    if (cellText.indexOf(text.toLowerCase()) >= 0) //Check if data matches
                    {
                        $(this).parent().show();
                        iCounter++;
                        return true;
                    }
                });
                //e.preventDefault();
            },

            searchD: function (text) {
                $("#<%=GridView1.ClientID%> tr:has(td)").hide(); // Hide all the rows.

                var iCounter = 0;

                if (text.length == 0) //if nothing is entered then show all the rows.
                {
                    $("#<%=GridView1.ClientID%> tr:has(td)").show();
                    return false;
                }
                //Iterate through all the td.
                $("#<%=GridView1.ClientID%> tr:has(td)").children().each(function () {
                    var cellText = $(this).text().toLowerCase().trim().substring(0, 1); //substring -> chi tim ky tu dau tien
                    if (cellText.indexOf("d") >= 0 || cellText.indexOf("đ") >= 0) //Check if data matches
                    {
                        $(this).parent().show();
                        iCounter++;
                        return true;
                    }
                });
                //e.preventDefault();
            },

            soLuong: function () {
                $("#<%=GridView1.ClientID%> tr:has(td)").hide(); // Hide all the rows.

                var iCounter = 0;
                //Iterate through all the td.
                $("#<%=GridView1.ClientID%> tr:has(td)").children().next().next().each(function () {
                    var cellText = $(this).text().toLowerCase().trim().substring(0, 1); //substring -> chi tim ky tu dau tien
                    if (cellText != '0') //Check if data matches
                    {
                        $(this).parent().show();
                        iCounter++;
                        return true;
                    }
                });
                //e.preventDefault();
            },

            soLuong0: function () {
                var rowsCount = <%=GridView1.Rows.Count %>;
                for (var i = 0; i < rowsCount; i++) {
                    var CellID;
                    var LabelId;
                    var CellIDTien;
                    var LabelIdTien;
                    if (i < 8) {
                        CellID = 'GridView1_ctl0' + (i + 2) + '_ctl00';
                        LabelId = "GridView1_ctl0" + (i + 2) + "_Label2";
                        CellIDTien = 'GridView1_ctl0' + (i + 2) + '_ctl01';
                        LabelIdTien = "GridView1_ctl0" + (i + 2) + "_Label3";

                    } else {
                        CellID = 'GridView1_ctl' + (i + 2) + '_ctl00';
                        LabelId = "GridView1_ctl" + (i + 2) + "_Label2";
                        CellIDTien = 'GridView1_ctl' + (i + 2) + '_ctl01';
                        LabelIdTien = "GridView1_ctl" + (i + 3) + "_Label3";
                    }
                    document.getElementById(CellID).innerHTML = "<span class=\"label\" id=\"' + LabelId + '\" style=\"width: 100%; height: 40px; display: inline-block;\" onclick=\"setSL_Chon('" + CellID + "')\">" + "0" + "</span>";
                    document.getElementById(CellIDTien).innerHTML = "<span class=\"label_Tien\" id=\"' + LabelIdTien + '\" style=\"width: 100%; height: 40px; display: inline-block;\" onclick=\"setSL_000('" + CellIDTien + "')\">" + "0" + "</span>";
                    //<span class="label" id="GridView1_ctl03_Label2" style="width: 50px; height: 40px; display: inline-block;" onclick="setSL('GridView1_ctl03_ctl00')">0</span>
                }
            },

            goto: function (text) {
                var k = 0;
                for (var i = 0; i < clientGridView.pageRowCount; i++) {
                    var id = clientGridView.keys[i].indexOf("|");
                    var chudau = clientGridView.keys[i].substring(id + 1, id + 2);
                    var last = clientGridView.keys[i].lastIndexOf("|");
                    var sl = clientGridView.keys[i].substring(last + 1, last + 2);
                    if (text == chudau && sl == "0") {
                        clientGridView.MakeRowVisible(i);
                        clientGridView.SetFocusedRowIndex(i);
                        return;
                    }
                }
            },
            gotoDown: function () {
                var row = clientGridView.GetFocusedRowIndex();
                //alert(row);
                row = row + 5;
                if (row > clientGridView.pageRowCount - 1) {
                    row = clientGridView.pageRowCount - 1;
                }
                clientGridView.MakeRowVisible(row);
                clientGridView.SetFocusedRowIndex(row);
            },
            gotoUp: function () {
                var row = clientGridView.GetFocusedRowIndex();
                //alert(row);
                row = row - 5;
                if (row < 0) {
                    row = 0;
                }
                clientGridView.MakeRowVisible(row);
                clientGridView.SetFocusedRowIndex(row);
            },
            Xoa: function () {
                for (var i = 0; i < clientGridView.pageRowCount; i++) {
                    document.getElementById("gvMonAn_cell" + i + "_2_lbSoLuong").innerHTML = "0";
                }
                //clientHiddenField.Clear();
            },
            Xem: function (s, e) {
                var t = GetXem();
                //Confirm(t);
                e.processOnServer = confirm(t);
            },
            setLbSo: function (text) {
                lbSo.SetText(lbSo.GetText() + text)
            },
            setLbSoCongTru: function () {
                if (lbSo.GetText() != '') {
                    if (lbSo.GetText().indexOf('-') == -1) {
                        lbSo.SetText('-' + lbSo.GetText());
                    } else {
                        lbSo.SetText(lbSo.GetText().replace('-', ''));
                    }
                }
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
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="True"
        EnablePageMethods="True">
        <Scripts>
            <asp:ScriptReference Path="scriptsMH.js" />
        </Scripts>
    </asp:ScriptManager>
    <div align="center" class="protected">
        <div style="width: 100%; display: inline-block; margin-top: 9px;">
            <div class="commBn1" style="width: 40px">
                <dx:ASPxButton ID="btnShowAll" runat="server" Text="*" Theme="iOS" CausesValidation="False"
                    AutoPostBack="False" CssClass="commBn1" Width="95%">
                    <ClientSideEvents Click="function(s, e) {
Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
            </div>
            <div class="commBn1">
                <dx:ASPxButton ID="ASPxButton23" runat="server" Text="XEM" CausesValidation="False"
                    AutoPostBack="False" Theme="iOS" CssClass="commBn1" Width="95%">
                    <ClientSideEvents Click="function(s, e) {
	Minh.soLuong()
}" />
                </dx:ASPxButton>
            </div>
            <div class="commBn1">
                <dx:ASPxButton ID="btXoa" runat="server" Text="XÓA" Theme="iOS" CausesValidation="False"
                    AutoPostBack="False" CssClass="commBn1" Width="95%">
                    <ClientSideEvents Click="function(s, e) {
	Minh.soLuong0()
}" />
                </dx:ASPxButton>
            </div>
            <%-- 
            <div class="commBn">
                <dx:ASPxLabel ID="btPhepTinh" runat="server" ClientInstanceName="btPhepTinh" Theme="iOS"
                    Text="+" Font-Size="18pt" Width="30px" BackColor="#00CC99" CssClass="goiBtn">
                    <ClientSideEvents Click="function(s, e) {
	if(s.GetText()=='+')
		s.SetText('*');
	else if(s.GetText()=='*')
		s.SetText('-');
	else if(s.GetText()=='-')
		s.SetText('+');
}" />
                </dx:ASPxLabel>
            </div>
            --%>
            <div align="right" style="margin-right: 10px; float: left; width: 10%;">
                <dx:ASPxLabel ID="lbSo" runat="server" ClientInstanceName="lbSo" Theme="iOS">
                </dx:ASPxLabel>
            </div>
            <div style="float: right; margin-right: 6px; width: 18%;" class="btn">
                <input id="btn" onclick="button_clicked()" type="button" value="OK" class="goiBtn" />
            </div>
        </div>
        <%--
        <div style="width: 100%; display: inline-block; margin-top: 2px;">
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
        </div>
        <div class="clear">
        </div>
   
        <div style="width: 100%; display: inline-block; margin-top: 2px;">
            <div class="commBn">
                <dx:ASPxButton ID="bt7" runat="server" Text="7" AutoPostBack="False" Theme="iOS"
                    Width="95%">
                    <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                </dx:ASPxButton>
            </div>
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
                <dx:ASPxButton ID="ASPxButton25" runat="server" Text="0" AutoPostBack="False" Theme="iOS"
                    Width="95%">
                    <ClientSideEvents Click="function(s, e) {
	Minh.setLbSo(s.GetText());
}" />
                </dx:ASPxButton>
            </div>
            <div class="commBn">
                <dx:ASPxButton ID="bt0" runat="server" Text="-" AutoPostBack="False" Theme="iOS"
                    Width="95%">
                    <ClientSideEvents Click="function(s, e) {
	Minh.setLbSoCongTru();
}" />
                </dx:ASPxButton>
            </div>
            <div class="commBn">
                <dx:ASPxButton ID="ASPxButton27" runat="server" Text="C" AutoPostBack="False" Theme="iOS"
                    Width="95%">
                    <ClientSideEvents Click="function(s, e) {
	Minh.Clear()
}" />
                </dx:ASPxButton>
            </div>
        </div>
        --%>
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
        </div>
        <div class="clear">
        </div>
        <div style="width: 22%; float: left; margin-left: 2px;">
            <div style="float: left; width: 48%;">
                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="A" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton2" runat="server" Text="B" AutoPostBack="False" ClientInstanceName="nutB"
                    CausesValidation="False" Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton3" runat="server" Text="C" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton4" runat="server" Text="D" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.searchD(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton5" runat="server" Text="E" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton6" runat="server" Text="G" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton7" runat="server" Text="H" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton8" runat="server" Text="I" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton9" runat="server" Text="K" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton10" runat="server" Text="L" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton11" runat="server" Text="M" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
            </div>
            <div style="float: left; margin-left: 2px; width: 48%;">
                <dx:ASPxButton ID="ASPxButton12" runat="server" Text="N" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton13" runat="server" Text="O" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton14" runat="server" Text="P" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton15" runat="server" Text="Q" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton16" runat="server" Text="R" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton17" runat="server" Text="S" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton18" runat="server" Text="T" AutoPostBack="False" CausesValidation="False"
                    ClientInstanceName="nutT" Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton19" runat="server" Text="U" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton20" runat="server" Text="V" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton21" runat="server" Text="X" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
                <dx:ASPxButton ID="ASPxButton22" runat="server" Text="Y" AutoPostBack="False" CausesValidation="False"
                    Theme="iOS" CssClass="abcBn">
                    <ClientSideEvents Click="function(s, e) {
	Minh.search(s.GetText())
}" />
                </dx:ASPxButton>
            </div>
        </div>
        <div style="float: left; width: 76%; text-align: left;">
            <div style="position: absolute; width: 76%; height: 350px; top: 105px; overflow: auto;"
                id="divMon1">
                <asp:GridView ID="GridView1" runat="server" Width="99%" OnRowDataBound="GridView1_RowDataBound"
                    AutoGenerateColumns="False" ShowHeader="False" Font-Size="15pt">
                    <Columns>
                        <asp:TemplateField HeaderText="Mã">
                            <ItemTemplate>
                                <asp:Label ID="Label0" runat="server" Text='<%# Eval("Mã") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tên">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Tên") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Lượng">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Lượng") %>' CssClass="label"
                                    Height="40px" Width="100%"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tiền">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Tiền") %>' CssClass="label_Tien"
                                    Height="40px" Width="100%"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
