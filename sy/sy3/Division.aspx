<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Division.aspx.cs" Inherits="sy3_Division" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtDivsor" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="txtDividend" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="提交" />
        </div>
    </form>
</body>
</html>
