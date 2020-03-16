<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TableLayout.aspx.cs" Inherits="sy2_TableLayout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>table 布局</title>
    <style>
        a {
            text-decoration: none;
        }
    </style>
</head>
<body style="background-color: #616378; font-size: 12px; margin: 0px; text-align: center">
    <form id="form1" runat="server">
        <div>
            <table style="background-color: #fff; height: 86px; margin: 0 auto; padding: 4px 2px 2px 10px; text-align: left; width: 778px">
                <tr>
                    <td rowspan="2">
                        <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Images/logo.gif" />
                    </td>
                    <td style="background-color: #8c8ea3; text-align: center; width: 96.4px">
                        <asp:LinkButton ID="lnkbtnDefault" runat="server" ForeColor="White">首页</asp:LinkButton>
                    </td>
                    <td style="background-color: #8c8ea3; text-align: center; width: 96.4px">
                        <asp:LinkButton ID="lnkbtnRegister" runat="server" ForeColor="White">注册</asp:LinkButton>
                    </td>
                    <td style="background-color: #8c8ea3; text-align: center; width: 96.4px">
                        <asp:LinkButton ID="lnkbtnLogin" runat="server" ForeColor="White">登录</asp:LinkButton>
                    </td>
                    <td style="background-color: #8c8ea3; text-align: center; width: 96.4px">
                        <asp:LinkButton ID="lnkbtnCart" runat="server" ForeColor="White">购物车</asp:LinkButton>
                    </td>
                    <td style="background-color: #8c8ea3; text-align: center; width: 96.4px">
                        <asp:LinkButton ID="lnkbtnSiteMap" runat="server" ForeColor="White">网站地图</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" style="background-color: #666688; color: #fff">登录状态</td>
                </tr>
                <tr>
                    <td colspan="6" style="background-color: #ccccd4; margin: 0 auto; padding-left: 6px; text-align: left; width: 778px">您的位置：</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
