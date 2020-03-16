<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户登录状态和权限</title>
    <link href="~/Styles/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <div class="status">
                <asp:Label ID="lblWelcome" runat="server" Text="您还未登录！"></asp:Label>
                <asp:LinkButton ID="lnkbtnPwd" runat="server" ForeColor="White" Visible="false" PostBackUrl="~/ChangePwd.aspx">密码修改</asp:LinkButton>
                <asp:LinkButton ID="lnkbtnManage" runat="server" ForeColor="White" Visible="false" PostBackUrl="~/Admin/Default.aspx">系统管理</asp:LinkButton>
                <asp:LinkButton ID="lnkbtnCart" runat="server" ForeColor="White" Visible="false" PostBackUrl="~/OrderList.aspx">购物记录</asp:LinkButton>
                <asp:LinkButton ID="lnkbtnLogout" runat="server" ForeColor="White" Visible="false" OnClick="LnkbtnLogout_Click">退出登录</asp:LinkButton>
            </div>
        </header>
    </form>
</body>
</html>
