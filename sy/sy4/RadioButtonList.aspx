<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RadioButtonList.aspx.cs" Inherits="sy4_RadioButtonList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblDisplay" runat="server"></asp:Label>
            <asp:RadioButtonList ID="rdoltCountry" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" OnSelectedIndexChanged="RdoltCountry_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>中国</asp:ListItem>
                <asp:ListItem>美国</asp:ListItem>
                <asp:ListItem>俄罗斯</asp:ListItem>
                <asp:ListItem>法国</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </form>
</body>
</html>
