<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewCart.aspx.cs" Inherits="sy6_ViewCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            <asp:CheckBoxList ID="chklsPet" runat="server"></asp:CheckBoxList>
            <asp:Button ID="btnClear" runat="server" OnClick="BtnClear_Click" Text="清空购物车" />
            <asp:Button ID="btnContinue" runat="server" OnClick="BtnContinue_Click" Text="继续购物" />
        </div>
    </form>
</body>
</html>
