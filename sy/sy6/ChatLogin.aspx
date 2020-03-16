<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChatLogin.aspx.cs" Inherits="sy6_ChatLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td style="text-align: right"></td>
                    <td>我的聊天室</td>
                </tr>
                <tr>
                    <td style="text-align: right">用户名：</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtName">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">密码：</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtPassword">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right"></td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="BtnLogin_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
