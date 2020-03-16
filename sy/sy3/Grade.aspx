<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Grade.aspx.cs" Inherits="sy3_Grade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtInput" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="等级" />
            <asp:Label ID="lblDisplay" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
