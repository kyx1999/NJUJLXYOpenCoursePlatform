<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListBox.aspx.cs" Inherits="sy4_ListBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="lstLeft" runat="server" SelectionMode="Multiple">
                <asp:ListItem Value="hunan">湖南</asp:ListItem>
                <asp:ListItem Value="jiangxi">江西</asp:ListItem>
                <asp:ListItem Value="beijing">北京</asp:ListItem>
                <asp:ListItem Value="shanghai">上海</asp:ListItem>
            </asp:ListBox>
            <asp:Button ID="btnMove" runat="server" Text="&gt;" OnClick="BtnMove_Click" />
            <asp:ListBox ID="lstRight" runat="server" SelectionMode="Multiple"></asp:ListBox>
        </div>
    </form>
</body>
</html>
