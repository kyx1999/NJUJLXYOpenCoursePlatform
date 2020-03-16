<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Choice.aspx.cs" Inherits="sy4_Choice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:PlaceHolder ID="plhChoice" runat="server"></asp:PlaceHolder>
            <asp:Button ID="btnSubmit" runat="server" Text="提交" OnClick="BtnSubmit_Click" />
            <asp:Label ID="lblDisplay" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
