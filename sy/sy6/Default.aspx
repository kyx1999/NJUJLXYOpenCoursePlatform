<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="sy6_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:CheckBoxList ID="chklsPet" runat="server">
                <asp:ListItem>盲鱼</asp:ListItem>
                <asp:ListItem>波斯猫</asp:ListItem>
                <asp:ListItem>斑马</asp:ListItem>
                <asp:ListItem>千里马</asp:ListItem>
                <asp:ListItem>绵羊</asp:ListItem>
            </asp:CheckBoxList>
            <asp:Button ID="btnBuy" runat="server" OnClick="BtnBuy_Click" Text="放入购物车" />
            <asp:Button ID="btnView" runat="server" Text="查看购物车" OnClick="BtnView_Click" />
        </div>
    </form>
</body>
</html>
