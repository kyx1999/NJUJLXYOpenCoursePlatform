<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlaceHolder.aspx.cs" Inherits="sy4_PlaceHolder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:PlaceHolder ID="plhTest" runat="server"></asp:PlaceHolder>
            <br />
            <asp:Button ID="btnAcquire" runat="server" Text="获取" OnClick="BtnAcquire_Click" />
        </div>
    </form>
</body>
</html>
