<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Label.aspx.cs" Inherits="sy4_Label" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblName" runat="server" AccessKey="N" AssociatedControlID="txtName" Text="用户名（N）："></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
            <asp:Label ID="lblPassword" runat="server" AccessKey="M" AssociatedControlID="txtPassword" Text="密码（M）："></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
