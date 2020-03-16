<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RdoListLinq.aspx.cs" Inherits="sy8_RdoListLinq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="rdoltCategory" runat="server" AutoPostBack="True" DataTextField="Name" DataValueField="CategoryId" RepeatDirection="Horizontal" OnSelectedIndexChanged="RdoltCategory_SelectedIndexChanged"></asp:RadioButtonList>
            <asp:ListBox ID="lstProduct" runat="server" DataTextField="Name" DataValueField="ProductId"></asp:ListBox>
        </div>
    </form>
</body>
</html>
