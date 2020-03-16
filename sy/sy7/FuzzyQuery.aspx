<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FuzzyQuery.aspx.cs" Inherits="sy7_FuzzyQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            分类名：<asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="搜索" OnClick="BtnSearch_Click" />
            <asp:Button ID="btnReturn" runat="server" Text="返回" OnClick="BtnReturn_Click" />
            <asp:GridView ID="gvCategory" runat="server"></asp:GridView>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
