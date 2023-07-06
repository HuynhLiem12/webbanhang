<%@ Page Language="C#" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta property="og:title" content="Phần mềm quản lý Quán Cafe - Quán ăn - Nhà hàng - Bán hàng - Trường học">
    <link rel="icon" href="MacBrain.ico">
    <title>Phần mềm quản lý Quán Cafe, Quán ăn, Nhà hàng, Bán hàng, Trường học</title>
    <!--
    <link href="App_Themes/tmckg/StyleSheet.css" rel="stylesheet" type="text/css" />
    -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet" type="text/css" />
    <link href="table.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <asp:Login ID="Login1" runat="server" CssClass="table" UserName="">
            <LayoutTemplate>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="inputEmail3">
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="UserName" runat="server" CssClass="form-control" placeholder="Tên đăng nhập"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                            ControlToValidate="UserName" ErrorMessage="User Name is required." 
                            ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="inputPassword3">
                    </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="Password" runat="server" CssClass="form-control" placeholder="Mật khẩu"
                            TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                            ControlToValidate="Password" ErrorMessage="Password is required." 
                            ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <div class="checkbox">
                            <label>
                            <asp:CheckBox ID="RememberMe" runat="server" Text="Ghi nhớ Mật mã." />
                            <div style="color: Red">
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                            </div>
                            </label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button ID="LoginButton" runat="server" CommandName="Login" 
                            CssClass="btn btn-lg btn-primary btn-block" Text="Đăng Nhập" 
                            ValidationGroup="Login1" />
                        </button>
                    </div>
                </div>
            </LayoutTemplate>
        </asp:Login>
    </div>
    </form>
    <script src="js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
