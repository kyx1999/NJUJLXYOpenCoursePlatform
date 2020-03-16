<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GetPwd.aspx.cs" Inherits="GetPwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>重置用户密码</title>
    <link href="~/Styles/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="leftside">
            <table style="border-collapse: collapse;">
                <tr>
                    <td class="tdcenter" colspan="2">找回密码</td>
                </tr>
                <tr>
                    <td class="tdright">用户名:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="txtName" Display="Dynamic" ForeColor="Red" ID="rfvName" runat="server" ErrorMessage="必填"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tdright">邮箱:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" ID="rfvEmail" runat="server" ErrorMessage="必填"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tdright" colspan="2">
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="邮箱格式不正确！" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="tdright" colspan="2">
                        <asp:Button ID="btnResetPwd" runat="server" Text="找回密码" OnClick="BtnResetPwd_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">找回密码，需要验证邮箱！</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
