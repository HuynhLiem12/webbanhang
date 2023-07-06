<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NhaHang.CB.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="msapplication-tap-highlight" content="no" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <title>Cong ty MacBrain</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
    
        <dx:ASPxTextBox ID="txtCauHinh" runat="server" Font-Bold="False" Theme="iOS" 
            Width="100%" Font-Size="7pt">
        </dx:ASPxTextBox>
        <br />
        <dx:ASPxButton ID="btOK" runat="server" onclick="btOK_Click" Text="OK" 
            Theme="iOS">
        </dx:ASPxButton>
    
    </div>
    </form>
</body>
</html>
