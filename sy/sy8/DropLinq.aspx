<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropLinq.aspx.cs" Inherits="sy8_DropLinq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlCategory" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataTextField="Name" DataValueField="CategoryId" OnSelectedIndexChanged="DdlCategory_SelectedIndexChanged">
                <asp:ListItem>-请选择-</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
