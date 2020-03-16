﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TableCss.aspx.cs" Inherits="sy2_TableCss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>利用table和自定义.css文件实现页面布局</title>
    <link href="../Styles/Table.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td rowspan="2">
                        <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Images/logo.gif" />
                    </td>
                    <td class="navigation">
                        <asp:LinkButton ID="lnkbtnDefault" runat="server" ForeColor="White">首页</asp:LinkButton>
                    </td>
                    <td class="navigation">
                        <asp:LinkButton ID="lnkbtnRegister" runat="server" ForeColor="White">注册</asp:LinkButton>
                    </td>
                    <td class="navigation">
                        <asp:LinkButton ID="lnkbtnLogin" runat="server" ForeColor="White">登录</asp:LinkButton>
                    </td>
                    <td class="navigation">
                        <asp:LinkButton ID="lnkbtnCart" runat="server" ForeColor="White">购物车</asp:LinkButton>
                    </td>
                    <td class="navigation">
                        <asp:LinkButton ID="lnkbtnSiteMap" runat="server" ForeColor="White">网站地图</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td colspan="5" class="status">登录状态</td>
                </tr>
                <tr>
                    <td colspan="6" class="position">您的位置：</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
