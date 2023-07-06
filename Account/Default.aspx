<%@ Page Title="TAI KHOAN" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="NhaHang.Account.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>
        VAI TRÒ VÀ NGƯỜI DÙNG</h3>
    <asp:Label ID="Msg" runat="server" ForeColor="maroon"></asp:Label><br />
    <table id="TABLE1" border="0" cellpadding="3" style="color: #000000">
        <tr>
            <td style="width: 217px" valign="top">
                <div>
                    Vai trò
                </div>
                <asp:ListBox ID="RolesListBox" runat="server" AutoPostBack="true" Rows="8"></asp:ListBox>
                &nbsp;
            </td>
            <td valign="top">
                <div>
                    Người dùng:
                </div>
                <asp:ListBox ID="UsersListBox" runat="server" DataTextField="UserName" Rows="8" SelectionMode="multiple">
                </asp:ListBox>
            </td>
            <td valign="top" visible="false">
                <table>
                    <tr>
                        <td style="width: 300px">
                            <asp:Button ID="btnAddUsersToRole" runat="server" Height="24px" OnClick="AddUsers_OnClick"
                                Text="Thêm người vào vai trò" Width="150px" />
                            <asp:Button ID="btnCreateRole" runat="server" Height="24px" OnClick="CreateRole_OnClick"
                                Text="Tạo vai trò mới" Width="127px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 300px">
                            <asp:Button ID="Button1" runat="server" Height="24px" OnClick="Button1_Click" Text="Xóa vai trò"
                                Width="150px" />
                            <asp:Button ID="btnDeleteUser" runat="server" Height="24px" OnClick="btnDeleteUser_Click"
                                Text="Xóa người dùng" Width="127px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 262px; height: 64px">
                            <asp:Panel ID="pnlCreateRole" runat="server" BackColor="#E0E0E0" Height="268px" Visible="False"
                                Width="321px" ScrollBars="Auto">
                                <div style="float: left">
                                    <asp:Label ID="Label2" runat="server" Height="19px" Text="Vai trò mới:" Width="72px"></asp:Label>
                                    <div style="float: right">
                                        <asp:Button ID="btnAddRole" runat="server" Height="24px" OnClick="btnAddRole_Click"
                                            Text="Thêm mới" Width="64px" />
                                    </div>
                                    <asp:TextBox ID="txtNewRole" runat="server"></asp:TextBox>
                                </div>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <div style="float: left">
        <div>
            Người dùng trong vai trò
        </div>
        <div>
            <asp:GridView ID="UsersInRoleGrid" runat="server" AutoGenerateColumns="false" CellPadding="4"
                CellSpacing="0" GridLines="None" OnRowCommand="UsersInRoleGrid_RemoveFromRole">
                <HeaderStyle BackColor="navy" ForeColor="white" />
                <Columns>
                    <asp:TemplateField HeaderText="User Name">
                        <ItemTemplate>
                            <%# Container.DataItem.ToString() %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField ButtonType="link" Text="Xóa" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <div style="float: right">
        <div>
            Tạo người dùng mới</div>
        <div>
            UserName:
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        </div>
        <div>
            Password:
            <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btn" runat="server" Text="OK" OnClick="btn_Click" />
        </div>
        <!--
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Height="251px" CompleteSuccessText="Người dùng đã được tạo thành công"
            ConfirmPasswordCompareErrorMessage="Mật mã và xác nhận Mật mã phải giống nhau"
            ConfirmPasswordLabelText="Xác nhận lại Mật mã:" ConfirmPasswordRequiredErrorMessage="Đánh Mật mã."
            ContinueButtonText="Tiếp tục" ContinueButtonType="Image" CreateUserButtonText="Tạo người dùng"
            CreateUserButtonType="Link" DuplicateUserNameErrorMessage="Làm ơn đưa tên người dung khác."
            EmailRegularExpressionErrorMessage="Làm ơn chọn e-mail khác." EmailRequiredErrorMessage="Phải có E-mail."
            FinishCompleteButtonText="Hoàn thành" PasswordLabelText="Mật mã:" PasswordRegularExpressionErrorMessage="Chọ Mậ mã khác."
            PasswordRequiredErrorMessage="Phải có Mật mã." UserNameLabelText="Người dùng:">
            <WizardSteps>
                <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" Title="Tạo người dùng mới">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                </asp:CompleteWizardStep>
            </WizardSteps>
        </asp:CreateUserWizard>
        -->
    </div>
</asp:Content>
