<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Table.aspx.cs" Inherits="sy4_Table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="tblScore" runat="server" GridLines="Both">
                <asp:TableRow>
                    <asp:TableCell runat="server">学号</asp:TableCell>
                    <asp:TableCell runat="server">姓名</asp:TableCell>
                    <asp:TableCell runat="server">成绩</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
