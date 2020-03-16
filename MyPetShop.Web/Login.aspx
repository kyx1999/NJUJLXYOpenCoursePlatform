<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户登录</title>
    <link href="~/Styles/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="leftside">
            <table style="border-collapse: collapse;">
                <tr>
                    <td class="tdcenter" colspan="2">登录</td>
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
                    <td class="tdright">密码:</td>
                    <td>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ControlToValidate="txtPwd" Display="Dynamic" ForeColor="Red" ID="rfvPwd" runat="server" ErrorMessage="必填"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="tdright">
                        <asp:Button ID="btnLogin" runat="server" Text="立即登录" OnClick="BtnLogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="NewUser.aspx">我要注册！</a>
                    </td>
                    <td class="tdcenter">
                        <a href="GetPwd.aspx">忘记密码？</a>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="tdright">
                        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
