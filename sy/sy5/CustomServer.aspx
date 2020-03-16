<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomServer.aspx.cs" Inherits="sy5_CustomServer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            数值：<asp:TextBox ID="txtInput" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="cvInput" runat="server" ControlToValidate="txtInput" OnServerValidate="CvInput_ServerValidate">不是一个偶数！</asp:CustomValidator><br />
            <asp:Button ID="btnSubmit" runat="server" Text="确定" OnClick="BtnSubmit_Click" />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
