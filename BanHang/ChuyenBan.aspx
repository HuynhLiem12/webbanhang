<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChuyenBan.aspx.cs" Inherits="NhaHang.BanHang.ChuyenBan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="msapplication-tap-highlight" content="no" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <title>MACBRAIN</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="display: inline-block; width: 100%;">
        <div style="float: left; width: 50%;">
            <dx:ASPxComboBox ID="cbBanChuyen" runat="server" Font-Overline="False" TextFormatString="{0}({1})"
                ValueField="Mã" Font-Bold="False" Theme="iOS" 
                Width="99%">
                <Columns>
                    <dx:ListBoxColumn FieldName="Tên" />
                    <dx:ListBoxColumn FieldName="Khach" Caption="Khách" Width="150px" />
                </Columns>
                <ValidationSettings ErrorDisplayMode="None">
                    <RequiredField IsRequired="True" />
                </ValidationSettings>
            </dx:ASPxComboBox>
        </div>
        <div style="float: right; width: 50%;">
            <dx:ASPxComboBox ID="cbBanNhan" runat="server" Font-Overline="False" TextFormatString="{0}({1})"
                ValueField="Mã" Font-Bold="False" Theme="iOS" 
                Width="99%">
                <Columns>
                    <dx:ListBoxColumn FieldName="Tên" />
                    <dx:ListBoxColumn FieldName="Khach" Caption="Khách" Width="150px" />
                </Columns>
                <ValidationSettings ErrorDisplayMode="None">
                    <RequiredField IsRequired="True" />
                </ValidationSettings>
            </dx:ASPxComboBox>
        </div>
    </div>
    <div align="center" style="margin-top: 30px">
        <div style="float: left">
            <dx:ASPxButton ID="btnQuayLai" runat="server" Text="Quay Lại" Theme="iOS">
            </dx:ASPxButton>
        </div>
        <div style="float: right">
            <dx:ASPxButton ID="btnChuyenBan" runat="server" Text="Chuyển Bàn" OnClick="btnChuyenBan_Click"
                AutoPostBack="False" Theme="iOS">
            </dx:ASPxButton>
        </div>
    </div>
    </form>
</body>
</html>
