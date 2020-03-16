<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LinqXml.aspx.cs" Inherits="sy7_LinqXml" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            分类名：<asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
            <asp:Button ID="btnQueryAll" runat="server" Text="显示全部" OnClick="BtnQueryAll_Click" />
            <asp:Button ID="btnQuery" runat="server" Text="查询" OnClick="BtnQuery_Click" />
            <asp:Button ID="btnInsert" runat="server" Text="插入" OnClick="BtnInsert_Click" /><br />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
