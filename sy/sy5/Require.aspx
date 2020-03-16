<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Require.aspx.cs" Inherits="sy5_Require" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        用户名：<asp:TextBox ID="txtName" runat="server">您的姓名</asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvName1" runat="server" ControlToValidate="txtName">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="rfvName2" runat="server" ControlToValidate="txtName" InitialValue="您的姓名">不能与初始值相同！</asp:RequiredFieldValidator>
    </form>
</body>
</html>
