<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ArrayDescending.aspx.cs" Inherits="sy3_ArrayDescending" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtInput" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="降序" />
        </div>
    </form>
</body>
</html>
